import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GolgiTraffickingRegulationPackage where
  rabGTPaseControl : Prop
  coatProteinRecruitment : Prop
  tetheringFactor : Prop
  snareMediatedFusion : Prop

structure GolgiTraffickingRegulationEvidence (G : GolgiTraffickingRegulationPackage) where
  rabGTPaseControlClosed : G.rabGTPaseControl
  coatProteinRecruitmentClosed : G.coatProteinRecruitment
  tetheringFactorClosed : G.tetheringFactor
  snareMediatedFusionClosed : G.snareMediatedFusion

def GolgiTraffickingRegulationClosed (G : GolgiTraffickingRegulationPackage) : Prop :=
  G.rabGTPaseControl ∧ G.coatProteinRecruitment ∧ G.tetheringFactor ∧ G.snareMediatedFusion

theorem golgi_trafficking_regulation_closed_from_evidence
    (G : GolgiTraffickingRegulationPackage) (E : GolgiTraffickingRegulationEvidence G) :
    GolgiTraffickingRegulationClosed G := by
  exact And.intro E.rabGTPaseControlClosed
    (And.intro E.coatProteinRecruitmentClosed
      (And.intro E.tetheringFactorClosed E.snareMediatedFusionClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse