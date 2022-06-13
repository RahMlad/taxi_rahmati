// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart' hide Title;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taxi_rahmati/features/manage_work/presentation/bloc/manage_work_bloc.dart';
import '../../domain/entities/ride.dart';
import '../../domain/entities/work_unit.dart';
import '../widgets/currency_form_field.dart';
import '../../../../core/presentation/widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/date_time_form_field.dart';
import '../widgets/radio_button.dart';

class RideFormPage extends StatefulWidget {
  final WorkUnit? workUnit;
  final Ride? ride;
  const RideFormPage({
    Key? key,
    required this.workUnit,
    this.ride,
  }) : super(key: key);

  @override
  State<RideFormPage> createState() => _RideFormPageState();
}

class _RideFormPageState extends State<RideFormPage> {
  final _formKey = GlobalKey<FormState>();
  late Title _title = widget.ride == null ? Title.herr : widget.ride!.title;
  late String _name = widget.ride == null ? '' : widget.ride!.name;
  late String _fromDestination =
      widget.ride == null ? '' : widget.ride!.fromDestination;
  late String _toDestination =
      widget.ride == null ? '' : widget.ride!.toDestination;
  late String _price = widget.ride == null
      ? '0.0'
      : widget.ride!.price.toString().replaceAll('.', ',');
  late DateTime? _startDate =
      widget.ride == null ? DateTime.now() : widget.ride!.start;
  late DateTime? _startTime =
      widget.ride == null ? DateTime.now() : widget.ride!.start;
  late DateTime? _endDate =
      widget.ride == null ? DateTime.now() : widget.ride!.end;
  late DateTime? _endTime =
      widget.ride == null ? DateTime.now() : widget.ride!.end;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.ride == null ? 'Fahrt hinzufügen' : 'Fahrt ändern',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    return BlocListener<ManageWorkBloc, ManageWorkState>(
      listener: (context, state) {
        if (state is RideAdded) {
          Navigator.pop(context);
        } else if (state is RideUpdated) {
          Navigator.pop(context, state.workUnit);
        } else if (state is Error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  // const SizedBox(
                  //   height: 8,
                  // ),
                  // CurrencyFormField(
                  //   label: 'Preis (€)',
                  //   onChanged: (value) => _price = value,
                  //   initialValue: _price,
                  // ),

                  DateTimeFormField(
                    label: 'Start',
                    onChangedDate: (value) => _startDate = value,
                    onChangedTime: (value) => _startTime = value,
                    initialValueDate: _startDate,
                    initialValueTime: _startTime,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  // DateTimeFormField(
                  //   label: 'Ende',
                  //   onChangedDate: (value) => _endDate = value,
                  //   onChangedTime: (value) => _endTime = value,
                  //   initialValueDate: _endDate,
                  //   initialValueTime: _endTime,
                  // ),
                  // const SizedBox(
                  //   height: 16,
                  // ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          label: 'Von',
                          onChanged: (value) => _fromDestination = value,
                          initialValue: _fromDestination,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          label: 'Nach',
                          onChanged: (value) => _toDestination = value,
                          initialValue: _toDestination,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextFormField(
                    label: 'Name',
                    onChanged: (value) => _name = value,
                    initialValue: _name,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioButton<Title>(
                          label: 'Herr',
                          value: Title.herr,
                          groupValue: _title,
                          onChanged: (value) => setState(
                            () {
                              _title = value!;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: RadioButton<Title>(
                          label: 'Frau',
                          value: Title.frau,
                          groupValue: _title,
                          onChanged: (value) => setState(
                            () {
                              _title = value!;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  BlocBuilder<ManageWorkBloc, ManageWorkState>(
                    builder: (context, state) {
                      if (state is Loading) {
                        return const CustomElevatedButton(
                          onPressed: null,
                          label: 'Erstellen',
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return CustomElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _dispatchEvent();
                            }
                          },
                          label: widget.ride == null ? 'Erstellen' : 'Ändern',
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _dispatchEvent() {
    if (widget.ride == null) {
      context.read<ManageWorkBloc>().add(
            AddRideInWorkUnit(
              workUnit: widget.workUnit,
              title: _title,
              name: _name,
              fromDestination: _fromDestination,
              toDestination: _toDestination,
              startDate: _startDate!,
              startTime: _startTime!,
              endDate: _endDate!,
              endTime: _endTime!,
              price: _price,
            ),
          );
    } else {
      context.read<ManageWorkBloc>().add(UpdateRideInRepository(
            workUnit: widget.workUnit!,
            oldRide: widget.ride!,
            id: widget.ride!.id,
            title: _title,
            name: _name,
            fromDestination: _fromDestination,
            toDestination: _toDestination,
            startDate: _startDate!,
            startTime: _startTime!,
            endDate: _endDate!,
            endTime: _endTime!,
            price: _price,
          ));
    }
  }
}
