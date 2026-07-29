import HautevilleHouse.CellBiologyGolgiApparatusCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GolgiArchitecturePackage where
  stackMorphology : Prop
  cisternalProgression : Prop
  membraneContactSites : Prop

structure GolgiArchitectureEvidence (G : GolgiArchitecturePackage) where
  stackMorphologyClosed : G.stackMorphology
  cisternalProgressionClosed : G.cisternalProgression
  membraneContactSitesClosed : G.membraneContactSites

def GolgiArchitectureClosed (G : GolgiArchitecturePackage) : Prop :=
  G.stackMorphology ∧ G.cisternalProgression ∧ G.membraneContactSites

theorem golgi_architecture_closed_from_evidence (G : GolgiArchitecturePackage) (E : GolgiArchitectureEvidence G) : GolgiArchitectureClosed G :=
  And.intro E.stackMorphologyClosed (And.intro E.cisternalProgressionClosed E.membraneContactSitesClosed)

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse
