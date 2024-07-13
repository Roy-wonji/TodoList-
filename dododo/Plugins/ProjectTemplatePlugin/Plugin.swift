#if swift(>=6.0)
@preconcurrency import ProjectDescription
#else
import ProjectDescription
#endif

let plugin = Plugin(name: "ProjectTemplatePlugin")
