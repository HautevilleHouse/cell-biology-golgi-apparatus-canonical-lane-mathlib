import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GolgiWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse