import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GolgiTraffickingAndSecretionPackage where
  constitutiveSecretion : Type u
  regulatedSecretion : Type v
  cargoSorting : Prop
  plasmaMembraneDelivery : Prop
  exocytosisMechanism : Prop

structure GolgiTraffickingAndSecretionEvidence (P : GolgiTraffickingAndSecretionPackage) where
  cargoSortingClosed : P.cargoSorting
  plasmaMembraneDeliveryClosed : P.plasmaMembraneDelivery
  exocytosisMechanismClosed : P.exocytosisMechanism

def GolgiTraffickingAndSecretionClosed (P : GolgiTraffickingAndSecretionPackage) : Prop :=
  P.cargoSorting ∧ P.plasmaMembraneDelivery ∧ P.exocytosisMechanism

theorem golgi_trafficking_and_secretion_closed_from_evidence
    (P : GolgiTraffickingAndSecretionPackage) (E : GolgiTraffickingAndSecretionEvidence P) :
    GolgiTraffickingAndSecretionClosed P := by
  exact And.intro E.cargoSortingClosed
    (And.intro E.plasmaMembraneDeliveryClosed E.exocytosisMechanismClosed)

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse