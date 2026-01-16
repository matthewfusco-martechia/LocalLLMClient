// LocalLLMClientLlamaC.h - Pure C header for iOS device compatibility
// NO C++ includes allowed - all C++ logic is in .cpp implementation files

#pragma once

// Core llama.cpp C headers only
#include "ggml-alloc.h"
#include "ggml-backend.h"
#include "ggml-cpu.h"
#include "ggml-opt.h"
#include "ggml.h"
#include "gguf.h"
#include "llama.h"

// NOTE: clip.h, mtmd.h, mtmd-helper.h are NOT included in the xcframework
// binary. Vision/multimodal support requires building llama.cpp from source
// with LLAMA_BUILD_VISION=ON.

// NOTE: chat.h, common.h, and utils.h are NOT included here because they
// contain C++ STL types. Tool call parsing is handled in pure Swift instead.
