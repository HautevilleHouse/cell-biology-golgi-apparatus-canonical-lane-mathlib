import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GolgiStructurePackage (A : AdmissibleClass) where
  cisternaeStacking : Prop
  cisGolgiNetwork : Prop
  transGolgiNetwork : Prop
  ribbonFormation : Prop

structure GolgiStructureEvidence (A : AdmissibleClass) (S : GolgiStructurePackage A) where
  cisternaeStackingClosed : S.cisternaeStacking
  cisGolgiNetworkClosed : S.cisGolgiNetwork
  transGolgiNetworkClosed : S.transGolgiNetwork
  ribbonFormationClosed : S.ribbonFormation

def GolgiStructureClosed (A : AdmissibleClass) (S : GolgiStructurePackage A) : Prop :=
  S.cisternaeStacking ∧ S.cisGolgiNetwork ∧ S.transGolgiNetwork ∧ S.ribbonFormation

theorem golgi_structure_closed_from_evidence (A : AdmissibleClass) (S : GolgiStructurePackage A) (E : GolgiStructureEvidence A S) :
    GolgiStructureClosed A S := by
  exact And.intro E.cisternaeStackingClosed (And.intro E.cisGolgiNetworkClosed (And.intro E.transGolgiNetworkClosed E.ribbonFormationClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse