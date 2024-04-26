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
    targetName: Module.router.rawValue,
    product: .framework,
    infoPlist: infoPlist,
    resources: nil,
    dependencies: []
)

let project = Project.create(
    name: Module.router.rawValue,
    packages: [],
    settings: mainSetting,
    targets: [mainTarget],
    schemes: [
        .create(name: Module.router.rawValue, configuration: .debug),
//        .create(name: Module.router.rawValue, configuration: .inhouse),
//        .create(name: Module.router.rawValue, configuration: .release),
    ]
)
