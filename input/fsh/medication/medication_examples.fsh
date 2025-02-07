Instance: MedicationExampleKabivenPerifer
InstanceOf: SEBaseMedication
Title: "Medication example: Kabiven Perifer infusionsvätska, emulsion."
Description: "This is the base Medication profile to be used when profiling on Medication in a Swedish context"
* code
  * coding[0] = $NPLID#19991229000163 "Kabiven Perifer infusionsvätska, emulsion."

Instance: MedicationExampleKabivenPeriferPackage
InstanceOf: SEBaseMedicationPackage
Title: "Medication example: Kabiven Perifer infusionsvätska, emulsion. Trekammarpåse, 3 x 2400 ml (Biofine)"
Description: "This is the base Medication profile to be used when profiling on Medication package in a Swedish context"

* code
  * coding[0] = $NPLPACKID#20060824100052 "Kabiven Perifer infusionsvätska, emulsion. Trekammarpåse, 3 x 2400 ml (Biofine)"
  * coding[+] = $VARUNR#052533 "Kabiven Perifer infusionsvätska, emulsion. Trekammarpåse, 3 x 2400 ml (Biofine)"

* ingredient[0].itemReference = Reference(MedicationExampleKabivenPerifer)
