// LocalLLMClientLlamaC.h - Pure C header for iOS device compatibility
// NO C++ includes allowed - all C++ logic is in .cpp implementation files

#pragma once

// Core llama.cpp C headers only
#include "clip.h"
#include "ggml-alloc.h"
#include "ggml-backend.h"
#include "ggml-cpu.h"
#include "ggml-opt.h"
#include "ggml.h"
#include "gguf.h"
#include "llama.h"
#include "mtmd-helper.h"
#include "mtmd.h"

// NOTE: chat.h, common.h, and utils.h are NOT included here because they
// contain C++ STL types. Tool call parsing is handled in pure Swift instead.
