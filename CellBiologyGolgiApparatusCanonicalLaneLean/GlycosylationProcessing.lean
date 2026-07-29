import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GlycosylationProcessingPackage where
  nLinkedGlycosylation : Prop
  oLinkedGlycosylation : Prop
  glycanTrimming : Prop
  glycanElongation : Prop

structure GlycosylationProcessingEvidence (G : GlycosylationProcessingPackage) where
  nLinkedGlycosylationClosed : G.nLinkedGlycosylation
  oLinkedGlycosylationClosed : G.oLinkedGlycosylation
  glycanTrimmingClosed : G.glycanTrimming
  glycanElongationClosed : G.glycanElongation

def GlycosylationProcessingClosed (G : GlycosylationProcessingPackage) : Prop :=
  G.nLinkedGlycosylation ∧ G.oLinkedGlycosylation ∧ G.glycanTrimming ∧ G.glycanElongation

theorem glycosylation_processing_closed_from_evidence (G : GlycosylationProcessingPackage)
    (E : GlycosylationProcessingEvidence G) : GlycosylationProcessingClosed G := by
  exact And.intro E.nLinkedGlycosylationClosed
    (And.intro E.oLinkedGlycosylationClosed
      (And.intro E.glycanTrimmingClosed E.glycanElongationClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse