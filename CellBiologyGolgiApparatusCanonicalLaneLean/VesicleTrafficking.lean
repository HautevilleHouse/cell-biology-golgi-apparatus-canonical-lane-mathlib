import HautevilleHouse.CellBiologyGolgiApparatusCanonicalLaneLean.GolgiMembraneArchitecture

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure VesicleTraffickingPackage where
  copiBudding : Prop
  copiiBudding : Prop
  clathrinMediated : Prop
  fusionMechanism : Prop

structure VesicleTraffickingEvidence (V : VesicleTraffickingPackage) where
  copiBuddingClosed : V.copiBudding
  copiiBuddingClosed : V.copiiBudding
  clathrinMediatedClosed : V.clathrinMediated
  fusionMechanismClosed : V.fusionMechanism

def VesicleTraffickingClosed (V : VesicleTraffickingPackage) : Prop :=
  V.copiBudding ∧ V.copiiBudding ∧ V.clathrinMediated ∧ V.fusionMechanism

theorem vesicle_trafficking_closed_from_evidence (V : VesicleTraffickingPackage) (E : VesicleTraffickingEvidence V) : VesicleTraffickingClosed V :=
  And.intro E.copiBuddingClosed (And.intro E.copiiBuddingClosed (And.intro E.clathrinMediatedClosed E.fusionMechanismClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse
