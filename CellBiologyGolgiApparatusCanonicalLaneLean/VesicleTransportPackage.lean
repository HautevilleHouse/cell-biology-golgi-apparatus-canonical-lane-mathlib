import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure VesicleTransportPackage {G : GolgiStack} where
  copiCoat : Prop
  copiiCoat : Prop
  retrogradeTransport : Prop
  anterogradeTransport : Prop

def VesicleTransportClosed {G : GolgiStack} (V : VesicleTransportPackage G) : Prop :=
  V.copiCoat ∧ V.copiiCoat ∧ V.retrogradeTransport ∧ V.anterogradeTransport

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse