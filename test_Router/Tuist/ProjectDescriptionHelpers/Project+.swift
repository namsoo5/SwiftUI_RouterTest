import ProjectDescription

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/

extension Project {
    static var organizationName: String { "com.nsios" }
    
    public static func create(
        name: String,
        packages: [Package],
        settings: Settings?,
        targets: [Target],
        schemes: [Scheme]
    ) -> Project {
        Project(
            name: name,
            organizationName: organizationName,
            options: .options(
                disableBundleAccessors: true,
                disableSynthesizedResourceAccessors: true
            ),
            packages: packages,
            settings: settings,
            targets: targets,
            schemes: schemes
        )
    }
}
