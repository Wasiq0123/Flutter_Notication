import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_notifications/bloc/switch/switch_bloc.dart';
import 'package:push_notifications/bloc/switch/switch_event.dart';
import 'package:push_notifications/bloc/switch/switch_state.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<SwitchBloc, SwitchState>(
            builder: (context, state) => Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notifications'),
                  Switch(
                      value: state.isenable,
                      onChanged: (value) {
                        print('Tap tap$value');
                        context.read<SwitchBloc>().add(Siwtchenableordiable());
                      }),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            decoration: BoxDecoration(color: Colors.amber),
          ),
          SizedBox(
            height: 20,
          ),
          Slider(value: .1, onChanged: (value) {})
        ],
      ),
    );
  }
}
