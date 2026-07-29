import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GlycosylationPackage where
  nLinkedGlycosylation : Prop
  oLinkedGlycosylation : Prop
  glycanProcessing : Prop
  substrateSpecificity : Prop

structure GlycosylationEvidence (G : GlycosylationPackage) where
  nLinkedGlycosylationClosed : G.nLinkedGlycosylation
  oLinkedGlycosylationClosed : G.oLinkedGlycosylation
  glycanProcessingClosed : G.glycanProcessing
  substrateSpecificityClosed : G.substrateSpecificity

def GlycosylationClosed (G : GlycosylationPackage) : Prop :=
  G.nLinkedGlycosylation ∧ G.oLinkedGlycosylation ∧ G.glycanProcessing ∧ G.substrateSpecificity

theorem glycosylation_closed_from_evidence
    (G : GlycosylationPackage) (E : GlycosylationEvidence G) : GlycosylationClosed G := by
  exact And.intro E.nLinkedGlycosylationClosed
    (And.intro E.oLinkedGlycosylationClosed
      (And.intro E.glycanProcessingClosed E.substrateSpecificityClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse