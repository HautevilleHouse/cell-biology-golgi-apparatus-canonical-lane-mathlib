import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure CisternalStructurePackage where
  stackedCisternae : Prop
  polarizedOrientation : Prop
  transportVesicles : Prop
  glycosylationEnzymes : Prop

structure CisternalStructureEvidence (C : CisternalStructurePackage) where
  stackedCisternaeClosed : C.stackedCisternae
  polarizedOrientationClosed : C.polarizedOrientation
  transportVesiclesClosed : C.transportVesicles
  glycosylationEnzymesClosed : C.glycosylationEnzymes

def CisternalStructureClosed (C : CisternalStructurePackage) : Prop :=
  C.stackedCisternae ∧ C.polarizedOrientation ∧ C.transportVesicles ∧ C.glycosylationEnzymes

theorem cisternal_structure_closed_from_evidence (C : CisternalStructurePackage)
    (E : CisternalStructureEvidence C) : CisternalStructureClosed C := by
  exact And.intro E.stackedCisternaeClosed
    (And.intro E.polarizedOrientationClosed
      (And.intro E.transportVesiclesClosed E.glycosylationEnzymesClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse