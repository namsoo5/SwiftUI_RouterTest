import ProjectDescription
import ProjectDescriptionHelpers
//import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains TestRouter App target and TestRouter unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
//let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
//let project = Project.app(name: "TestRouter",
//                          destinations: .iOS,
//                          additionalTargets: ["TestRouterKit", "TestRouterUI"])

let mainTarget = Target.create(
    targetName: Module.featureC.rawValue,
    product: .framework,
    infoPlist: infoPlist,
    resources: ["Resources/**"],
    dependencies: [
        .module(.router)
    ]
)

let project = Project.create(
    name: "FeatureC",
    packages: [],
    settings: mainSetting,
    targets: [mainTarget],
    schemes: [
        .create(name: Module.featureC.rawValue, configuration: .debug),
//        .create(name: Module.featureC.rawValue, configuration: .inhouse),
//        .create(name: Module.featureC.rawValue, configuration: .release),
    ]
)
