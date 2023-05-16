import 'package:flutter_ftms/flutter_ftms.dart';
import 'package:flutter_ftms/src/ftms/characteristic/status/ftms_machine_status.dart';
import 'package:flutter_ftms/src/ftms/characteristic/status/ftms_machine_status_opcode.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  List<int> data = [8, 230, 3];

  test("machine status target power", () {
    var status = FTMSMachineStatus(data);

    expect(status.opCode.type, FTMSMachineStatusOpcodeType.targetPowerChanged);
    expect(status.opCode.value, 0x8);

    expect(status.parameter, isNotNull);
    expect(status.parameter!.value, 998);
  });
}
