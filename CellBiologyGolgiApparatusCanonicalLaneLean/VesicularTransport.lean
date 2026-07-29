import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure VesicularTransportPackage where
  coatProteinRecruitment : Prop
  cargoLoading : Prop
  vesicleBudding : Prop
  vesicleFusion : Prop

structure VesicularTransportEvidence (V : VesicularTransportPackage) where
  coatProteinRecruitmentClosed : V.coatProteinRecruitment
  cargoLoadingClosed : V.cargoLoading
  vesicleBuddingClosed : V.vesicleBudding
  vesicleFusionClosed : V.vesicleFusion

def VesicularTransportClosed (V : VesicularTransportPackage) : Prop :=
  V.coatProteinRecruitment ∧ V.cargoLoading ∧ V.vesicleBudding ∧ V.vesicleFusion

theorem vesicular_transport_closed_from_evidence (V : VesicularTransportPackage)
    (E : VesicularTransportEvidence V) : VesicularTransportClosed V := by
  exact And.intro E.coatProteinRecruitmentClosed
    (And.intro E.cargoLoadingClosed
      (And.intro E.vesicleBuddingClosed E.vesicleFusionClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse