import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GlycosylationEnzymePackage (A : AdmissibleClass) where
  enzymeLocalization : Prop
  substrateSpecificity : Prop
  catalyticActivity : Prop
  productExport : Prop

structure GlycosylationEnzymeEvidence (A : AdmissibleClass) (G : GlycosylationEnzymePackage A) where
  enzymeLocalizationClosed : G.enzymeLocalization
  substrateSpecificityClosed : G.substrateSpecificity
  catalyticActivityClosed : G.catalyticActivity
  productExportClosed : G.productExport

def GlycosylationEnzymeClosed (A : AdmissibleClass) (G : GlycosylationEnzymePackage A) : Prop :=
  G.enzymeLocalization ∧ G.substrateSpecificity ∧ G.catalyticActivity ∧ G.productExport

theorem glycosylation_enzyme_closed_from_evidence (A : AdmissibleClass) (G : GlycosylationEnzymePackage A) (E : GlycosylationEnzymeEvidence A G) :
    GlycosylationEnzymeClosed A G := by
  exact And.intro E.enzymeLocalizationClosed (And.intro E.substrateSpecificityClosed (And.intro E.catalyticActivityClosed E.productExportClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse