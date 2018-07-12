import Dip

internal struct ManagersRegistrationModule: IRegistrationModule {
    func register(container: DependencyContainer) {

        #if FAKE
         container.register(.shared) {FetchData() as IFetchData}
        container.register(.shared) {FakeImageResponseSerializer() as IImageResponseSerializer}
        #else

        #endif

    }
}
