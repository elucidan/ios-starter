import Dip

internal struct ControllersRegistrationModule: IRegistrationModule {
    func register(container: DependencyContainer) {
        container.register(storyboardType: InitialController.self, tag: "initialController")
            .resolvingProperties { container, controller in
                controller.fetchData = try container.resolve() as IFetchData
        }
        container.register(storyboardType: SubsequentController.self, tag: "subsequentController")
            .resolvingProperties { container, controller in
                controller.imageResponseSerializer = try container.resolve() as IImageResponseSerializer
        }

    }
}
