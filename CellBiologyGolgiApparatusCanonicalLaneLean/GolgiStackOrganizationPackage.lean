import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGolgiApparatusCanonicalLaneLean

structure GolgiStackOrganizationPackage where
  cisGolgiNetwork : Prop
  medialGolgi : Prop
  transGolgiNetwork : Prop
  stackPolarity : Prop

structure GolgiStackOrganizationEvidence (G : GolgiStackOrganizationPackage) where
  cisGolgiNetworkClosed : G.cisGolgiNetwork
  medialGolgiClosed : G.medialGolgi
  transGolgiNetworkClosed : G.transGolgiNetwork
  stackPolarityClosed : G.stackPolarity

def GolgiStackOrganizationClosed (G : GolgiStackOrganizationPackage) : Prop :=
  G.cisGolgiNetwork ∧ G.medialGolgi ∧
  G.transGolgiNetwork ∧ G.stackPolarity

theorem golgi_stack_organization_closed_from_evidence
    (G : GolgiStackOrganizationPackage)
    (E : GolgiStackOrganizationEvidence G) : GolgiStackOrganizationClosed G := by
  exact And.intro E.cisGolgiNetworkClosed
    (And.intro E.medialGolgiClosed
      (And.intro E.transGolgiNetworkClosed E.stackPolarityClosed))

end CellBiologyGolgiApparatusCanonicalLaneLean
end HautevilleHouse