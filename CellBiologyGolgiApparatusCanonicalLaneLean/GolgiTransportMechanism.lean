import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GolgiTransportPackage where
  vesicleFormation : Prop
  cargoSorting : Prop
  vesicleFusion : Prop
  signalRecognition : Prop

structure GolgiTransportEvidence (G : GolgiTransportPackage) where
  vesicleFormationClosed : G.vesicleFormation
  cargoSortingClosed : G.cargoSorting
  vesicleFusionClosed : G.vesicleFusion
  signalRecognitionClosed : G.signalRecognition

def GolgiTransportClosed (G : GolgiTransportPackage) : Prop :=
  G.vesicleFormation ∧ G.cargoSorting ∧ G.vesicleFusion ∧ G.signalRecognition

theorem golgi_transport_closed_from_evidence
    (G : GolgiTransportPackage) (E : GolgiTransportEvidence G) :
    GolgiTransportClosed G := by
  exact And.intro E.vesicleFormationClosed
    (And.intro E.cargoSortingClosed
      (And.intro E.vesicleFusionClosed E.signalRecognitionClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse