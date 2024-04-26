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
    targetName: Module.featureA.rawValue,
    product: .app,
    infoPlist: infoPlist,
    resources: ["Resources/**"],
    dependencies: [
        .module(.featureB),
        .module(.featureC)
    ]
)

let project = Project.create(
    name: "FeatureA",
    packages: [],
    settings: mainSetting,
    targets: [mainTarget],
    schemes: [
        .create(name: Module.featureA.rawValue, hidden: false, configuration: .debug),
        .create(name: Module.featureA.rawValue, configuration: .inhouse),
        .create(name: Module.featureA.rawValue, configuration: .release),
    ]
)
