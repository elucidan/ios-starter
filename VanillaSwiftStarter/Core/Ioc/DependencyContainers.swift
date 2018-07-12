import Dip
import Dip_UI

func configure(_ container: DependencyContainer) {
    ManagersRegistrationModule().register(container: container)
    ControllersRegistrationModule().register(container: container)
    DependencyContainer.uiContainers = [container]
}
