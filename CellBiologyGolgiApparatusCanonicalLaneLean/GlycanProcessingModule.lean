import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GlycanProcessingModule {G : GolgiStack} where
  mannosidaseI : Prop
  mannosidaseII : Prop
  nAcetylGlucosaminylTransferase : Prop
  galactosylTransferase : Prop
  sialylTransferase : Prop

def GlycanProcessingClosed {G : GolgiStack} (M : GlycanProcessingModule G) : Prop :=
  M.mannosidaseI ∧ M.mannosidaseII ∧ M.nAcetylGlucosaminylTransferase ∧
  M.galactosylTransferase ∧ M.sialylTransferase

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse