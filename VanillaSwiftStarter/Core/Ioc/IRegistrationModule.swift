import Dip

internal protocol IRegistrationModule {
    func register(container: DependencyContainer)
}
