import Foundation
import LocalLLMClientCore
@_exported import LocalLLMClientLlamaC

// NOTE: Vision/multimodal support is NOT available when using the prebuilt xcframework.
// The xcframework binary does not include mtmd.h, clip.h, or related multimodal headers.
// To enable vision support, llama.cpp must be built from source with LLAMA_BUILD_VISION=ON.

public class MultimodalContext: @unchecked Sendable {
    package let multimodalContext: OpaquePointer?
    package let verbose: Bool

    package init(url: URL, context: Context, parameter: LlamaClient.Parameter) throws(LLMError) {
        // Vision support not available in xcframework binary
        throw .failedToLoad(reason: "Vision/multimodal not supported with prebuilt xcframework. Build llama.cpp from source with LLAMA_BUILD_VISION=ON to enable.")
    }

    deinit {
        // No-op: multimodalContext is never initialized
    }

    package func chunks(images: [LLMInputImage]) throws(LLMError) -> MultimodalChunks {
        throw .failedToLoad(reason: "Vision/multimodal not supported with prebuilt xcframework")
    }
}

package final class MultimodalChunks: @unchecked Sendable {
    package let chunks: OpaquePointer?

    public init(chunks: OpaquePointer?) {
        self.chunks = chunks
    }

    deinit {
        // No-op: chunks is never initialized
    }
}

package extension Context {
    func decode(bitmap: MultimodalChunks, with multimodal: MultimodalContext) throws(LLMError) {
        throw .failedToDecode(reason: "Vision/multimodal not supported with prebuilt xcframework")
    }
}
