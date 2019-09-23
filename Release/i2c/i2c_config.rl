L 1 "../i2c/i2c_config.c"
N/*
N * i2c_config.c
N *
N *  Created on: Jul 6, 2019
N *      Author: kareem
N */
N#include "i2c.h"
L 1 "..\i2c\i2c.h" 1
N#ifndef I2C_H
N#define I2C_H
N
N#include "i2c_config.h"
L 1 "..\i2c\i2c_config.h" 1
N#ifndef I2C_CONFIG_H
N#define I2C_CONFIG_H
N
N
N// change it to the number of groups you have defined to configure
N#define I2C_GROUPS_NUMBER 1u
N
N#endif
L 5 "..\i2c\i2c.h" 2
N#include <stdint.h>
L 1 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/stdint.h" 1
N/*****************************************************************************/
N/* STDINT.H                                                                  */
N/*                                                                           */
N/* Copyright (c) 2002 Texas Instruments Incorporated                         */
N/* http://www.ti.com/                                                        */
N/*                                                                           */
N/*  Redistribution and  use in source  and binary forms, with  or without    */
N/*  modification,  are permitted provided  that the  following conditions    */
N/*  are met:                                                                 */
N/*                                                                           */
N/*     Redistributions  of source  code must  retain the  above copyright    */
N/*     notice, this list of conditions and the following disclaimer.         */
N/*                                                                           */
N/*     Redistributions in binary form  must reproduce the above copyright    */
N/*     notice, this  list of conditions  and the following  disclaimer in    */
N/*     the  documentation  and/or   other  materials  provided  with  the    */
N/*     distribution.                                                         */
N/*                                                                           */
N/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
N/*     of its  contributors may  be used to  endorse or  promote products    */
N/*     derived  from   this  software  without   specific  prior  written    */
N/*     permission.                                                           */
N/*                                                                           */
N/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
N/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
N/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
N/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
N/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
N/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
N/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
N/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
N/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
N/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
N/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
N/*                                                                           */
N/*****************************************************************************/
N#ifndef _STDINT_H_
N#define _STDINT_H_
N
N#if __has_include(<sys/stdint.h>)
X#if 1
N#include <sys/stdint.h>
L 1 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/sys/stdint.h" 1
N/*-
N * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
N *
N * Copyright (c) 2001 Mike Barcroft <mike@FreeBSD.org>
N * All rights reserved.
N *
N * Redistribution and use in source and binary forms, with or without
N * modification, are permitted provided that the following conditions
N * are met:
N * 1. Redistributions of source code must retain the above copyright
N *    notice, this list of conditions and the following disclaimer.
N * 2. Redistributions in binary form must reproduce the above copyright
N *    notice, this list of conditions and the following disclaimer in the
N *    documentation and/or other materials provided with the distribution.
N *
N * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
N * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
N * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
N * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
N * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
N * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
N * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
N * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
N * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
N * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
N * SUCH DAMAGE.
N *
N * $FreeBSD$
N */
N
N#ifndef _SYS_STDINT_H_
N#define _SYS_STDINT_H_
N
N#include <sys/cdefs.h>
L 1 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/sys/cdefs.h" 1
N/*-
N * SPDX-License-Identifier: BSD-3-Clause
N *
N * Copyright (c) 1991, 1993
N *	The Regents of the University of California.  All rights reserved.
N *
N * This code is derived from software contributed to Berkeley by
N * Berkeley Software Design, Inc.
N *
N * Redistribution and use in source and binary forms, with or without
N * modification, are permitted provided that the following conditions
N * are met:
N * 1. Redistributions of source code must retain the above copyright
N *    notice, this list of conditions and the following disclaimer.
N * 2. Redistributions in binary form must reproduce the above copyright
N *    notice, this list of conditions and the following disclaimer in the
N *    documentation and/or other materials provided with the distribution.
N * 3. Neither the name of the University nor the names of its contributors
N *    may be used to endorse or promote products derived from this software
N *    without specific prior written permission.
N *
N * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
N * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
N * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
N * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
N * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
N * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
N * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
N * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
N * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
N * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
N * SUCH DAMAGE.
N *
N *	@(#)cdefs.h	8.8 (Berkeley) 1/9/95
N * $FreeBSD$
N */
N
N#ifndef	_SYS_CDEFS_H_
N#define	_SYS_CDEFS_H_
N
N#if defined(__TI_COMPILER_VERSION__)
X#if 1L
N#pragma diag_push
N#pragma CHECK_MISRA("none")
N#endif
N
N/*
N * Testing against Clang-specific extensions.
N */
N#ifndef	__has_attribute
S#define	__has_attribute(x)	0
N#endif
N#ifndef	__has_extension
S#define	__has_extension		__has_feature
N#endif
N#ifndef	__has_feature
S#define	__has_feature(x)	0
N#endif
N#ifndef	__has_include
S#define	__has_include(x)	0
N#endif
N#ifndef	__has_builtin
S#define	__has_builtin(x)	0
N#endif
N
N#if defined(__cplusplus)
X#if 0L
S#define	__BEGIN_DECLS	extern "C" {
S#define	__END_DECLS	}
N#else
N#define	__BEGIN_DECLS
N#define	__END_DECLS
N#endif
N
N/*
N * This code has been put in place to help reduce the addition of
N * compiler specific defines in FreeBSD code.  It helps to aid in
N * having a compiler-agnostic source tree.
N */
N
N#if defined(__GNUC__) || defined(__INTEL_COMPILER)
X#if 0L || 0L
S
S#if __GNUC__ >= 3 || defined(__INTEL_COMPILER)
S#define	__GNUCLIKE_ASM 3
S#define	__GNUCLIKE_MATH_BUILTIN_CONSTANTS
S#else
S#define	__GNUCLIKE_ASM 2
S#endif
S#define	__GNUCLIKE___TYPEOF 1
S#define	__GNUCLIKE___OFFSETOF 1
S#define	__GNUCLIKE___SECTION 1
S
S#ifndef __INTEL_COMPILER
S#define	__GNUCLIKE_CTOR_SECTION_HANDLING 1
S#endif
S
S#define	__GNUCLIKE_BUILTIN_CONSTANT_P 1
S#if defined(__INTEL_COMPILER) && defined(__cplusplus) && \
S   __INTEL_COMPILER < 800
X#if defined(__INTEL_COMPILER) && defined(__cplusplus) &&    __INTEL_COMPILER < 800
S#undef __GNUCLIKE_BUILTIN_CONSTANT_P
S#endif
S
S#if (__GNUC_MINOR__ > 95 || __GNUC__ >= 3)
S#define	__GNUCLIKE_BUILTIN_VARARGS 1
S#define	__GNUCLIKE_BUILTIN_STDARG 1
S#define	__GNUCLIKE_BUILTIN_VAALIST 1
S#endif
S
S#if defined(__GNUC__)
S#define	__GNUC_VA_LIST_COMPATIBILITY 1
S#endif
S
S/*
S * Compiler memory barriers, specific to gcc and clang.
S */
S#if defined(__GNUC__)
S#define	__compiler_membar()	__asm __volatile(" " : : : "memory")
S#endif
S
S#ifndef __INTEL_COMPILER
S#define	__GNUCLIKE_BUILTIN_NEXT_ARG 1
S#define	__GNUCLIKE_MATH_BUILTIN_RELOPS
S#endif
S
S#define	__GNUCLIKE_BUILTIN_MEMCPY 1
S
S/* XXX: if __GNUC__ >= 2: not tested everywhere originally, where replaced */
S#define	__CC_SUPPORTS_INLINE 1
S#define	__CC_SUPPORTS___INLINE 1
S#define	__CC_SUPPORTS___INLINE__ 1
S
S#define	__CC_SUPPORTS___FUNC__ 1
S#define	__CC_SUPPORTS_WARNING 1
S
S#define	__CC_SUPPORTS_VARADIC_XXX 1 /* see varargs.h */
S
S#define	__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1
S
N#endif /* __GNUC__ || __INTEL_COMPILER */
N
N#ifdef __TI_COMPILER_VERSION__
N#define	__GNUCLIKE___TYPEOF 1
N#define	__GNUCLIKE___OFFSETOF 1
N#define	__GNUCLIKE___SECTION 1
N
N#define	__CC_SUPPORTS_INLINE 1
N#define	__CC_SUPPORTS___INLINE 1
N#define	__CC_SUPPORTS___INLINE__ 1
N
N#define	__CC_SUPPORTS___FUNC__ 1
N#define	__CC_SUPPORTS_WARNING 1
N
N#define	__CC_SUPPORTS_VARADIC_XXX 1 /* see varargs.h */
N
N#define	__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1
N#endif /* __TI_COMPILER_VERSION__ */
N
N/*
N * Macro to test if we're using a specific version of gcc or later.
N */
N#if defined(__GNUC__) && !defined(__INTEL_COMPILER)
X#if 0L && !0L
S#define	__GNUC_PREREQ__(ma, mi)	\
S	(__GNUC__ > (ma) || __GNUC__ == (ma) && __GNUC_MINOR__ >= (mi))
X#define	__GNUC_PREREQ__(ma, mi)		(__GNUC__ > (ma) || __GNUC__ == (ma) && __GNUC_MINOR__ >= (mi))
N#else
N#define	__GNUC_PREREQ__(ma, mi)	0
N#endif
N
N/*
N * The __CONCAT macro is used to concatenate parts of symbol names, e.g.
N * with "#define OLD(foo) __CONCAT(old,foo)", OLD(foo) produces oldfoo.
N * The __CONCAT macro is a bit tricky to use if it must work in non-ANSI
N * mode -- there must be no spaces between its arguments, and for nested
N * __CONCAT's, all the __CONCAT's must be at the left.  __CONCAT can also
N * concatenate double-quoted strings produced by the __STRING macro, but
N * this only works with ANSI C.
N *
N * __XSTRING is like __STRING, but it expands any macros in its argument
N * first.  It is only available with ANSI C.
N */
N#if defined(__STDC__) || defined(__cplusplus)
X#if 1L || 0L
N#define	__P(protos)	protos		/* full-blown ANSI C */
N#define	__CONCAT1(x,y)	x ## y
N#define	__CONCAT(x,y)	__CONCAT1(x,y)
N#define	__STRING(x)	#x		/* stringify without expanding x */
N#define	__XSTRING(x)	__STRING(x)	/* expand x, then stringify */
N
N#define	__const		const		/* define reserved names to standard */
N#define	__signed	signed
N#define	__volatile	volatile
N#if defined(__cplusplus)
X#if 0L
S#define	__inline	inline		/* convert to C++ keyword */
N#else
N#if !(defined(__CC_SUPPORTS___INLINE))
X#if !(1L)
S#define	__inline			/* delete GCC keyword */
N#endif /* ! __CC_SUPPORTS___INLINE */
N#endif /* !__cplusplus */
N
N#else	/* !(__STDC__ || __cplusplus) */
S#define	__P(protos)	()		/* traditional C preprocessor */
S#define	__CONCAT(x,y)	x/**/y
S#define	__STRING(x)	"x"
S
S#if !defined(__CC_SUPPORTS___INLINE)
S#define	__const				/* delete pseudo-ANSI C keywords */
S#define	__inline
S#define	__signed
S#define	__volatile
S/*
S * In non-ANSI C environments, new programs will want ANSI-only C keywords
S * deleted from the program and old programs will want them left alone.
S * When using a compiler other than gcc, programs using the ANSI C keywords
S * const, inline etc. as normal identifiers should define -DNO_ANSI_KEYWORDS.
S * When using "gcc -traditional", we assume that this is the intent; if
S * __GNUC__ is defined but __STDC__ is not, we leave the new keywords alone.
S */
S#ifndef	NO_ANSI_KEYWORDS
S#define	const				/* delete ANSI C keywords */
S#define	inline
S#define	signed
S#define	volatile
S#endif	/* !NO_ANSI_KEYWORDS */
S#endif	/* !__CC_SUPPORTS___INLINE */
N#endif	/* !(__STDC__ || __cplusplus) */
N
N/*
N * Compiler-dependent macros to help declare dead (non-returning) and
N * pure (no side effects) functions, and unused variables.  They are
N * null except for versions of gcc that are known to support the features
N * properly (old versions of gcc-2 supported the dead and pure features
N * in a different (wrong) way).  If we do not provide an implementation
N * for a given compiler, let the compile fail if it is told to use
N * a feature that we cannot live without.
N */
N#define	__weak_symbol	__attribute__((__weak__))
N#if !__GNUC_PREREQ__(2, 5) && !defined(__INTEL_COMPILER) && !defined(__TI_COMPILER_VERSION__)
X#if !0 && !0L && !1L
S#define	__dead2
S#define	__pure2
S#define	__unused
N#endif
N
N/*
N * TI ADD - check that __GNUC__ is defined before referencing it to avoid
N *          generating an error when __GNUC__ treated as zero warning is
N *          promoted to an error via -pdse195 option.
N */
N#if defined(__GNUC__) && __GNUC__ == 2 && __GNUC_MINOR__ >= 5 && __GNUC_MINOR__ < 7 && !defined(__INTEL_COMPILER)
X#if 0L && __GNUC__ == 2 && __GNUC_MINOR__ >= 5 && __GNUC_MINOR__ < 7 && !0L
S#define	__dead2		__attribute__((__noreturn__))
S#define	__pure2		__attribute__((__const__))
S#define	__unused
S/* XXX Find out what to do for __packed, __aligned and __section */
N#endif
N
N#if __GNUC_PREREQ__(2, 7) || defined(__INTEL_COMPILER) || defined(__TI_COMPILER_VERSION__)
X#if 0 || 0L || 1L
N#define	__dead2		__attribute__((__noreturn__))
N#define	__pure2		__attribute__((__const__))
N#define	__unused	__attribute__((__unused__))
N#define	__used		__attribute__((__used__))
N#define	__packed	__attribute__((__packed__))
N#define	__aligned(x)	__attribute__((__aligned__(x)))
N#define	__section(x)	__attribute__((__section__(x)))
N#endif
N#if __GNUC_PREREQ__(4, 3) || __has_attribute(__alloc_size__)
X#if 0 || 1
N#define	__alloc_size(x)	__attribute__((__alloc_size__(x)))
N#else
S#define	__alloc_size(x)
N#endif
N#if __GNUC_PREREQ__(4, 9) || __has_attribute(__alloc_align__)
X#if 0 || 0
S#define	__alloc_align(x)	__attribute__((__alloc_align__(x)))
N#else
N#define	__alloc_align(x)
N#endif
N
N#if defined(__TI_COMPILER_VERSION__)
X#if 1L
N#define __alignof(x)    __alignof__(x)
N#elif !__GNUC_PREREQ__(2, 95)
S#define	__alignof(x)	__offsetof(struct { char __a; x __b; }, __b)
N#endif
N
N/*
N * Keywords added in C11.
N */
N
N#if !defined(__STDC_VERSION__) || __STDC_VERSION__ < 201112L
X#if !1L || 199409L < 201112L
N
N#if !__has_extension(c_alignas)
X#if !1
S#if (defined(__cplusplus) && __cplusplus >= 201103L) || \
S    __has_extension(cxx_alignas)
X#if (defined(__cplusplus) && __cplusplus >= 201103L) ||     __has_extension(cxx_alignas)
S#define	_Alignas(x)		alignas(x)
S#else
S/* XXX: Only emulates _Alignas(constant-expression); not _Alignas(type-name). */
S#define	_Alignas(x)		__aligned(x)
S#endif
N#endif
N
N#if defined(__cplusplus) && __cplusplus >= 201103L
X#if 0L && __cplusplus >= 201103L
S#define	_Alignof(x)		alignof(x)
N#else
N#define	_Alignof(x)		__alignof(x)
N#endif
N
N#if !defined(__cplusplus) && !__has_extension(c_atomic) && \
N    !__has_extension(cxx_atomic)
X#if !0L && !0 &&     !0
N/*
N * No native support for _Atomic(). Place object in structure to prevent
N * most forms of direct non-atomic access.
N */
N#define	_Atomic(T)		struct { T volatile __val; }
N#endif
N
N#if defined(__cplusplus) && __cplusplus >= 201103L
X#if 0L && __cplusplus >= 201103L
S#define	_Noreturn		[[noreturn]]
N#else
N#define	_Noreturn		__dead2
N#endif
N
N#if !__has_extension(c_static_assert)
X#if !0
N#if (defined(__cplusplus) && __cplusplus >= 201103L) || \
N    __has_extension(cxx_static_assert)
X#if (0L && __cplusplus >= 201103L) ||     0
S#define	_Static_assert(x, y)	static_assert(x, y)
S#elif __GNUC_PREREQ__(4,6) && !defined(__cplusplus)
X#elif 0 && !0L
S/* Nothing, gcc 4.6 and higher has _Static_assert built-in */
N#elif defined(__COUNTER__)
X#elif 1L
N#define	_Static_assert(x, y)	__Static_assert(x, __COUNTER__)
N#define	__Static_assert(x, y)	___Static_assert(x, y)
N#define	___Static_assert(x, y)	typedef char __assert_ ## y[(x) ? 1 : -1] \
N				__unused
X#define	___Static_assert(x, y)	typedef char __assert_ ## y[(x) ? 1 : -1] 				__unused
N#else
S#define	_Static_assert(x, y)	struct __hack
N#endif
N#endif
N
N#if !__has_extension(c_thread_local)
X#if !0
N/*
N * XXX: Some compilers (Clang 3.3, GCC 4.7) falsely announce C++11 mode
N * without actually supporting the thread_local keyword. Don't check for
N * the presence of C++11 when defining _Thread_local.
N */
N#if /* (defined(__cplusplus) && __cplusplus >= 201103L) || */ \
N    __has_extension(cxx_thread_local)
X#if       0
S#define	_Thread_local		thread_local
N#else
N#define	_Thread_local		__thread
N#endif
N#endif
N
N#endif /* __STDC_VERSION__ || __STDC_VERSION__ < 201112L */
N
N/*
N * Emulation of C11 _Generic().  Unlike the previously defined C11
N * keywords, it is not possible to implement this using exactly the same
N * syntax.  Therefore implement something similar under the name
N * __generic().  Unlike _Generic(), this macro can only distinguish
N * between a single type, so it requires nested invocations to
N * distinguish multiple cases.
N */
N
N#if (defined(__STDC_VERSION__) && __STDC_VERSION__ >= 201112L) || \
N    __has_extension(c_generic_selections)
X#if (1L && 199409L >= 201112L) ||     0
S#define	__generic(expr, t, yes, no)					\
S	_Generic(expr, t: yes, default: no)
X#define	__generic(expr, t, yes, no)						_Generic(expr, t: yes, default: no)
S#elif __GNUC_PREREQ__(3, 1) && !defined(__cplusplus)
X#elif 0 && !0L
S#define	__generic(expr, t, yes, no)					\
S	__builtin_choose_expr(						\
S	    __builtin_types_compatible_p(__typeof(expr), t), yes, no)
X#define	__generic(expr, t, yes, no)						__builtin_choose_expr(							    __builtin_types_compatible_p(__typeof(expr), t), yes, no)
N#endif
N
N/*
N * C99 Static array indices in function parameter declarations.  Syntax such as:
N * void bar(int myArray[static 10]);
N * is allowed in C99 but not in C++.  Define __min_size appropriately so
N * headers using it can be compiled in either language.  Use like this:
N * void bar(int myArray[__min_size(10)]);
N */
N#if !defined(__cplusplus) && \
N    (defined(__clang__) || __GNUC_PREREQ__(4, 6)) && \
N    (!defined(__STDC_VERSION__) || (__STDC_VERSION__ >= 199901))
X#if !0L &&     (0L || 0) &&     (!1L || (199409L >= 199901))
S#define __min_size(x)	static (x)
N#else
N#define __min_size(x)	(x)
N#endif
N
N#if __GNUC_PREREQ__(2, 96)
X#if 0
S#define	__malloc_like	__attribute__((__malloc__))
S#define	__pure		__attribute__((__pure__))
N#else
N#define	__malloc_like
N#define	__pure
N#endif
N
N#if __GNUC_PREREQ__(3, 1) || (defined(__INTEL_COMPILER) && __INTEL_COMPILER >= 800) || defined(__TI_COMPILER_VERSION__)
X#if 0 || (0L && __INTEL_COMPILER >= 800) || 1L
N#define	__always_inline	__attribute__((__always_inline__))
N#else
S#define	__always_inline
N#endif
N
N#if __GNUC_PREREQ__(3, 1) || defined(__TI_COMPILER_VERSION__)
X#if 0 || 1L
N#define	__noinline	__attribute__ ((__noinline__))
N#else
S#define	__noinline
N#endif
N
N#if __GNUC_PREREQ__(3, 4)
X#if 0
S#define	__fastcall	__attribute__((__fastcall__))
S#define	__result_use_check	__attribute__((__warn_unused_result__))
N#else
N#define	__fastcall
N#define	__result_use_check
N#endif
N
N#if __GNUC_PREREQ__(4, 1)
X#if 0
S#define	__returns_twice	__attribute__((__returns_twice__))
N#else
N#define	__returns_twice
N#endif
N
N#if __GNUC_PREREQ__(4, 6) || __has_builtin(__builtin_unreachable)
X#if 0 || 0
S#define	__unreachable()	__builtin_unreachable()
N#else
N#define	__unreachable()	((void)0)
N#endif
N
N/* XXX: should use `#if __STDC_VERSION__ < 199901'. */
N#if !__GNUC_PREREQ__(2, 7) && !defined(__INTEL_COMPILER) && !defined(__TI_COMPILER_VERSION__)
X#if !0 && !0L && !1L
S#define	__func__	NULL
N#endif
N
N#if ((defined(__INTEL_COMPILER) || (defined(__GNUC__) && __GNUC__ >= 2)) && !defined(__STRICT_ANSI__) || __STDC_VERSION__ >= 199901) || defined(__TI_COMPILER_VERSION__)
X#if ((0L || (0L && __GNUC__ >= 2)) && !0L || 199409L >= 199901) || 1L
N#define	__LONG_LONG_SUPPORTED
N#endif
N
N/* C++11 exposes a load of C99 stuff */
N#if defined(__cplusplus) && __cplusplus >= 201103L
X#if 0L && __cplusplus >= 201103L
S#define	__LONG_LONG_SUPPORTED
S#ifndef	__STDC_LIMIT_MACROS
S#define	__STDC_LIMIT_MACROS
S#endif
S#ifndef	__STDC_CONSTANT_MACROS
S#define	__STDC_CONSTANT_MACROS
S#endif
N#endif
N
N/*
N * GCC 2.95 provides `__restrict' as an extension to C90 to support the
N * C99-specific `restrict' type qualifier.  We happen to use `__restrict' as
N * a way to define the `restrict' type qualifier without disturbing older
N * software that is unaware of C99 keywords.
N * The TI compiler supports __restrict in all compilation modes.
N */
N#if !defined(__TI_COMPILER_VERSION__)
X#if !1L
S#if !(__GNUC__ == 2 && __GNUC_MINOR__ == 95)
S#if !defined(__STDC_VERSION__) || __STDC_VERSION__ < 199901
S#define	__restrict
S#else
S#define	__restrict	restrict
S#endif
S#endif
N#endif
N
N/*
N * GNU C version 2.96 adds explicit branch prediction so that
N * the CPU back-end can hint the processor and also so that
N * code blocks can be reordered such that the predicted path
N * sees a more linear flow, thus improving cache behavior, etc.
N *
N * The following two macros provide us with a way to utilize this
N * compiler feature.  Use __predict_true() if you expect the expression
N * to evaluate to true, and __predict_false() if you expect the
N * expression to evaluate to false.
N *
N * A few notes about usage:
N *
N *	* Generally, __predict_false() error condition checks (unless
N *	  you have some _strong_ reason to do otherwise, in which case
N *	  document it), and/or __predict_true() `no-error' condition
N *	  checks, assuming you want to optimize for the no-error case.
N *
N *	* Other than that, if you don't know the likelihood of a test
N *	  succeeding from empirical or other `hard' evidence, don't
N *	  make predictions.
N *
N *	* These are meant to be used in places that are run `a lot'.
N *	  It is wasteful to make predictions in code that is run
N *	  seldomly (e.g. at subsystem initialization time) as the
N *	  basic block reordering that this affects can often generate
N *	  larger code.
N */
N#if __GNUC_PREREQ__(2, 96)
X#if 0
S#define	__predict_true(exp)     __builtin_expect((exp), 1)
S#define	__predict_false(exp)    __builtin_expect((exp), 0)
N#else
N#define	__predict_true(exp)     (exp)
N#define	__predict_false(exp)    (exp)
N#endif
N
N#if __GNUC_PREREQ__(4, 0)
X#if 0
S#define	__null_sentinel	__attribute__((__sentinel__))
S#define	__exported	__attribute__((__visibility__("default")))
S#define	__hidden	__attribute__((__visibility__("hidden")))
N#else
N#define	__null_sentinel
N#define	__exported
N#define	__hidden
N#endif
N
N/*
N * We define this here since <stddef.h>, <sys/queue.h>, and <sys/types.h>
N * require it.
N */
N#if __GNUC_PREREQ__(4, 1)
X#if 0
S#define	__offsetof(type, field)	 __builtin_offsetof(type, field)
N#else
N#ifndef __cplusplus
N#define	__offsetof(type, field) \
N	((__size_t)(__uintptr_t)((const volatile void *)&((type *)0)->field))
X#define	__offsetof(type, field) 	((__size_t)(__uintptr_t)((const volatile void *)&((type *)0)->field))
N#else
S#define	__offsetof(type, field)					\
S  (__offsetof__ (reinterpret_cast <__size_t>			\
S                 (&reinterpret_cast <const volatile char &>	\
S                  (static_cast<type *> (0)->field))))
X#define	__offsetof(type, field)					  (__offsetof__ (reinterpret_cast <__size_t>			                 (&reinterpret_cast <const volatile char &>	                  (static_cast<type *> (0)->field))))
N#endif
N#endif
N#define	__rangeof(type, start, end) \
N	(__offsetof(type, end) - __offsetof(type, start))
X#define	__rangeof(type, start, end) 	(__offsetof(type, end) - __offsetof(type, start))
N
N/*
N * Given the pointer x to the member m of the struct s, return
N * a pointer to the containing structure.  When using GCC, we first
N * assign pointer x to a local variable, to check that its type is
N * compatible with member m.
N */
N#if __GNUC_PREREQ__(3, 1)
X#if 0
S#define	__containerof(x, s, m) ({					\
S	const volatile __typeof(((s *)0)->m) *__x = (x);		\
S	__DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));\
S})
X#define	__containerof(x, s, m) ({						const volatile __typeof(((s *)0)->m) *__x = (x);			__DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})
N#else
N#define	__containerof(x, s, m)						\
N	__DEQUALIFY(s *, (const volatile char *)(x) - __offsetof(s, m))
X#define	__containerof(x, s, m)							__DEQUALIFY(s *, (const volatile char *)(x) - __offsetof(s, m))
N#endif
N
N/*
N * Compiler-dependent macros to declare that functions take printf-like
N * or scanf-like arguments.  They are null except for versions of gcc
N * that are known to support the features properly (old versions of gcc-2
N * didn't permit keeping the keywords out of the application namespace).
N */
N#if !__GNUC_PREREQ__(2, 7) && !defined(__INTEL_COMPILER)
X#if !0 && !0L
N#define	__printflike(fmtarg, firstvararg)
N#define	__scanflike(fmtarg, firstvararg)
N#define	__format_arg(fmtarg)
N#define	__strfmonlike(fmtarg, firstvararg)
N#define	__strftimelike(fmtarg, firstvararg)
N#else
S#define	__printflike(fmtarg, firstvararg) \
S	    __attribute__((__format__ (__printf__, fmtarg, firstvararg)))
X#define	__printflike(fmtarg, firstvararg) 	    __attribute__((__format__ (__printf__, fmtarg, firstvararg)))
S#define	__scanflike(fmtarg, firstvararg) \
S	    __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))
X#define	__scanflike(fmtarg, firstvararg) 	    __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))
S#define	__format_arg(fmtarg)	__attribute__((__format_arg__ (fmtarg)))
S#define	__strfmonlike(fmtarg, firstvararg) \
S	    __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))
X#define	__strfmonlike(fmtarg, firstvararg) 	    __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))
S#define	__strftimelike(fmtarg, firstvararg) \
S	    __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))
X#define	__strftimelike(fmtarg, firstvararg) 	    __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))
N#endif
N
N/* Compiler-dependent macros that rely on FreeBSD-specific extensions. */
N#if defined(__FreeBSD_cc_version) && __FreeBSD_cc_version >= 300001 && \
N    defined(__GNUC__) && !defined(__INTEL_COMPILER)
X#if 0L && __FreeBSD_cc_version >= 300001 &&     0L && !0L
S#define	__printf0like(fmtarg, firstvararg) \
S	    __attribute__((__format__ (__printf0__, fmtarg, firstvararg)))
X#define	__printf0like(fmtarg, firstvararg) 	    __attribute__((__format__ (__printf0__, fmtarg, firstvararg)))
N#else
N#define	__printf0like(fmtarg, firstvararg)
N#endif
N
N#if defined(__GNUC__) || defined(__INTEL_COMPILER)
X#if 0L || 0L
S#ifndef __INTEL_COMPILER
S#define	__strong_reference(sym,aliassym)	\
S	extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))
X#define	__strong_reference(sym,aliassym)		extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))
S#endif
S#ifdef __STDC__
S#define	__weak_reference(sym,alias)	\
S	__asm__(".weak " #alias);	\
S	__asm__(".equ "  #alias ", " #sym)
X#define	__weak_reference(sym,alias)		__asm__(".weak " #alias);		__asm__(".equ "  #alias ", " #sym)
S#define	__warn_references(sym,msg)	\
S	__asm__(".section .gnu.warning." #sym);	\
S	__asm__(".asciz \"" msg "\"");	\
S	__asm__(".previous")
X#define	__warn_references(sym,msg)		__asm__(".section .gnu.warning." #sym);		__asm__(".asciz \"" msg "\"");		__asm__(".previous")
S#define	__sym_compat(sym,impl,verid)	\
S	__asm__(".symver " #impl ", " #sym "@" #verid)
X#define	__sym_compat(sym,impl,verid)		__asm__(".symver " #impl ", " #sym "@" #verid)
S#define	__sym_default(sym,impl,verid)	\
S	__asm__(".symver " #impl ", " #sym "@@@" #verid)
X#define	__sym_default(sym,impl,verid)		__asm__(".symver " #impl ", " #sym "@@@" #verid)
S#else
S#define	__weak_reference(sym,alias)	\
S	__asm__(".weak alias");		\
S	__asm__(".equ alias, sym")
X#define	__weak_reference(sym,alias)		__asm__(".weak alias");			__asm__(".equ alias, sym")
S#define	__warn_references(sym,msg)	\
S	__asm__(".section .gnu.warning.sym"); \
S	__asm__(".asciz \"msg\"");	\
S	__asm__(".previous")
X#define	__warn_references(sym,msg)		__asm__(".section .gnu.warning.sym"); 	__asm__(".asciz \"msg\"");		__asm__(".previous")
S#define	__sym_compat(sym,impl,verid)	\
S	__asm__(".symver impl, sym@verid")
X#define	__sym_compat(sym,impl,verid)		__asm__(".symver impl, sym@verid")
S#define	__sym_default(impl,sym,verid)	\
S	__asm__(".symver impl, sym@@@verid")
X#define	__sym_default(impl,sym,verid)		__asm__(".symver impl, sym@@@verid")
S#endif	/* __STDC__ */
N#endif	/* __GNUC__ || __INTEL_COMPILER */
N
N#define	__GLOBL1(sym)	__asm__(".globl " #sym)
N#define	__GLOBL(sym)	__GLOBL1(sym)
N
N#if defined(__GNUC__) || defined(__INTEL_COMPILER)
X#if 0L || 0L
S#define	__IDSTRING(name,string)	__asm__(".ident\t\"" string "\"")
N#else
N/*
N * The following definition might not work well if used in header files,
N * but it should be better than nothing.  If you want a "do nothing"
N * version, then it should generate some harmless declaration, such as:
N *    #define	__IDSTRING(name,string)	struct __hack
N */
N#define	__IDSTRING(name,string)	static const char name[] __unused = string
N#endif
N
N#if defined(__TI_COMPILER_VERSION__) && defined(__TI_STRICT_ANSI_MODE__)
X#if 1L && 1L
N#define __extension__
N#endif
N
N/*
N * Embed the rcs id of a source file in the resulting library.  Note that in
N * more recent ELF binutils, we use .ident allowing the ID to be stripped.
N * Usage:
N *	__FBSDID("$FreeBSD$");
N */
N#ifndef	__FBSDID
N#if !defined(lint) && !defined(STRIP_FBSDID)
X#if !0L && !0L
N#define	__FBSDID(s)	__IDSTRING(__CONCAT(__rcsid_,__LINE__),s)
N#else
S#define	__FBSDID(s)	struct __hack
N#endif
N#endif
N
N#ifndef	__RCSID
N#ifndef	NO__RCSID
N#define	__RCSID(s)	__IDSTRING(__CONCAT(__rcsid_,__LINE__),s)
N#else
S#define	__RCSID(s)	struct __hack
N#endif
N#endif
N
N#ifndef	__RCSID_SOURCE
N#ifndef	NO__RCSID_SOURCE
N#define	__RCSID_SOURCE(s)	__IDSTRING(__CONCAT(__rcsid_source_,__LINE__),s)
N#else
S#define	__RCSID_SOURCE(s)	struct __hack
N#endif
N#endif
N
N#ifndef	__SCCSID
N#ifndef	NO__SCCSID
N#define	__SCCSID(s)	__IDSTRING(__CONCAT(__sccsid_,__LINE__),s)
N#else
S#define	__SCCSID(s)	struct __hack
N#endif
N#endif
N
N#ifndef	__COPYRIGHT
N#ifndef	NO__COPYRIGHT
N#define	__COPYRIGHT(s)	__IDSTRING(__CONCAT(__copyright_,__LINE__),s)
N#else
S#define	__COPYRIGHT(s)	struct __hack
N#endif
N#endif
N
N#ifndef	__DECONST
N#define	__DECONST(type, var)	((type)(__uintptr_t)(const void *)(var))
N#endif
N
N#ifndef	__DEVOLATILE
N#define	__DEVOLATILE(type, var)	((type)(__uintptr_t)(volatile void *)(var))
N#endif
N
N#ifndef	__DEQUALIFY
N#define	__DEQUALIFY(type, var)	((type)(__uintptr_t)(const volatile void *)(var))
N#endif
N
N/*-
N * The following definitions are an extension of the behavior originally
N * implemented in <sys/_posix.h>, but with a different level of granularity.
N * POSIX.1 requires that the macros we test be defined before any standard
N * header file is included.
N *
N * Here's a quick run-down of the versions:
N *  defined(_POSIX_SOURCE)		1003.1-1988
N *  _POSIX_C_SOURCE == 1		1003.1-1990
N *  _POSIX_C_SOURCE == 2		1003.2-1992 C Language Binding Option
N *  _POSIX_C_SOURCE == 199309		1003.1b-1993
N *  _POSIX_C_SOURCE == 199506		1003.1c-1995, 1003.1i-1995,
N *					and the omnibus ISO/IEC 9945-1: 1996
N *  _POSIX_C_SOURCE == 200112		1003.1-2001
N *  _POSIX_C_SOURCE == 200809		1003.1-2008
N *
N * In addition, the X/Open Portability Guide, which is now the Single UNIX
N * Specification, defines a feature-test macro which indicates the version of
N * that specification, and which subsumes _POSIX_C_SOURCE.
N *
N * Our macros begin with two underscores to avoid namespace screwage.
N */
N
N/* Deal with IEEE Std. 1003.1-1990, in which _POSIX_C_SOURCE == 1. */
N#if defined(_POSIX_C_SOURCE) && _POSIX_C_SOURCE == 1
X#if 0L && _POSIX_C_SOURCE == 1
S#undef _POSIX_C_SOURCE		/* Probably illegal, but beyond caring now. */
S#define	_POSIX_C_SOURCE		199009
N#endif
N
N/* Deal with IEEE Std. 1003.2-1992, in which _POSIX_C_SOURCE == 2. */
N#if defined(_POSIX_C_SOURCE) && _POSIX_C_SOURCE == 2
X#if 0L && _POSIX_C_SOURCE == 2
S#undef _POSIX_C_SOURCE
S#define	_POSIX_C_SOURCE		199209
N#endif
N
N/* Deal with various X/Open Portability Guides and Single UNIX Spec. */
N#ifdef _XOPEN_SOURCE
S#if _XOPEN_SOURCE - 0 >= 700
S#define	__XSI_VISIBLE		700
S#undef _POSIX_C_SOURCE
S#define	_POSIX_C_SOURCE		200809
S#elif _XOPEN_SOURCE - 0 >= 600
S#define	__XSI_VISIBLE		600
S#undef _POSIX_C_SOURCE
S#define	_POSIX_C_SOURCE		200112
S#elif _XOPEN_SOURCE - 0 >= 500
S#define	__XSI_VISIBLE		500
S#undef _POSIX_C_SOURCE
S#define	_POSIX_C_SOURCE		199506
S#endif
N#endif
N
N/*
N * Deal with all versions of POSIX.  The ordering relative to the tests above is
N * important.
N */
N#if defined(_POSIX_SOURCE) && !defined(_POSIX_C_SOURCE)
X#if 0L && !0L
S#define	_POSIX_C_SOURCE		198808
N#endif
N#ifdef _POSIX_C_SOURCE
S#if _POSIX_C_SOURCE >= 200809
S#define	__POSIX_VISIBLE		200809
S#define	__ISO_C_VISIBLE		1999
S#elif _POSIX_C_SOURCE >= 200112
S#define	__POSIX_VISIBLE		200112
S#define	__ISO_C_VISIBLE		1999
S#elif _POSIX_C_SOURCE >= 199506
S#define	__POSIX_VISIBLE		199506
S#define	__ISO_C_VISIBLE		1990
S#elif _POSIX_C_SOURCE >= 199309
S#define	__POSIX_VISIBLE		199309
S#define	__ISO_C_VISIBLE		1990
S#elif _POSIX_C_SOURCE >= 199209
S#define	__POSIX_VISIBLE		199209
S#define	__ISO_C_VISIBLE		1990
S#elif _POSIX_C_SOURCE >= 199009
S#define	__POSIX_VISIBLE		199009
S#define	__ISO_C_VISIBLE		1990
S#else
S#define	__POSIX_VISIBLE		198808
S#define	__ISO_C_VISIBLE		0
S#endif /* _POSIX_C_SOURCE */
N#else
N/*-
N * Deal with _ANSI_SOURCE:
N * If it is defined, and no other compilation environment is explicitly
N * requested, then define our internal feature-test macros to zero.  This
N * makes no difference to the preprocessor (undefined symbols in preprocessing
N * expressions are defined to have value zero), but makes it more convenient for
N * a test program to print out the values.
N *
N * If a program mistakenly defines _ANSI_SOURCE and some other macro such as
N * _POSIX_C_SOURCE, we will assume that it wants the broader compilation
N * environment (and in fact we will never get here).
N */
N#if defined(_ANSI_SOURCE)	/* Hide almost everything. */
X#if 0L	 
S#define	__POSIX_VISIBLE		0
S#define	__XSI_VISIBLE		0
S#define	__BSD_VISIBLE		0
S#define	__ISO_C_VISIBLE		1990
S#define	__EXT1_VISIBLE		0
S#elif defined(_C99_SOURCE)	/* Localism to specify strict C99 env. */
X#elif 0L	 
S#define	__POSIX_VISIBLE		0
S#define	__XSI_VISIBLE		0
S#define	__BSD_VISIBLE		0
S#define	__ISO_C_VISIBLE		1999
S#define	__EXT1_VISIBLE		0
S#elif defined(_C11_SOURCE)	/* Localism to specify strict C11 env. */
X#elif 0L	 
S#define	__POSIX_VISIBLE		0
S#define	__XSI_VISIBLE		0
S#define	__BSD_VISIBLE		0
S#define	__ISO_C_VISIBLE		2011
S#define	__EXT1_VISIBLE		0
N#else				/* Default environment: show everything. */
N#define	__POSIX_VISIBLE		200809
N#define	__XSI_VISIBLE		700
N#define	__BSD_VISIBLE		1
N#define	__ISO_C_VISIBLE		2011
N#define	__EXT1_VISIBLE		1
N#endif
N#endif
N
N/* User override __EXT1_VISIBLE */
N#if defined(__STDC_WANT_LIB_EXT1__)
X#if 0L
S#undef	__EXT1_VISIBLE
S#if __STDC_WANT_LIB_EXT1__
S#define	__EXT1_VISIBLE		1
S#else
S#define	__EXT1_VISIBLE		0
S#endif
N#endif /* __STDC_WANT_LIB_EXT1__ */
N
N#if defined(__mips) || defined(__powerpc64__) || defined(__riscv)
X#if 0L || 0L || 0L
S#define	__NO_TLS 1
N#endif
N
N/*
N * Old versions of GCC use non-standard ARM arch symbols; acle-compat.h
N * translates them to __ARM_ARCH and the modern feature symbols defined by ARM.
N */
N#if defined(__arm__) && !defined(__ARM_ARCH)
X#if 0L && !1L
S#include <machine/acle-compat.h>
N#endif
N
N/*
N * Nullability qualifiers: currently only supported by Clang.
N */
N#if !(defined(__clang__) && __has_feature(nullability))
X#if !(0L && 0)
N#define	_Nonnull
N#define	_Nullable
N#define	_Null_unspecified
N#define	__NULLABILITY_PRAGMA_PUSH
N#define	__NULLABILITY_PRAGMA_POP
N#else
S#define	__NULLABILITY_PRAGMA_PUSH _Pragma("clang diagnostic push")	\
S	_Pragma("clang diagnostic ignored \"-Wnullability-completeness\"")
X#define	__NULLABILITY_PRAGMA_PUSH _Pragma("clang diagnostic push")		_Pragma("clang diagnostic ignored \"-Wnullability-completeness\"")
S#define	__NULLABILITY_PRAGMA_POP _Pragma("clang diagnostic pop")
N#endif
N
N/*
N * Type Safety Checking
N *
N * Clang provides additional attributes to enable checking type safety
N * properties that cannot be enforced by the C type system. 
N */
N
N#if __has_attribute(__argument_with_type_tag__) && \
N    __has_attribute(__type_tag_for_datatype__)
X#if 0 &&     0
S#define	__arg_type_tag(arg_kind, arg_idx, type_tag_idx) \
S	    __attribute__((__argument_with_type_tag__(arg_kind, arg_idx, type_tag_idx)))
X#define	__arg_type_tag(arg_kind, arg_idx, type_tag_idx) 	    __attribute__((__argument_with_type_tag__(arg_kind, arg_idx, type_tag_idx)))
S#define	__datatype_type_tag(kind, type) \
S	    __attribute__((__type_tag_for_datatype__(kind, type)))
X#define	__datatype_type_tag(kind, type) 	    __attribute__((__type_tag_for_datatype__(kind, type)))
N#else
N#define	__arg_type_tag(arg_kind, arg_idx, type_tag_idx)
N#define	__datatype_type_tag(kind, type)
N#endif
N
N/*
N * Lock annotations.
N *
N * Clang provides support for doing basic thread-safety tests at
N * compile-time, by marking which locks will/should be held when
N * entering/leaving a functions.
N *
N * Furthermore, it is also possible to annotate variables and structure
N * members to enforce that they are only accessed when certain locks are
N * held.
N */
N
N#if __has_extension(c_thread_safety_attributes)
X#if 0
S#define	__lock_annotate(x)	__attribute__((x))
N#else
N#define	__lock_annotate(x)
N#endif
N
N/* Structure implements a lock. */
N#define	__lockable		__lock_annotate(lockable)
N
N/* Function acquires an exclusive or shared lock. */
N#define	__locks_exclusive(...) \
N	__lock_annotate(exclusive_lock_function(__VA_ARGS__))
X#define	__locks_exclusive(...) 	__lock_annotate(exclusive_lock_function(__VA_ARGS__))
N#define	__locks_shared(...) \
N	__lock_annotate(shared_lock_function(__VA_ARGS__))
X#define	__locks_shared(...) 	__lock_annotate(shared_lock_function(__VA_ARGS__))
N
N/* Function attempts to acquire an exclusive or shared lock. */
N#define	__trylocks_exclusive(...) \
N	__lock_annotate(exclusive_trylock_function(__VA_ARGS__))
X#define	__trylocks_exclusive(...) 	__lock_annotate(exclusive_trylock_function(__VA_ARGS__))
N#define	__trylocks_shared(...) \
N	__lock_annotate(shared_trylock_function(__VA_ARGS__))
X#define	__trylocks_shared(...) 	__lock_annotate(shared_trylock_function(__VA_ARGS__))
N
N/* Function releases a lock. */
N#define	__unlocks(...)		__lock_annotate(unlock_function(__VA_ARGS__))
N
N/* Function asserts that an exclusive or shared lock is held. */
N#define	__asserts_exclusive(...) \
N	__lock_annotate(assert_exclusive_lock(__VA_ARGS__))
X#define	__asserts_exclusive(...) 	__lock_annotate(assert_exclusive_lock(__VA_ARGS__))
N#define	__asserts_shared(...) \
N	__lock_annotate(assert_shared_lock(__VA_ARGS__))
X#define	__asserts_shared(...) 	__lock_annotate(assert_shared_lock(__VA_ARGS__))
N
N/* Function requires that an exclusive or shared lock is or is not held. */
N#define	__requires_exclusive(...) \
N	__lock_annotate(exclusive_locks_required(__VA_ARGS__))
X#define	__requires_exclusive(...) 	__lock_annotate(exclusive_locks_required(__VA_ARGS__))
N#define	__requires_shared(...) \
N	__lock_annotate(shared_locks_required(__VA_ARGS__))
X#define	__requires_shared(...) 	__lock_annotate(shared_locks_required(__VA_ARGS__))
N#define	__requires_unlocked(...) \
N	__lock_annotate(locks_excluded(__VA_ARGS__))
X#define	__requires_unlocked(...) 	__lock_annotate(locks_excluded(__VA_ARGS__))
N
N/* Function should not be analyzed. */
N#define	__no_lock_analysis	__lock_annotate(no_thread_safety_analysis)
N
N/* Guard variables and structure members by lock. */
N#define	__guarded_by(x)		__lock_annotate(guarded_by(x))
N#define	__pt_guarded_by(x)	__lock_annotate(pt_guarded_by(x))
N
N#ifdef __TI_COMPILER_VERSION__
N#pragma diag_pop
N#endif
N
N#endif /* !_SYS_CDEFS_H_ */
L 35 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/sys/stdint.h" 2
N#include <sys/_types.h>
L 1 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/sys/_types.h" 1
N/*-
N * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
N *
N * Copyright (c) 2002 Mike Barcroft <mike@FreeBSD.org>
N * All rights reserved.
N *
N * Redistribution and use in source and binary forms, with or without
N * modification, are permitted provided that the following conditions
N * are met:
N * 1. Redistributions of source code must retain the above copyright
N *    notice, this list of conditions and the following disclaimer.
N * 2. Redistributions in binary form must reproduce the above copyright
N *    notice, this list of conditions and the following disclaimer in the
N *    documentation and/or other materials provided with the distribution.
N *
N * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
N * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
N * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
N * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
N * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
N * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
N * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
N * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
N * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
N * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
N * SUCH DAMAGE.
N *
N * $FreeBSD$
N */
N
N#ifndef _SYS__TYPES_H_
N#define _SYS__TYPES_H_
N
N#include <sys/cdefs.h>
N#include <machine/_types.h>
L 1 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/machine/_types.h" 1
N/*-
N * SPDX-License-Identifier: BSD-4-Clause
N *
N * Copyright (c) 2002 Mike Barcroft <mike@FreeBSD.org>
N * Copyright (c) 1990, 1993
N *	The Regents of the University of California.  All rights reserved.
N *
N * Redistribution and use in source and binary forms, with or without
N * modification, are permitted provided that the following conditions
N * are met:
N * 1. Redistributions of source code must retain the above copyright
N *    notice, this list of conditions and the following disclaimer.
N * 2. Redistributions in binary form must reproduce the above copyright
N *    notice, this list of conditions and the following disclaimer in the
N *    documentation and/or other materials provided with the distribution.
N * 3. All advertising materials mentioning features or use of this software
N *    must display the following acknowledgement:
N *	This product includes software developed by the University of
N *	California, Berkeley and its contributors.
N * 4. Neither the name of the University nor the names of its contributors
N *    may be used to endorse or promote products derived from this software
N *    without specific prior written permission.
N *
N * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
N * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
N * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
N * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
N * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
N * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
N * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
N * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
N * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
N * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
N * SUCH DAMAGE.
N *
N *	From: @(#)ansi.h	8.2 (Berkeley) 1/4/94
N *	From: @(#)types.h	8.3 (Berkeley) 1/5/94
N * $FreeBSD$
N */
N
N#ifndef _MACHINE__TYPES_H_
N#define	_MACHINE__TYPES_H_
N
N#ifndef _SYS_CDEFS_H_
S#error this file needs sys/cdefs.h as a prerequisite
N#endif
N
N#ifdef __TI_COMPILER_VERSION__
N#pragma diag_push
N/* This file is required to use base types */
N#pragma CHECK_MISRA("-6.3")
N#endif
N
N/*
N * Basic types upon which most other types are built.
N */
Ntypedef	signed char		__int8_t;
Ntypedef	unsigned char		__uint8_t;
Ntypedef	short			__int16_t;
Ntypedef	unsigned short		__uint16_t;
Ntypedef	int			__int32_t;
Ntypedef	unsigned int		__uint32_t;
N#ifndef lint
N__extension__
X
N#endif
N/* LONGLONG */
Ntypedef	long long		__int64_t;
N#ifndef lint
N__extension__
X
N#endif
N/* LONGLONG */
Ntypedef	unsigned long long	__uint64_t;
N
N/*
N * Standard type definitions.
N */
Ntypedef	__uint32_t	__clock_t;		/* clock()... */
Ntypedef	__int32_t	__critical_t;
Ntypedef	double		__double_t;
Ntypedef	float		__float_t;
Ntypedef	__int32_t	__intfptr_t;
Ntypedef	__int64_t	__intmax_t;
Ntypedef	__int32_t	__intptr_t;
Ntypedef	__int32_t	__int_fast8_t;
Ntypedef	__int32_t	__int_fast16_t;
Ntypedef	__int32_t	__int_fast32_t;
Ntypedef	__int64_t	__int_fast64_t;
Ntypedef	__int8_t	__int_least8_t;
Ntypedef	__int16_t	__int_least16_t;
Ntypedef	__int32_t	__int_least32_t;
Ntypedef	__int64_t	__int_least64_t;
Ntypedef	__int32_t	__ptrdiff_t;		/* ptr1 - ptr2 */
Ntypedef	__int32_t	__register_t;
Ntypedef	__int32_t	__segsz_t;		/* segment size (in pages) */
Ntypedef	__uint32_t	__size_t;		/* sizeof() */
Ntypedef	__int32_t	__ssize_t;		/* byte count or error */
N#if (defined(__TI_TIME_USES_64) && __TI_TIME_USES_64)
X#if (0L && __TI_TIME_USES_64)
Stypedef	__int64_t	__time_t;		/* time()... */
N#else
Ntypedef __uint32_t      __time_t;
N#endif
Ntypedef	__uint32_t	__uintfptr_t;
Ntypedef	__uint64_t	__uintmax_t;
Ntypedef	__uint32_t	__uintptr_t;
Ntypedef	__uint32_t	__uint_fast8_t;
Ntypedef	__uint32_t	__uint_fast16_t;
Ntypedef	__uint32_t	__uint_fast32_t;
Ntypedef	__uint64_t	__uint_fast64_t;
Ntypedef	__uint8_t	__uint_least8_t;
Ntypedef	__uint16_t	__uint_least16_t;
Ntypedef	__uint32_t	__uint_least32_t;
Ntypedef	__uint64_t	__uint_least64_t;
Ntypedef	__uint32_t	__u_register_t;
Ntypedef	__uint32_t	__vm_offset_t;
Ntypedef	__uint32_t	__vm_paddr_t;
Ntypedef	__uint32_t	__vm_size_t;
N
Ntypedef	__WCHAR_T_TYPE__ ___wchar_t;
Xtypedef	unsigned short ___wchar_t;
N#define	__WCHAR_MIN	0		/* min value for a wchar_t */
N
N#ifdef __TI_COMPILER_VERSION__
N#if !defined(__TI_WCHAR_T_BITS__) || __TI_WCHAR_T_BITS__ == 16
X#if !1L || 16 == 16
N#    define __WCHAR_MAX 0xffffu
N#else
S#    define __WCHAR_MAX 0xffffffffu
N#endif
N#else
S#define	__WCHAR_MAX	__UINT_MAX	/* max value for a wchar_t */
N#endif
N
N/*
N * Unusual type definitions.
N */
N#ifdef __TI_COMPILER_VERSION__
Ntypedef struct __va_list_t {
N    void * __ap;
N} __va_list;
N#elif defined(__GNUCLIKE_BUILTIN_VARARGS)
Stypedef __builtin_va_list	__va_list;	/* internally known to gcc */
S#else
Stypedef	char *			__va_list;
N#endif /* __GNUCLIKE_BUILTIN_VARARGS */
N#if defined(__GNUCLIKE_BUILTIN_VAALIST) && !defined(__GNUC_VA_LIST) \
N    && !defined(__NO_GNUC_VA_LIST)
X#if 0L && !0L     && !0L
S#define __GNUC_VA_LIST
Stypedef __va_list		__gnuc_va_list;	/* compatibility w/GNU headers*/
N#endif
N
N#if defined(__TI_COMPILER_VERSION__)
X#if 1L
N#pragma diag_pop
N#endif
N
N#endif /* !_MACHINE__TYPES_H_ */
L 36 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/sys/_types.h" 2
N
N#if defined(__TI_COMPILER_VERSION__)
X#if 1L
N#pragma diag_push
N/* This file is required to use types without size and signedness */
N#pragma CHECK_MISRA("-6.3")
N#endif
N
N/*
N * Standard type definitions.
N */
Ntypedef	__int32_t	__blksize_t;	/* file block size */
Ntypedef	__int64_t	__blkcnt_t;	/* file block count */
Ntypedef	__int32_t	__clockid_t;	/* clock_gettime()... */
Ntypedef	__uint32_t	__fflags_t;	/* file flags */
Ntypedef	__uint64_t	__fsblkcnt_t;
Ntypedef	__uint64_t	__fsfilcnt_t;
Ntypedef	__uint32_t	__gid_t;
Ntypedef	__int64_t	__id_t;		/* can hold a gid_t, pid_t, or uid_t */
Ntypedef	__uint64_t	__ino_t;	/* inode number */
Ntypedef	long		__key_t;	/* IPC key (for Sys V IPC) */
Ntypedef	__int32_t	__lwpid_t;	/* Thread ID (a.k.a. LWP) */
Ntypedef	__uint16_t	__mode_t;	/* permissions */
Ntypedef	int		__accmode_t;	/* access permissions */
Ntypedef	int		__nl_item;
Ntypedef	__uint64_t	__nlink_t;	/* link count */
Ntypedef	__int64_t	__off_t;	/* file offset */
Ntypedef	__int64_t	__off64_t;	/* file offset (alias) */
Ntypedef	__int32_t	__pid_t;	/* process [group] */
Ntypedef	__int64_t	__rlim_t;	/* resource limit - intentionally */
N					/* signed, because of legacy code */
N					/* that uses -1 for RLIM_INFINITY */
Ntypedef	__uint8_t	__sa_family_t;
Ntypedef	__uint32_t	__socklen_t;
Ntypedef	long		__suseconds_t;	/* microseconds (signed) */
Ntypedef	struct __timer	*__timer_t;	/* timer_gettime()... */
Ntypedef	struct __mq	*__mqd_t;	/* mq_open()... */
Ntypedef	__uint32_t	__uid_t;
Ntypedef	unsigned int	__useconds_t;	/* microseconds (unsigned) */
Ntypedef	int		__cpuwhich_t;	/* which parameter for cpuset. */
Ntypedef	int		__cpulevel_t;	/* level parameter for cpuset. */
Ntypedef int		__cpusetid_t;	/* cpuset identifier. */
N
N/*
N * Unusual type definitions.
N */
N/*
N * rune_t is declared to be an ``int'' instead of the more natural
N * ``unsigned long'' or ``long''.  Two things are happening here.  It is not
N * unsigned so that EOF (-1) can be naturally assigned to it and used.  Also,
N * it looks like 10646 will be a 31 bit standard.  This means that if your
N * ints cannot hold 32 bits, you will be in trouble.  The reason an int was
N * chosen over a long is that the is*() and to*() routines take ints (says
N * ANSI C), but they use __ct_rune_t instead of int.
N *
N * NOTE: rune_t is not covered by ANSI nor other standards, and should not
N * be instantiated outside of lib/libc/locale.  Use wchar_t.  wint_t and
N * rune_t must be the same type.  Also, wint_t should be able to hold all
N * members of the largest character set plus one extra value (WEOF), and
N * must be at least 16 bits.
N */
Ntypedef	int		__ct_rune_t;	/* arg type for ctype funcs */
Ntypedef	__ct_rune_t	__rune_t;	/* rune_t (see above) */
Ntypedef	__ct_rune_t	__wint_t;	/* wint_t (see above) */
N
N/* Clang already provides these types as built-ins, but only in C++ mode. */
N#if !defined(__clang__) || !defined(__cplusplus)
X#if !0L || !0L
Ntypedef	__uint_least16_t __char16_t;
Ntypedef	__uint_least32_t __char32_t;
N#endif
N/* In C++11, char16_t and char32_t are built-in types. */
N#if defined(__cplusplus) && __cplusplus >= 201103L
X#if 0L && __cplusplus >= 201103L
S#define	_CHAR16_T_DECLARED
S#define	_CHAR32_T_DECLARED
N#endif
N
Ntypedef struct {
N	long long __max_align1 __aligned(_Alignof(long long));
X	long long __max_align1 __attribute__((__aligned__(__alignof__(long long))));
N	long double __max_align2 __aligned(_Alignof(long double));
X	long double __max_align2 __attribute__((__aligned__(__alignof__(long double))));
N} __max_align_t;
N
Ntypedef	__uint64_t	__dev_t;	/* device number */
N
Ntypedef	__uint32_t	__fixpt_t;	/* fixed point number */
N
N/*
N * mbstate_t is an opaque object to keep conversion state during multibyte
N * stream conversions.
N */
N
N#ifdef __TI_COMPILER_VERSION__
N#if defined(_AEABI_PORTABILITY_LEVEL) && _AEABI_PORTABILITY_LEVEL != 0
X#if 0L && _AEABI_PORTABILITY_LEVEL != 0
Stypedef struct _Mbstatet
S{
S    unsigned int __state, __state2;
S} _Mbstatet;
N#else
Ntypedef int _Mbstatet;
N#endif /* _AEABI_PORTABILITY_LEVEL */
N
Ntypedef _Mbstatet __mbstate_t;
N#else
Stypedef union {
S	char		__mbstate8[128];
S	__int64_t	_mbstateL;	/* for alignment */
S} __mbstate_t;
N#endif
N
Ntypedef __uintmax_t     __rman_res_t;
N
N/*
N * When the following macro is defined, the system uses 64-bit inode numbers.
N * Programs can use this to avoid including <sys/param.h>, with its associated
N * namespace pollution.
N */
N#define	__INO64
N
N#if defined(__TI_COMPILER_VERSION__)
X#if 1L
N#pragma diag_pop
N#endif
N
N#endif /* !_SYS__TYPES_H_ */
L 36 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/sys/stdint.h" 2
N
N#include <machine/_stdint.h>
L 1 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/machine/_stdint.h" 1
N/*-
N * SPDX-License-Identifier: BSD-2-Clause-NetBSD
N *
N * Copyright (c) 2001, 2002 Mike Barcroft <mike@FreeBSD.org>
N * Copyright (c) 2001 The NetBSD Foundation, Inc.
N * All rights reserved.
N *
N * This code is derived from software contributed to The NetBSD Foundation
N * by Klaus Klein.
N *
N * Redistribution and use in source and binary forms, with or without
N * modification, are permitted provided that the following conditions
N * are met:
N * 1. Redistributions of source code must retain the above copyright
N *    notice, this list of conditions and the following disclaimer.
N * 2. Redistributions in binary form must reproduce the above copyright
N *    notice, this list of conditions and the following disclaimer in the
N *    documentation and/or other materials provided with the distribution.
N *
N * THIS SOFTWARE IS PROVIDED BY THE NETBSD FOUNDATION, INC. AND CONTRIBUTORS
N * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
N * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
N * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR CONTRIBUTORS
N * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
N * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
N * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
N * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
N * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
N * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
N * POSSIBILITY OF SUCH DAMAGE.
N *
N * $FreeBSD$
N */
N
N#ifndef _MACHINE__STDINT_H_
N#define	_MACHINE__STDINT_H_
N
N#pragma diag_push
N/* 19.4 is issued for macros that are defined in terms of other macros. */
N#pragma CHECK_MISRA("-19.4")
N
N#if !defined(__cplusplus) || defined(__STDC_CONSTANT_MACROS)
X#if !0L || 0L
N
N#define	INT8_C(c)		(c)
N#define	INT16_C(c)		(c)
N#define	INT32_C(c)		(c)
N#define	INT64_C(c)		(c ## LL)
N
N#define	UINT8_C(c)		(c)
N#define	UINT16_C(c)		(c)
N#define	UINT32_C(c)		(c ## U)
N#define	UINT64_C(c)		(c ## ULL)
N
N#define	INTMAX_C(c)		INT64_C(c)
N#define	UINTMAX_C(c)		UINT64_C(c)
N
N#endif /* !defined(__cplusplus) || defined(__STDC_CONSTANT_MACROS) */
N
N#if !defined(__cplusplus) || defined(__STDC_LIMIT_MACROS)
X#if !0L || 0L
N
N/*
N * ISO/IEC 9899:1999
N * 7.18.2.1 Limits of exact-width integer types
N */
N/* Minimum values of exact-width signed integer types. */
N#define	INT8_MIN	(-0x7f-1)
N#define	INT16_MIN	(-0x7fff-1)
N#define	INT32_MIN	(-0x7fffffff-1)
N#define	INT64_MIN	(-0x7fffffffffffffffLL-1)
N
N/* Maximum values of exact-width signed integer types. */
N#define	INT8_MAX	0x7f
N#define	INT16_MAX	0x7fff
N#define	INT32_MAX	0x7fffffff
N#define	INT64_MAX	0x7fffffffffffffffLL
N
N/* Maximum values of exact-width unsigned integer types. */
N#define	UINT8_MAX	0xff
N#define	UINT16_MAX	0xffff
N#define	UINT32_MAX	0xffffffffU
N#define	UINT64_MAX	0xffffffffffffffffULL
N
N/*
N * ISO/IEC 9899:1999
N * 7.18.2.2  Limits of minimum-width integer types
N */
N/* Minimum values of minimum-width signed integer types. */
N#define	INT_LEAST8_MIN	INT8_MIN
N#define	INT_LEAST16_MIN	INT16_MIN
N#define	INT_LEAST32_MIN	INT32_MIN
N#define	INT_LEAST64_MIN	INT64_MIN
N
N/* Maximum values of minimum-width signed integer types. */
N#define	INT_LEAST8_MAX	INT8_MAX
N#define	INT_LEAST16_MAX	INT16_MAX
N#define	INT_LEAST32_MAX	INT32_MAX
N#define	INT_LEAST64_MAX	INT64_MAX
N
N/* Maximum values of minimum-width unsigned integer types. */
N#define	UINT_LEAST8_MAX	 UINT8_MAX
N#define	UINT_LEAST16_MAX UINT16_MAX
N#define	UINT_LEAST32_MAX UINT32_MAX
N#define	UINT_LEAST64_MAX UINT64_MAX
N
N/*
N * ISO/IEC 9899:1999
N * 7.18.2.3  Limits of fastest minimum-width integer types
N */
N/* Minimum values of fastest minimum-width signed integer types. */
N#define	INT_FAST8_MIN	INT32_MIN
N#define	INT_FAST16_MIN	INT32_MIN
N#define	INT_FAST32_MIN	INT32_MIN
N#define	INT_FAST64_MIN	INT64_MIN
N
N/* Maximum values of fastest minimum-width signed integer types. */
N#define	INT_FAST8_MAX	INT32_MAX
N#define	INT_FAST16_MAX	INT32_MAX
N#define	INT_FAST32_MAX	INT32_MAX
N#define	INT_FAST64_MAX	INT64_MAX
N
N/* Maximum values of fastest minimum-width unsigned integer types. */
N#define	UINT_FAST8_MAX	UINT32_MAX
N#define	UINT_FAST16_MAX	UINT32_MAX
N#define	UINT_FAST32_MAX	UINT32_MAX
N#define	UINT_FAST64_MAX	UINT64_MAX
N
N/*
N * ISO/IEC 9899:1999
N * 7.18.2.4  Limits of integer types capable of holding object pointers
N */
N#define	INTPTR_MIN	INT32_MIN
N#define	INTPTR_MAX	INT32_MAX
N#define	UINTPTR_MAX	UINT32_MAX
N
N/*
N * ISO/IEC 9899:1999
N * 7.18.2.5  Limits of greatest-width integer types
N */
N#define	INTMAX_MIN	INT64_MIN
N#define	INTMAX_MAX	INT64_MAX
N#define	UINTMAX_MAX	UINT64_MAX
N
N/*
N * ISO/IEC 9899:1999
N * 7.18.3  Limits of other integer types
N */
N/* Limits of ptrdiff_t. */
N#define	PTRDIFF_MIN	INT32_MIN
N#define	PTRDIFF_MAX	INT32_MAX
N
N/* Limits of sig_atomic_t. */
N#define	SIG_ATOMIC_MIN	INT32_MIN
N#define	SIG_ATOMIC_MAX	INT32_MAX
N
N/* Limit of size_t. */
N#define	SIZE_MAX	UINT32_MAX
N
N/* Limits of wint_t. */
N#define	WINT_MIN	INT32_MIN
N#define	WINT_MAX	INT32_MAX
N
N#endif /* !defined(__cplusplus) || defined(__STDC_LIMIT_MACROS) */
N
N#pragma diag_pop
N
N#endif /* !_MACHINE__STDINT_H_ */
L 38 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/sys/stdint.h" 2
N#include <sys/_stdint.h>
L 1 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/sys/_stdint.h" 1
N/*-
N * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
N *
N * Copyright (c) 2011 David E. O'Brien <obrien@FreeBSD.org>
N * Copyright (c) 2001 Mike Barcroft <mike@FreeBSD.org>
N * All rights reserved.
N *
N * Redistribution and use in source and binary forms, with or without
N * modification, are permitted provided that the following conditions
N * are met:
N * 1. Redistributions of source code must retain the above copyright
N *    notice, this list of conditions and the following disclaimer.
N * 2. Redistributions in binary form must reproduce the above copyright
N *    notice, this list of conditions and the following disclaimer in the
N *    documentation and/or other materials provided with the distribution.
N *
N * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
N * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
N * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
N * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
N * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
N * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
N * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
N * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
N * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
N * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
N * SUCH DAMAGE.
N *
N * $FreeBSD$
N */
N
N#ifndef _SYS__STDINT_H_
N#define _SYS__STDINT_H_
N
N#ifndef _INT8_T_DECLARED
Ntypedef	__int8_t		int8_t;
N#define	_INT8_T_DECLARED
N#endif
N
N#ifndef _INT16_T_DECLARED
Ntypedef	__int16_t		int16_t;
N#define	_INT16_T_DECLARED
N#endif
N
N#ifndef _INT32_T_DECLARED
Ntypedef	__int32_t		int32_t;
N#define	_INT32_T_DECLARED
N#endif
N
N#ifndef _INT64_T_DECLARED
Ntypedef	__int64_t		int64_t;
N#define	_INT64_T_DECLARED
N#endif
N
N#ifndef _UINT8_T_DECLARED
Ntypedef	__uint8_t		uint8_t;
N#define	_UINT8_T_DECLARED
N#endif
N
N#ifndef _UINT16_T_DECLARED
Ntypedef	__uint16_t		uint16_t;
N#define	_UINT16_T_DECLARED
N#endif
N
N#ifndef _UINT32_T_DECLARED
Ntypedef	__uint32_t		uint32_t;
N#define	_UINT32_T_DECLARED
N#endif
N
N#ifndef _UINT64_T_DECLARED
Ntypedef	__uint64_t		uint64_t;
N#define	_UINT64_T_DECLARED
N#endif
N
N#ifndef _INTPTR_T_DECLARED
Ntypedef	__intptr_t		intptr_t;
N#define	_INTPTR_T_DECLARED
N#endif
N#ifndef _UINTPTR_T_DECLARED
Ntypedef	__uintptr_t		uintptr_t;
N#define	_UINTPTR_T_DECLARED
N#endif
N#ifndef _INTMAX_T_DECLARED
Ntypedef	__intmax_t		intmax_t;
N#define	_INTMAX_T_DECLARED
N#endif
N#ifndef _UINTMAX_T_DECLARED
Ntypedef	__uintmax_t		uintmax_t;
N#define	_UINTMAX_T_DECLARED
N#endif
N
N#endif /* !_SYS__STDINT_H_ */
L 39 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/sys/stdint.h" 2
N
Ntypedef	__int_least8_t		int_least8_t;
Ntypedef	__int_least16_t		int_least16_t;
Ntypedef	__int_least32_t		int_least32_t;
Ntypedef	__int_least64_t		int_least64_t;
N
Ntypedef	__uint_least8_t		uint_least8_t;
Ntypedef	__uint_least16_t	uint_least16_t;
Ntypedef	__uint_least32_t	uint_least32_t;
Ntypedef	__uint_least64_t	uint_least64_t;
N
Ntypedef	__int_fast8_t		int_fast8_t;
Ntypedef	__int_fast16_t		int_fast16_t;
Ntypedef	__int_fast32_t		int_fast32_t;
Ntypedef	__int_fast64_t		int_fast64_t;
N
Ntypedef	__uint_fast8_t		uint_fast8_t;
Ntypedef	__uint_fast16_t		uint_fast16_t;
Ntypedef	__uint_fast32_t		uint_fast32_t;
Ntypedef	__uint_fast64_t		uint_fast64_t;
N
N/* GNU and Darwin define this and people seem to think it's portable */
N#if defined(UINTPTR_MAX) && defined(UINT64_MAX) && (UINTPTR_MAX == UINT64_MAX)
X#if 1L && 1L && (0xffffffffU == 0xffffffffffffffffULL)
S#define	__WORDSIZE		64
N#else
N#define	__WORDSIZE		32
N#endif
N
N#pragma diag_push
N#pragma CHECK_MISRA("-19.4")
N/* Limits of wchar_t. */
N#define	WCHAR_MIN	__WCHAR_MIN
N#define	WCHAR_MAX	__WCHAR_MAX
N#pragma diag_pop
N
N#if __EXT1_VISIBLE
X#if 1
N/* ISO/IEC 9899:2011 K.3.4.4 */
N#ifndef RSIZE_MAX
N#define RSIZE_MAX (SIZE_MAX >> 1)
N#endif
N#endif /* __EXT1_VISIBLE */
N
N#endif /* !_SYS_STDINT_H_ */
L 42 "C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.2.LTS/include/stdint.h" 2
N#else
S/* 7.18.1.1 Exact-width integer types */
S
S#if defined(__MSP430__) || defined(__TMS320C55X_PLUS_BYTE__)
S    typedef   signed char    int8_t;
S    typedef unsigned char   uint8_t;
S    typedef          int    int16_t;
S    typedef unsigned int   uint16_t;
S    typedef          long   int32_t;
S    typedef unsigned long  uint32_t;
S#elif defined(_TMS320C5XX) || defined(__TMS320C55X__)
S    typedef          int    int16_t;
S    typedef unsigned int   uint16_t;
S    typedef          long   int32_t;
S    typedef unsigned long  uint32_t;
S#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__ARP32__) || \
S      defined(__PRU__)    || defined(__FROZEN__)
X#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__ARP32__) ||       defined(__PRU__)    || defined(__FROZEN__)
S    typedef   signed char   int8_t;
S    typedef unsigned char  uint8_t;
S    typedef          short  int16_t;
S    typedef unsigned short uint16_t;
S    typedef          int    int32_t;
S    typedef unsigned int   uint32_t;
S#elif defined (__TMS320C2000__)
S#if defined(__TMS320C28XX_CLA__)
S    typedef          short  int16_t;
S    typedef unsigned short uint16_t;
S    typedef          int    int32_t;
S    typedef unsigned int   uint32_t;
S#else
S    typedef          int    int16_t;
S    typedef unsigned int   uint16_t;
S    typedef          long   int32_t;
S    typedef unsigned long  uint32_t;
S#endif
S#endif
S
S#if defined(__TMS320C55X__)
S    typedef          long long  int40_t;
S    typedef unsigned long long uint40_t;
S#elif defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)
S    typedef          __int40_t  int40_t;
S    typedef unsigned __int40_t uint40_t;
S#endif
S
S#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__ARP32__) || \
S    defined(__MSP430__) || defined(__PRU__)    || defined(__FROZEN__)
X#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__ARP32__) ||     defined(__MSP430__) || defined(__PRU__)    || defined(__FROZEN__)
S    typedef          long long  int64_t;
S    typedef unsigned long long uint64_t;
S#elif defined(__TMS320C2000__)
S#if defined(__TMS320C28X__) || \
S    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
X#if defined(__TMS320C28X__) ||     (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
S    typedef          long long  int64_t;
S    typedef unsigned long long uint64_t;
S#endif
S#endif
S
S/* 7.18.1.2 Minimum-width integer types */
S
S#if defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) || \
S    defined(__TMS320C55X_PLUS_BYTE__)          || defined(__ARP32__)  || \
S    defined(__PRU__)    || defined(__FROZEN__)
X#if defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) ||     defined(__TMS320C55X_PLUS_BYTE__)          || defined(__ARP32__)  ||     defined(__PRU__)    || defined(__FROZEN__)
S    typedef  int8_t   int_least8_t;
S    typedef uint8_t  uint_least8_t;
S#elif defined(__TMS320C2000__) || defined(_TMS320C5XX) || defined(__TMS320C55X__)
S    typedef  int16_t  int_least8_t;
S    typedef uint16_t uint_least8_t;
S#endif
S
S    typedef  int16_t  int_least16_t;
S    typedef uint16_t uint_least16_t;
S    typedef  int32_t  int_least32_t;
S    typedef uint32_t uint_least32_t;
S
S#if defined(__TMS320C55X__) || \
S    (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
X#if defined(__TMS320C55X__) ||     (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
S    typedef  int40_t  int_least40_t;
S    typedef uint40_t uint_least40_t;
S#endif
S
S#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) || \
S    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
X#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) ||     defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
S    typedef  int64_t  int_least64_t;
S    typedef uint64_t uint_least64_t;
S#elif defined(__TMS320C2000__)
S#if defined(__TMS320C28X__) || \
S    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
X#if defined(__TMS320C28X__) ||     (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
S    typedef  int64_t  int_least64_t;
S    typedef uint64_t uint_least64_t;
S#else
S/* sorry, [u]int_least64_t not implemented for C27X, CLA */
S#endif
S#elif defined(_TMS320C5XX) || defined(__TMS320C55X__) 
S/* sorry, [u]int_least64_t not implemented for C54x, C55x */
S#endif
S
S/* 7.18.1.3 Fastest minimum-width integer types */
S
S#if defined(_TMS320C5XX) || defined(__TMS320C55X__)  || defined(__MSP430__)
S    typedef  int16_t  int_fast8_t;
S    typedef uint16_t uint_fast8_t;
S    typedef  int16_t  int_fast16_t;
S    typedef uint16_t uint_fast16_t;
S#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__ARP32__) || \
S      defined(__PRU__)    || defined(__FROZEN__)
X#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__ARP32__) ||       defined(__PRU__)    || defined(__FROZEN__)
S    typedef  int32_t  int_fast8_t;
S    typedef uint32_t uint_fast8_t;
S    typedef  int32_t  int_fast16_t;
S    typedef uint32_t uint_fast16_t;
S#elif defined (__TMS320C2000__)
S#if defined(__TMS320C28XX_CLA__)
S    typedef  int32_t  int_fast8_t;
S    typedef uint32_t uint_fast8_t;
S    typedef  int32_t  int_fast16_t;
S    typedef uint32_t uint_fast16_t;
S#else
S    typedef  int16_t  int_fast8_t;
S    typedef uint16_t uint_fast8_t;
S    typedef  int16_t  int_fast16_t;
S    typedef uint16_t uint_fast16_t;
S#endif
S#endif
S
S    typedef  int32_t  int_fast32_t;
S    typedef uint32_t uint_fast32_t;
S
S#if defined(__TMS320C55X__) || \
S    (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
X#if defined(__TMS320C55X__) ||     (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
S    typedef  int40_t  int_fast40_t;
S    typedef uint40_t uint_fast40_t;
S#endif
S
S#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) || \
S    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
X#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) ||     defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
S    typedef  int64_t  int_fast64_t;
S    typedef uint64_t uint_fast64_t;
S#elif defined(__TMS320C2000__)
S#if defined(__TMS320C28X__) || \
S    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
X#if defined(__TMS320C28X__) ||     (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
S    typedef  int64_t  int_fast64_t;
S    typedef uint64_t uint_fast64_t;
S#else
S/* sorry, [u]int_fast64_t not implemented for C27X, CLA */
S#endif
S#elif defined(_TMS320C5XX) || defined(__TMS320C55X__) 
S/* sorry, [u]int_fast64_t not implemented for C54x, C55x */
S#endif
S
S/* 7.18.1.4 Integer types capable of holding object pointers */
S#if defined(_TMS320C5XX) || defined(__TMS320C55X__)        || \
S    (defined(__MSP430__) && defined(__LARGE_CODE_MODEL__)) || \
S    defined(__FROZEN__)
X#if defined(_TMS320C5XX) || defined(__TMS320C55X__)        ||     (defined(__MSP430__) && defined(__LARGE_CODE_MODEL__)) ||     defined(__FROZEN__)
S    typedef          long intptr_t;
S    typedef unsigned long uintptr_t;
S#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) || \
S      defined(__ARP32__)  || defined(__PRU__)
X#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) ||       defined(__ARP32__)  || defined(__PRU__)
S    typedef          int intptr_t;
S    typedef unsigned int uintptr_t;
S#elif defined(__TMS320C2000__)
S#if defined(__TMS320C28XX_CLA__)
S    typedef          short intptr_t;
S    typedef unsigned short uintptr_t;
S#else
S    typedef          long intptr_t;
S    typedef unsigned long uintptr_t;
S#endif
S#endif
S
S/* 7.18.1.5 Greatest-width integer types */
S#if defined(__TMS320C55X__) || defined(__ARM_ARCH) || defined(_TMS320C6X) || \
S    defined(__ARP32__)      || defined(__MSP430__) || defined(__PRU__)    || \
S    defined(__FROZEN__)
X#if defined(__TMS320C55X__) || defined(__ARM_ARCH) || defined(_TMS320C6X) ||     defined(__ARP32__)      || defined(__MSP430__) || defined(__PRU__)    ||     defined(__FROZEN__)
S    typedef          long long intmax_t;
S    typedef unsigned long long uintmax_t;
S#elif defined(_TMS320C5XX)
S    typedef          long intmax_t;
S    typedef unsigned long uintmax_t;
S#elif defined(__TMS320C2000__)
S#if defined(__TMS320C28X__) || \
S    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
X#if defined(__TMS320C28X__) ||     (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
S    typedef          long long intmax_t;
S    typedef unsigned long long uintmax_t;
S#else /* C27X or CLA */
S    typedef          long intmax_t;
S    typedef unsigned long uintmax_t;
S#endif
S#endif
S
S/*
S   According to footnotes in the 1999 C standard, "C++ implementations
S   should define these macros only when __STDC_LIMIT_MACROS is defined
S   before <stdint.h> is included." 
S*/
S#if !defined(__cplusplus) || defined(__STDC_LIMIT_MACROS)
S
S/* 7.18.2 Limits of specified width integer types */
S
S#if defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) || \
S    defined(__TMS320C55X_PLUS_BYTE__)          || defined(__ARP32__)  || \
S    defined(__PRU__)    || defined(__FROZEN__)
X#if defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) ||     defined(__TMS320C55X_PLUS_BYTE__)          || defined(__ARP32__)  ||     defined(__PRU__)    || defined(__FROZEN__)
S    #define  INT8_MAX   0x7f
S    #define  INT8_MIN   (-INT8_MAX-1)
S    #define UINT8_MAX   0xff
S#endif
S
S    #define  INT16_MAX  0x7fff
S    #define  INT16_MIN  (-INT16_MAX-1)
S    #define UINT16_MAX  0xffff
S
S    #define  INT32_MAX  0x7fffffff
S    #define  INT32_MIN  (-INT32_MAX-1)
S    #define UINT32_MAX  0xffffffff
S
S#if defined(__TMS320C55X__) || \
S    (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
X#if defined(__TMS320C55X__) ||     (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
S    #define  INT40_MAX  0x7fffffffff
S    #define  INT40_MIN  (-INT40_MAX-1)
S    #define UINT40_MAX  0xffffffffff
S#endif
S
S#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) || \
S    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
X#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) ||     defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
S    #define  INT64_MAX  0x7fffffffffffffff
S    #define  INT64_MIN  (-INT64_MAX-1)
S    #define UINT64_MAX  0xffffffffffffffff
S#elif defined(__TMS320C2000__)
S#if defined(__TMS320C28X__) || \
S    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
X#if defined(__TMS320C28X__) ||     (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
S    #define  INT64_MAX  0x7fffffffffffffff
S    #define  INT64_MIN  (-INT64_MAX-1)
S    #define UINT64_MAX  0xffffffffffffffff
S#endif
S#endif
S
S#if defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) || \
S    defined(__TMS320C55X_PLUS_BYTE__)          || defined(__ARP32__)  || \
S    defined(__PRU__)    || defined(__FROZEN__)
X#if defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) ||     defined(__TMS320C55X_PLUS_BYTE__)          || defined(__ARP32__)  ||     defined(__PRU__)    || defined(__FROZEN__)
S    #define  INT_LEAST8_MAX   (INT8_MAX)
S    #define  INT_LEAST8_MIN   (INT8_MIN)
S    #define UINT_LEAST8_MAX   (UINT8_MAX)
S#elif defined(__TMS320C2000__) || defined(_TMS320C5XX) || defined(__TMS320C55X__)
S    #define  INT_LEAST8_MAX   (INT16_MAX)
S    #define  INT_LEAST8_MIN   (INT16_MIN)
S    #define UINT_LEAST8_MAX   (UINT16_MAX)
S#endif
S
S    #define  INT_LEAST16_MAX  (INT16_MAX)
S    #define  INT_LEAST16_MIN  (INT16_MIN)
S    #define UINT_LEAST16_MAX  (UINT16_MAX)
S    #define  INT_LEAST32_MAX  (INT32_MAX)
S    #define  INT_LEAST32_MIN  (INT32_MIN)
S    #define UINT_LEAST32_MAX  (UINT32_MAX)
S
S#if defined(__TMS320C55X__) || \
S    (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
X#if defined(__TMS320C55X__) ||     (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
S    #define  INT_LEAST40_MAX  (INT40_MAX)
S    #define  INT_LEAST40_MIN  (INT40_MIN)
S    #define UINT_LEAST40_MAX  (UINT40_MAX)
S#endif
S
S#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) || \
S    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
X#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) ||     defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
S    #define  INT_LEAST64_MAX  (INT64_MAX)
S    #define  INT_LEAST64_MIN  (INT64_MIN)
S    #define UINT_LEAST64_MAX  (UINT64_MAX)
S#elif defined(__TMS320C2000__)
S#if defined(__TMS320C28X__) || \
S    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
X#if defined(__TMS320C28X__) ||     (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
S    #define  INT_LEAST64_MAX  (INT64_MAX)
S    #define  INT_LEAST64_MIN  (INT64_MIN)
S    #define UINT_LEAST64_MAX  (UINT64_MAX)
S#endif
S#endif
S
S#if defined(_TMS320C5XX) || defined(__TMS320C55X__)
S    #define  INT_FAST8_MAX   (INT16_MAX)
S    #define  INT_FAST8_MIN   (INT16_MIN)
S    #define UINT_FAST8_MAX   (UINT16_MAX)
S    #define  INT_FAST16_MAX  (INT16_MAX)
S    #define  INT_FAST16_MIN  (INT16_MIN)
S    #define UINT_FAST16_MAX  (UINT16_MAX)
S#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__ARP32__) || \
S      defined(__PRU__)    || defined(__FROZEN__)
X#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__ARP32__) ||       defined(__PRU__)    || defined(__FROZEN__)
S    #define  INT_FAST8_MAX   (INT32_MAX)
S    #define  INT_FAST8_MIN   (INT32_MIN)
S    #define UINT_FAST8_MAX   (UINT32_MAX)
S    #define  INT_FAST16_MAX  (INT32_MAX)
S    #define  INT_FAST16_MIN  (INT32_MIN)
S    #define UINT_FAST16_MAX  (UINT32_MAX)
S#elif defined(__MSP430__)
S    #define  INT_FAST8_MAX    (INT16_MAX)
S    #define  INT_FAST8_MIN    (INT16_MIN)
S    #define  UINT_FAST8_MAX   (UINT16_MAX)
S    #define  INT_FAST16_MAX   (INT16_MAX)
S    #define  INT_FAST16_MIN   (INT16_MIN)
S    #define  UINT_FAST16_MAX  (UINT16_MAX)
S#elif defined (__TMS320C2000__)
S#if defined(__TMS320C28XX_CLA__)
S    #define  INT_FAST8_MAX   (INT32_MAX)
S    #define  INT_FAST8_MIN   (INT32_MIN)
S    #define UINT_FAST8_MAX   (UINT32_MAX)
S    #define  INT_FAST16_MAX  (INT32_MAX)
S    #define  INT_FAST16_MIN  (INT32_MIN)
S    #define UINT_FAST16_MAX  (UINT32_MAX)
S#else
S    #define  INT_FAST8_MAX   (INT16_MAX)
S    #define  INT_FAST8_MIN   (INT16_MIN)
S    #define UINT_FAST8_MAX   (UINT16_MAX)
S    #define  INT_FAST16_MAX  (INT16_MAX)
S    #define  INT_FAST16_MIN  (INT16_MIN)
S    #define UINT_FAST16_MAX  (UINT16_MAX)
S#endif
S#endif
S
S    #define  INT_FAST32_MAX  (INT32_MAX)
S    #define  INT_FAST32_MIN  (INT32_MIN)
S    #define UINT_FAST32_MAX  (UINT32_MAX)
S
S#if defined(__TMS320C55X__) || \
S    (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
X#if defined(__TMS320C55X__) ||     (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
S    #define  INT_FAST40_MAX  (INT40_MAX)
S    #define  INT_FAST40_MIN  (INT40_MIN)
S    #define UINT_FAST40_MAX  (UINT40_MAX)
S#endif
S
S#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) || \
S    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
X#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) ||     defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
S    #define  INT_FAST64_MAX  (INT64_MAX)
S    #define  INT_FAST64_MIN  (INT64_MIN)
S    #define UINT_FAST64_MAX  (UINT64_MAX)
S#elif defined(__TMS320C2000__)
S#if defined(__TMS320C28X__) || \
S    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
X#if defined(__TMS320C28X__) ||     (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
S    #define  INT_FAST64_MAX  (INT64_MAX)
S    #define  INT_FAST64_MIN  (INT64_MIN)
S    #define UINT_FAST64_MAX  (UINT64_MAX)
S#endif
S#endif
S
S#if defined(__MSP430__) && !defined(__LARGE_CODE_MODEL__)
S    #define INTPTR_MAX   (INT16_MAX)
S    #define INTPTR_MIN   (INT16_MIN)
S    #define UINTPTR_MAX  (UINT16_MAX)
S#elif defined(__FROZEN__)
S    #define INTPTR_MAX   (INT64_MAX)
S    #define INTPTR_MIN   (INT64_MIN)
S    #define UINTPTR_MAX  (UINT64_MAX)
S#else
S    #define INTPTR_MAX   (INT32_MAX)
S    #define INTPTR_MIN   (INT32_MIN)
S    #define UINTPTR_MAX  (UINT32_MAX)
S#endif
S
S#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) || \
S    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
X#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) ||     defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
S    #define INTMAX_MIN   (INT64_MIN)
S    #define INTMAX_MAX   (INT64_MAX)
S    #define UINTMAX_MAX  (UINT64_MAX)
S#elif defined(__TMS320C55X__)
S    #define INTMAX_MIN   (INT40_MIN)
S    #define INTMAX_MAX   (INT40_MAX)
S    #define UINTMAX_MAX  (UINT40_MAX)
S#elif defined(_TMS320C5XX)
S    #define INTMAX_MIN   (INT32_MIN)
S    #define INTMAX_MAX   (INT32_MAX)
S    #define UINTMAX_MAX  (UINT32_MAX)
S#elif defined(__TMS320C2000__)
S#if defined(__TMS320C28X__) || \
S    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
X#if defined(__TMS320C28X__) ||     (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
S    #define INTMAX_MIN   (INT64_MIN)
S    #define INTMAX_MAX   (INT64_MAX)
S    #define UINTMAX_MAX  (UINT64_MAX)
S#else
S    #define INTMAX_MIN   (INT32_MIN)
S    #define INTMAX_MAX   (INT32_MAX)
S    #define UINTMAX_MAX  (UINT32_MAX)
S#endif
S#endif
S
S/* 7.18.3 Limits of other integer types */
S
S#if defined(_TMS320C5XX) || defined(__TMS320C55X__) || \
S    (defined(__MSP430__) && !defined(__LONG_PTRDIFF_T__))
X#if defined(_TMS320C5XX) || defined(__TMS320C55X__) ||     (defined(__MSP430__) && !defined(__LONG_PTRDIFF_T__))
S    #define PTRDIFF_MAX (INT16_MAX)
S    #define PTRDIFF_MIN (INT16_MIN)
S#elif defined(__TMS320C2000__) || defined(__MSP430__) || \
S      (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)) || \
S      defined(__ARM_ARCH)      || defined(__ARP32__) || defined(__PRU__)
X#elif defined(__TMS320C2000__) || defined(__MSP430__) ||       (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)) ||       defined(__ARM_ARCH)      || defined(__ARP32__) || defined(__PRU__)
S    #define PTRDIFF_MAX (INT32_MAX)
S    #define PTRDIFF_MIN (INT32_MIN)
S#elif defined(__FROZEN__)
S    #define PTRDIFF_MAX (INT64_MAX)
S    #define PTRDIFF_MIN (INT64_MIN)
S#endif
S
S#if defined(_TMS320C5XX) || defined(__TMS320C55X__) || defined(__MSP430__)
S    #define SIG_ATOMIC_MIN (INT16_MIN)
S    #define SIG_ATOMIC_MAX (INT16_MAX)
S#elif defined(__TMS320C2000__) || defined(_TMS320C6X) || defined(__FROZEN__) || \
S      defined(__ARM_ARCH)      || defined(__ARP32__)  || defined(__PRU__)
X#elif defined(__TMS320C2000__) || defined(_TMS320C6X) || defined(__FROZEN__) ||       defined(__ARM_ARCH)      || defined(__ARP32__)  || defined(__PRU__)
S    #define SIG_ATOMIC_MIN (INT32_MIN)
S    #define SIG_ATOMIC_MAX (INT32_MAX)
S#endif
S
S#if defined(_TMS320C5XX) || defined(__TMS320C55X__) || \
S    (defined(__MSP430__) && !defined(__LONG_PTRDIFF_T__))
X#if defined(_TMS320C5XX) || defined(__TMS320C55X__) ||     (defined(__MSP430__) && !defined(__LONG_PTRDIFF_T__))
S    #define SIZE_MAX (UINT16_MAX)
S#elif defined(__TMS320C2000__) || defined(__MSP430__) || \
S      (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)) || \
S      defined(__ARM_ARCH)      || defined(__ARP32__)  || defined(__PRU__)
X#elif defined(__TMS320C2000__) || defined(__MSP430__) ||       (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)) ||       defined(__ARM_ARCH)      || defined(__ARP32__)  || defined(__PRU__)
S    #define SIZE_MAX (UINT32_MAX)
S#elif defined(__FROZEN__)
S    #define SIZE_MAX (UINT64_MAX)
S#endif
S
S#ifndef WCHAR_MAX
S#if !defined(__TI_WCHAR_T_BITS__) || __TI_WCHAR_T_BITS__ == 16
S#define WCHAR_MAX 0xffffu
S#else 
S#define WCHAR_MAX 0xffffffffu
S#endif
S#endif
S
S#ifndef WCHAR_MIN
S#define WCHAR_MIN 0
S#endif
S
S#if defined(_TMS320C5XX) || defined(__TMS320C55X__) || defined(__MSP430__)
S    #define WINT_MIN (INT16_MIN)
S    #define WINT_MAX (INT16_MAX)
S#elif defined(__TMS320C2000__) || defined(_TMS320C6X) || defined(__FROZEN__) || \
S      defined(__ARM_ARCH)      || defined(__ARP32__)  || defined(__PRU__)
X#elif defined(__TMS320C2000__) || defined(_TMS320C6X) || defined(__FROZEN__) ||       defined(__ARM_ARCH)      || defined(__ARP32__)  || defined(__PRU__)
S    #define WINT_MIN (INT32_MIN)
S    #define WINT_MAX (INT32_MAX)
S#endif
S
S/* 7.18.4.1 Macros for minimum-width integer constants */
S
S/*
S   There is a defect report filed against the C99 standard concerning how 
S   the (U)INTN_C macros should be implemented.  Please refer to --
S   http://wwwold.dkuug.dk/JTC1/SC22/WG14/www/docs/dr_209.htm 
S   for more information.  These macros are implemented according to the
S   suggestion given at this web site.
S*/
S
S    #define  INT8_C(value)  ((int_least8_t)(value))
S    #define UINT8_C(value)  ((uint_least8_t)(value))
S    #define  INT16_C(value) ((int_least16_t)(value))
S    #define UINT16_C(value) ((uint_least16_t)(value))
S    #define  INT32_C(value) ((int_least32_t)(value))
S    #define UINT32_C(value) ((uint_least32_t)(value))
S
S#if defined(__TMS320C55X__) || \
S    (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
X#if defined(__TMS320C55X__) ||     (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__))
S    #define  INT40_C(value) ((int_least40_t)(value))
S    #define UINT40_C(value) ((uint_least40_t)(value))
S#endif
S
S#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) || \
S    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
X#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__FROZEN__) ||     defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
S    #define  INT64_C(value) ((int_least64_t)(value))
S    #define UINT64_C(value) ((uint_least64_t)(value))
S#elif defined(__TMS320C2000__)
S#if defined(__TMS320C28X__) || \
S    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
X#if defined(__TMS320C28X__) ||     (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
S    #define  INT64_C(value) ((int_least64_t)(value))
S    #define UINT64_C(value) ((uint_least64_t)(value))
S#endif
S#endif
S
S/* 7.18.4.2 Macros for greatest-width integer constants */
S
S    #define  INTMAX_C(value) ((intmax_t)(value))
S    #define UINTMAX_C(value) ((uintmax_t)(value))
S
S#endif /* !defined(__cplusplus) || defined(__STDC_LIMIT_MACROS) */
N#endif
N#endif /* _STDINT_H_ */
L 6 "..\i2c\i2c.h" 2
N#include "tm4c123gh6pm.h"
L 1 "E:/c_composer_workspace/tiva_c_dynamic_drivers/General/tm4c123gh6pm.h" 1
N//******************************************************* **********************
N//
N// tm4c123gh6pm.h - TM4C123GH6PM Register Definitions
N//
N// Copyright (c) 2013 Texas Instruments Incorporated.  All rights reserved.
N// Software License Agreement
N// 
N//   Redistribution and use in source and binary forms, with or without
N//   modification, are permitted provided that the following conditions
N//   are met:
N// 
N//   Redistributions of source code must retain the above copyright
N//   notice, this list of conditions and the following disclaimer.
N// 
N//   Redistributions in binary form must reproduce the above copyright
N//   notice, this list of conditions and the following disclaimer in the
N//   documentation and/or other materials provided with the  
N//   distribution.
N// 
N//   Neither the name of Texas Instruments Incorporated nor the names of
N//   its contributors may be used to endorse or promote products derived
N//   from this software without specific prior written permission.
N// 
N// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
N// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
N// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
N// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
N// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
N// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
N// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
N// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
N// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
N// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
N// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
N// 
N// This is part of revision 1.0 of the Tiva Firmware Development Package.
N//
N//*****************************************************************************
N
N#ifndef __TM4C123GH6PM_H__
N#define __TM4C123GH6PM_H__
N
N//*****************************************************************************
N//
N// Interrupt assignments
N//
N//*****************************************************************************
N#define INT_GPIOA               16          // GPIO Port A
N#define INT_GPIOB               17          // GPIO Port B
N#define INT_GPIOC               18          // GPIO Port C
N#define INT_GPIOD               19          // GPIO Port D
N#define INT_GPIOE               20          // GPIO Port E
N#define INT_UART0               21          // UART0
N#define INT_UART1               22          // UART1
N#define INT_SSI0                23          // SSI0
N#define INT_I2C0                24          // I2C0
N#define INT_PWM0_FAULT          25          // PWM0 Fault
N#define INT_PWM0_0              26          // PWM0 Generator 0
N#define INT_PWM0_1              27          // PWM0 Generator 1
N#define INT_PWM0_2              28          // PWM0 Generator 2
N#define INT_QEI0                29          // QEI0
N#define INT_ADC0SS0             30          // ADC0 Sequence 0
N#define INT_ADC0SS1             31          // ADC0 Sequence 1
N#define INT_ADC0SS2             32          // ADC0 Sequence 2
N#define INT_ADC0SS3             33          // ADC0 Sequence 3
N#define INT_WATCHDOG            34          // Watchdog Timers 0 and 1
N#define INT_TIMER0A             35          // 16/32-Bit Timer 0A
N#define INT_TIMER0B             36          // 16/32-Bit Timer 0B
N#define INT_TIMER1A             37          // 16/32-Bit Timer 1A
N#define INT_TIMER1B             38          // 16/32-Bit Timer 1B
N#define INT_TIMER2A             39          // 16/32-Bit Timer 2A
N#define INT_TIMER2B             40          // 16/32-Bit Timer 2B
N#define INT_COMP0               41          // Analog Comparator 0
N#define INT_COMP1               42          // Analog Comparator 1
N#define INT_SYSCTL              44          // System Control
N#define INT_FLASH               45          // Flash Memory Control and EEPROM
N                                            // Control
N#define INT_GPIOF               46          // GPIO Port F
N#define INT_UART2               49          // UART2
N#define INT_SSI1                50          // SSI1
N#define INT_TIMER3A             51          // Timer 3A
N#define INT_TIMER3B             52          // Timer 3B
N#define INT_I2C1                53          // I2C1
N#define INT_QEI1                54          // QEI1
N#define INT_CAN0                55          // CAN0
N#define INT_CAN1                56          // CAN1
N#define INT_HIBERNATE           59          // Hibernation Module
N#define INT_USB0                60          // USB
N#define INT_PWM0_3              61          // PWM Generator 3
N#define INT_UDMA                62          // uDMA Software
N#define INT_UDMAERR             63          // uDMA Error
N#define INT_ADC1SS0             64          // ADC1 Sequence 0
N#define INT_ADC1SS1             65          // ADC1 Sequence 1
N#define INT_ADC1SS2             66          // ADC1 Sequence 2
N#define INT_ADC1SS3             67          // ADC1 Sequence 3
N#define INT_SSI2                73          // SSI2
N#define INT_SSI3                74          // SSI3
N#define INT_UART3               75          // UART3
N#define INT_UART4               76          // UART4
N#define INT_UART5               77          // UART5
N#define INT_UART6               78          // UART6
N#define INT_UART7               79          // UART7
N#define INT_I2C2                84          // I2C2
N#define INT_I2C3                85          // I2C3
N#define INT_TIMER4A             86          // 16/32-Bit Timer 4A
N#define INT_TIMER4B             87          // 16/32-Bit Timer 4B
N#define INT_TIMER5A             108         // 16/32-Bit Timer 5A
N#define INT_TIMER5B             109         // 16/32-Bit Timer 5B
N#define INT_WTIMER0A            110         // 32/64-Bit Timer 0A
N#define INT_WTIMER0B            111         // 32/64-Bit Timer 0B
N#define INT_WTIMER1A            112         // 32/64-Bit Timer 1A
N#define INT_WTIMER1B            113         // 32/64-Bit Timer 1B
N#define INT_WTIMER2A            114         // 32/64-Bit Timer 2A
N#define INT_WTIMER2B            115         // 32/64-Bit Timer 2B
N#define INT_WTIMER3A            116         // 32/64-Bit Timer 3A
N#define INT_WTIMER3B            117         // 32/64-Bit Timer 3B
N#define INT_WTIMER4A            118         // 32/64-Bit Timer 4A
N#define INT_WTIMER4B            119         // 32/64-Bit Timer 4B
N#define INT_WTIMER5A            120         // 32/64-Bit Timer 5A
N#define INT_WTIMER5B            121         // 32/64-Bit Timer 5B
N#define INT_SYSEXC              122         // System Exception (imprecise)
N#define INT_PWM1_0              150         // PWM1 Generator 0
N#define INT_PWM1_1              151         // PWM1 Generator 1
N#define INT_PWM1_2              152         // PWM1 Generator 2
N#define INT_PWM1_3              153         // PWM1 Generator 3
N#define INT_PWM1_FAULT          154         // PWM1 Fault
N
N//*****************************************************************************
N//
N// Watchdog Timer registers (WATCHDOG0)
N//
N//*****************************************************************************
N#define WATCHDOG0_LOAD_R        (*((volatile unsigned long *)0x40000000))
N#define WATCHDOG0_VALUE_R       (*((volatile unsigned long *)0x40000004))
N#define WATCHDOG0_CTL_R         (*((volatile unsigned long *)0x40000008))
N#define WATCHDOG0_ICR_R         (*((volatile unsigned long *)0x4000000C))
N#define WATCHDOG0_RIS_R         (*((volatile unsigned long *)0x40000010))
N#define WATCHDOG0_MIS_R         (*((volatile unsigned long *)0x40000014))
N#define WATCHDOG0_TEST_R        (*((volatile unsigned long *)0x40000418))
N#define WATCHDOG0_LOCK_R        (*((volatile unsigned long *)0x40000C00))
N
N//*****************************************************************************
N//
N// Watchdog Timer registers (WATCHDOG1)
N//
N//*****************************************************************************
N#define WATCHDOG1_LOAD_R        (*((volatile unsigned long *)0x40001000))
N#define WATCHDOG1_VALUE_R       (*((volatile unsigned long *)0x40001004))
N#define WATCHDOG1_CTL_R         (*((volatile unsigned long *)0x40001008))
N#define WATCHDOG1_ICR_R         (*((volatile unsigned long *)0x4000100C))
N#define WATCHDOG1_RIS_R         (*((volatile unsigned long *)0x40001010))
N#define WATCHDOG1_MIS_R         (*((volatile unsigned long *)0x40001014))
N#define WATCHDOG1_TEST_R        (*((volatile unsigned long *)0x40001418))
N#define WATCHDOG1_LOCK_R        (*((volatile unsigned long *)0x40001C00))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTA)
N//
N//*****************************************************************************
N#define GPIO_PORTA_DATA_BITS_R  ((volatile unsigned long *)0x40004000)
N#define GPIO_PORTA_DATA_R       (*((volatile unsigned long *)0x400043FC))
N#define GPIO_PORTA_DIR_R        (*((volatile unsigned long *)0x40004400))
N#define GPIO_PORTA_IS_R         (*((volatile unsigned long *)0x40004404))
N#define GPIO_PORTA_IBE_R        (*((volatile unsigned long *)0x40004408))
N#define GPIO_PORTA_IEV_R        (*((volatile unsigned long *)0x4000440C))
N#define GPIO_PORTA_IM_R         (*((volatile unsigned long *)0x40004410))
N#define GPIO_PORTA_RIS_R        (*((volatile unsigned long *)0x40004414))
N#define GPIO_PORTA_MIS_R        (*((volatile unsigned long *)0x40004418))
N#define GPIO_PORTA_ICR_R        (*((volatile unsigned long *)0x4000441C))
N#define GPIO_PORTA_AFSEL_R      (*((volatile unsigned long *)0x40004420))
N#define GPIO_PORTA_DR2R_R       (*((volatile unsigned long *)0x40004500))
N#define GPIO_PORTA_DR4R_R       (*((volatile unsigned long *)0x40004504))
N#define GPIO_PORTA_DR8R_R       (*((volatile unsigned long *)0x40004508))
N#define GPIO_PORTA_ODR_R        (*((volatile unsigned long *)0x4000450C))
N#define GPIO_PORTA_PUR_R        (*((volatile unsigned long *)0x40004510))
N#define GPIO_PORTA_PDR_R        (*((volatile unsigned long *)0x40004514))
N#define GPIO_PORTA_SLR_R        (*((volatile unsigned long *)0x40004518))
N#define GPIO_PORTA_DEN_R        (*((volatile unsigned long *)0x4000451C))
N#define GPIO_PORTA_LOCK_R       (*((volatile unsigned long *)0x40004520))
N#define GPIO_PORTA_CR_R         (*((volatile unsigned long *)0x40004524))
N#define GPIO_PORTA_AMSEL_R      (*((volatile unsigned long *)0x40004528))
N#define GPIO_PORTA_PCTL_R       (*((volatile unsigned long *)0x4000452C))
N#define GPIO_PORTA_ADCCTL_R     (*((volatile unsigned long *)0x40004530))
N#define GPIO_PORTA_DMACTL_R     (*((volatile unsigned long *)0x40004534))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTB)
N//
N//*****************************************************************************
N#define GPIO_PORTB_DATA_BITS_R  ((volatile unsigned long *)0x40005000)
N#define GPIO_PORTB_DATA_R       (*((volatile unsigned long *)0x400053FC))
N#define GPIO_PORTB_DIR_R        (*((volatile unsigned long *)0x40005400))
N#define GPIO_PORTB_IS_R         (*((volatile unsigned long *)0x40005404))
N#define GPIO_PORTB_IBE_R        (*((volatile unsigned long *)0x40005408))
N#define GPIO_PORTB_IEV_R        (*((volatile unsigned long *)0x4000540C))
N#define GPIO_PORTB_IM_R         (*((volatile unsigned long *)0x40005410))
N#define GPIO_PORTB_RIS_R        (*((volatile unsigned long *)0x40005414))
N#define GPIO_PORTB_MIS_R        (*((volatile unsigned long *)0x40005418))
N#define GPIO_PORTB_ICR_R        (*((volatile unsigned long *)0x4000541C))
N#define GPIO_PORTB_AFSEL_R      (*((volatile unsigned long *)0x40005420))
N#define GPIO_PORTB_DR2R_R       (*((volatile unsigned long *)0x40005500))
N#define GPIO_PORTB_DR4R_R       (*((volatile unsigned long *)0x40005504))
N#define GPIO_PORTB_DR8R_R       (*((volatile unsigned long *)0x40005508))
N#define GPIO_PORTB_ODR_R        (*((volatile unsigned long *)0x4000550C))
N#define GPIO_PORTB_PUR_R        (*((volatile unsigned long *)0x40005510))
N#define GPIO_PORTB_PDR_R        (*((volatile unsigned long *)0x40005514))
N#define GPIO_PORTB_SLR_R        (*((volatile unsigned long *)0x40005518))
N#define GPIO_PORTB_DEN_R        (*((volatile unsigned long *)0x4000551C))
N#define GPIO_PORTB_LOCK_R       (*((volatile unsigned long *)0x40005520))
N#define GPIO_PORTB_CR_R         (*((volatile unsigned long *)0x40005524))
N#define GPIO_PORTB_AMSEL_R      (*((volatile unsigned long *)0x40005528))
N#define GPIO_PORTB_PCTL_R       (*((volatile unsigned long *)0x4000552C))
N#define GPIO_PORTB_ADCCTL_R     (*((volatile unsigned long *)0x40005530))
N#define GPIO_PORTB_DMACTL_R     (*((volatile unsigned long *)0x40005534))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTC)
N//
N//*****************************************************************************
N#define GPIO_PORTC_DATA_BITS_R  ((volatile unsigned long *)0x40006000)
N#define GPIO_PORTC_DATA_R       (*((volatile unsigned long *)0x400063FC))
N#define GPIO_PORTC_DIR_R        (*((volatile unsigned long *)0x40006400))
N#define GPIO_PORTC_IS_R         (*((volatile unsigned long *)0x40006404))
N#define GPIO_PORTC_IBE_R        (*((volatile unsigned long *)0x40006408))
N#define GPIO_PORTC_IEV_R        (*((volatile unsigned long *)0x4000640C))
N#define GPIO_PORTC_IM_R         (*((volatile unsigned long *)0x40006410))
N#define GPIO_PORTC_RIS_R        (*((volatile unsigned long *)0x40006414))
N#define GPIO_PORTC_MIS_R        (*((volatile unsigned long *)0x40006418))
N#define GPIO_PORTC_ICR_R        (*((volatile unsigned long *)0x4000641C))
N#define GPIO_PORTC_AFSEL_R      (*((volatile unsigned long *)0x40006420))
N#define GPIO_PORTC_DR2R_R       (*((volatile unsigned long *)0x40006500))
N#define GPIO_PORTC_DR4R_R       (*((volatile unsigned long *)0x40006504))
N#define GPIO_PORTC_DR8R_R       (*((volatile unsigned long *)0x40006508))
N#define GPIO_PORTC_ODR_R        (*((volatile unsigned long *)0x4000650C))
N#define GPIO_PORTC_PUR_R        (*((volatile unsigned long *)0x40006510))
N#define GPIO_PORTC_PDR_R        (*((volatile unsigned long *)0x40006514))
N#define GPIO_PORTC_SLR_R        (*((volatile unsigned long *)0x40006518))
N#define GPIO_PORTC_DEN_R        (*((volatile unsigned long *)0x4000651C))
N#define GPIO_PORTC_LOCK_R       (*((volatile unsigned long *)0x40006520))
N#define GPIO_PORTC_CR_R         (*((volatile unsigned long *)0x40006524))
N#define GPIO_PORTC_AMSEL_R      (*((volatile unsigned long *)0x40006528))
N#define GPIO_PORTC_PCTL_R       (*((volatile unsigned long *)0x4000652C))
N#define GPIO_PORTC_ADCCTL_R     (*((volatile unsigned long *)0x40006530))
N#define GPIO_PORTC_DMACTL_R     (*((volatile unsigned long *)0x40006534))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTD)
N//
N//*****************************************************************************
N#define GPIO_PORTD_DATA_BITS_R  ((volatile unsigned long *)0x40007000)
N#define GPIO_PORTD_DATA_R       (*((volatile unsigned long *)0x400073FC))
N#define GPIO_PORTD_DIR_R        (*((volatile unsigned long *)0x40007400))
N#define GPIO_PORTD_IS_R         (*((volatile unsigned long *)0x40007404))
N#define GPIO_PORTD_IBE_R        (*((volatile unsigned long *)0x40007408))
N#define GPIO_PORTD_IEV_R        (*((volatile unsigned long *)0x4000740C))
N#define GPIO_PORTD_IM_R         (*((volatile unsigned long *)0x40007410))
N#define GPIO_PORTD_RIS_R        (*((volatile unsigned long *)0x40007414))
N#define GPIO_PORTD_MIS_R        (*((volatile unsigned long *)0x40007418))
N#define GPIO_PORTD_ICR_R        (*((volatile unsigned long *)0x4000741C))
N#define GPIO_PORTD_AFSEL_R      (*((volatile unsigned long *)0x40007420))
N#define GPIO_PORTD_DR2R_R       (*((volatile unsigned long *)0x40007500))
N#define GPIO_PORTD_DR4R_R       (*((volatile unsigned long *)0x40007504))
N#define GPIO_PORTD_DR8R_R       (*((volatile unsigned long *)0x40007508))
N#define GPIO_PORTD_ODR_R        (*((volatile unsigned long *)0x4000750C))
N#define GPIO_PORTD_PUR_R        (*((volatile unsigned long *)0x40007510))
N#define GPIO_PORTD_PDR_R        (*((volatile unsigned long *)0x40007514))
N#define GPIO_PORTD_SLR_R        (*((volatile unsigned long *)0x40007518))
N#define GPIO_PORTD_DEN_R        (*((volatile unsigned long *)0x4000751C))
N#define GPIO_PORTD_LOCK_R       (*((volatile unsigned long *)0x40007520))
N#define GPIO_PORTD_CR_R         (*((volatile unsigned long *)0x40007524))
N#define GPIO_PORTD_AMSEL_R      (*((volatile unsigned long *)0x40007528))
N#define GPIO_PORTD_PCTL_R       (*((volatile unsigned long *)0x4000752C))
N#define GPIO_PORTD_ADCCTL_R     (*((volatile unsigned long *)0x40007530))
N#define GPIO_PORTD_DMACTL_R     (*((volatile unsigned long *)0x40007534))
N
N//*****************************************************************************
N//
N// SSI registers (SSI0)
N//
N//*****************************************************************************
N#define SSI0_CR0_R              (*((volatile unsigned long *)0x40008000))
N#define SSI0_CR1_R              (*((volatile unsigned long *)0x40008004))
N#define SSI0_DR_R               (*((volatile unsigned long *)0x40008008))
N#define SSI0_SR_R               (*((volatile unsigned long *)0x4000800C))
N#define SSI0_CPSR_R             (*((volatile unsigned long *)0x40008010))
N#define SSI0_IM_R               (*((volatile unsigned long *)0x40008014))
N#define SSI0_RIS_R              (*((volatile unsigned long *)0x40008018))
N#define SSI0_MIS_R              (*((volatile unsigned long *)0x4000801C))
N#define SSI0_ICR_R              (*((volatile unsigned long *)0x40008020))
N#define SSI0_DMACTL_R           (*((volatile unsigned long *)0x40008024))
N#define SSI0_CC_R               (*((volatile unsigned long *)0x40008FC8))
N
N//*****************************************************************************
N//
N// SSI registers (SSI1)
N//
N//*****************************************************************************
N#define SSI1_CR0_R              (*((volatile unsigned long *)0x40009000))
N#define SSI1_CR1_R              (*((volatile unsigned long *)0x40009004))
N#define SSI1_DR_R               (*((volatile unsigned long *)0x40009008))
N#define SSI1_SR_R               (*((volatile unsigned long *)0x4000900C))
N#define SSI1_CPSR_R             (*((volatile unsigned long *)0x40009010))
N#define SSI1_IM_R               (*((volatile unsigned long *)0x40009014))
N#define SSI1_RIS_R              (*((volatile unsigned long *)0x40009018))
N#define SSI1_MIS_R              (*((volatile unsigned long *)0x4000901C))
N#define SSI1_ICR_R              (*((volatile unsigned long *)0x40009020))
N#define SSI1_DMACTL_R           (*((volatile unsigned long *)0x40009024))
N#define SSI1_CC_R               (*((volatile unsigned long *)0x40009FC8))
N
N//*****************************************************************************
N//
N// SSI registers (SSI2)
N//
N//*****************************************************************************
N#define SSI2_CR0_R              (*((volatile unsigned long *)0x4000A000))
N#define SSI2_CR1_R              (*((volatile unsigned long *)0x4000A004))
N#define SSI2_DR_R               (*((volatile unsigned long *)0x4000A008))
N#define SSI2_SR_R               (*((volatile unsigned long *)0x4000A00C))
N#define SSI2_CPSR_R             (*((volatile unsigned long *)0x4000A010))
N#define SSI2_IM_R               (*((volatile unsigned long *)0x4000A014))
N#define SSI2_RIS_R              (*((volatile unsigned long *)0x4000A018))
N#define SSI2_MIS_R              (*((volatile unsigned long *)0x4000A01C))
N#define SSI2_ICR_R              (*((volatile unsigned long *)0x4000A020))
N#define SSI2_DMACTL_R           (*((volatile unsigned long *)0x4000A024))
N#define SSI2_CC_R               (*((volatile unsigned long *)0x4000AFC8))
N
N//*****************************************************************************
N//
N// SSI registers (SSI3)
N//
N//*****************************************************************************
N#define SSI3_CR0_R              (*((volatile unsigned long *)0x4000B000))
N#define SSI3_CR1_R              (*((volatile unsigned long *)0x4000B004))
N#define SSI3_DR_R               (*((volatile unsigned long *)0x4000B008))
N#define SSI3_SR_R               (*((volatile unsigned long *)0x4000B00C))
N#define SSI3_CPSR_R             (*((volatile unsigned long *)0x4000B010))
N#define SSI3_IM_R               (*((volatile unsigned long *)0x4000B014))
N#define SSI3_RIS_R              (*((volatile unsigned long *)0x4000B018))
N#define SSI3_MIS_R              (*((volatile unsigned long *)0x4000B01C))
N#define SSI3_ICR_R              (*((volatile unsigned long *)0x4000B020))
N#define SSI3_DMACTL_R           (*((volatile unsigned long *)0x4000B024))
N#define SSI3_CC_R               (*((volatile unsigned long *)0x4000BFC8))
N
N//*****************************************************************************
N//
N// UART registers (UART0)
N//
N//*****************************************************************************
N#define UART0_DR_R              (*((volatile unsigned long *)0x4000C000))
N#define UART0_RSR_R             (*((volatile unsigned long *)0x4000C004))
N#define UART0_ECR_R             (*((volatile unsigned long *)0x4000C004))
N#define UART0_FR_R              (*((volatile unsigned long *)0x4000C018))
N#define UART0_ILPR_R            (*((volatile unsigned long *)0x4000C020))
N#define UART0_IBRD_R            (*((volatile unsigned long *)0x4000C024))
N#define UART0_FBRD_R            (*((volatile unsigned long *)0x4000C028))
N#define UART0_LCRH_R            (*((volatile unsigned long *)0x4000C02C))
N#define UART0_CTL_R             (*((volatile unsigned long *)0x4000C030))
N#define UART0_IFLS_R            (*((volatile unsigned long *)0x4000C034))
N#define UART0_IM_R              (*((volatile unsigned long *)0x4000C038))
N#define UART0_RIS_R             (*((volatile unsigned long *)0x4000C03C))
N#define UART0_MIS_R             (*((volatile unsigned long *)0x4000C040))
N#define UART0_ICR_R             (*((volatile unsigned long *)0x4000C044))
N#define UART0_DMACTL_R          (*((volatile unsigned long *)0x4000C048))
N#define UART0_9BITADDR_R        (*((volatile unsigned long *)0x4000C0A4))
N#define UART0_9BITAMASK_R       (*((volatile unsigned long *)0x4000C0A8))
N#define UART0_PP_R              (*((volatile unsigned long *)0x4000CFC0))
N#define UART0_CC_R              (*((volatile unsigned long *)0x4000CFC8))
N
N//*****************************************************************************
N//
N// UART registers (UART1)
N//
N//*****************************************************************************
N#define UART1_DR_R              (*((volatile unsigned long *)0x4000D000))
N#define UART1_RSR_R             (*((volatile unsigned long *)0x4000D004))
N#define UART1_ECR_R             (*((volatile unsigned long *)0x4000D004))
N#define UART1_FR_R              (*((volatile unsigned long *)0x4000D018))
N#define UART1_ILPR_R            (*((volatile unsigned long *)0x4000D020))
N#define UART1_IBRD_R            (*((volatile unsigned long *)0x4000D024))
N#define UART1_FBRD_R            (*((volatile unsigned long *)0x4000D028))
N#define UART1_LCRH_R            (*((volatile unsigned long *)0x4000D02C))
N#define UART1_CTL_R             (*((volatile unsigned long *)0x4000D030))
N#define UART1_IFLS_R            (*((volatile unsigned long *)0x4000D034))
N#define UART1_IM_R              (*((volatile unsigned long *)0x4000D038))
N#define UART1_RIS_R             (*((volatile unsigned long *)0x4000D03C))
N#define UART1_MIS_R             (*((volatile unsigned long *)0x4000D040))
N#define UART1_ICR_R             (*((volatile unsigned long *)0x4000D044))
N#define UART1_DMACTL_R          (*((volatile unsigned long *)0x4000D048))
N#define UART1_9BITADDR_R        (*((volatile unsigned long *)0x4000D0A4))
N#define UART1_9BITAMASK_R       (*((volatile unsigned long *)0x4000D0A8))
N#define UART1_PP_R              (*((volatile unsigned long *)0x4000DFC0))
N#define UART1_CC_R              (*((volatile unsigned long *)0x4000DFC8))
N
N//*****************************************************************************
N//
N// UART registers (UART2)
N//
N//*****************************************************************************
N#define UART2_DR_R              (*((volatile unsigned long *)0x4000E000))
N#define UART2_RSR_R             (*((volatile unsigned long *)0x4000E004))
N#define UART2_ECR_R             (*((volatile unsigned long *)0x4000E004))
N#define UART2_FR_R              (*((volatile unsigned long *)0x4000E018))
N#define UART2_ILPR_R            (*((volatile unsigned long *)0x4000E020))
N#define UART2_IBRD_R            (*((volatile unsigned long *)0x4000E024))
N#define UART2_FBRD_R            (*((volatile unsigned long *)0x4000E028))
N#define UART2_LCRH_R            (*((volatile unsigned long *)0x4000E02C))
N#define UART2_CTL_R             (*((volatile unsigned long *)0x4000E030))
N#define UART2_IFLS_R            (*((volatile unsigned long *)0x4000E034))
N#define UART2_IM_R              (*((volatile unsigned long *)0x4000E038))
N#define UART2_RIS_R             (*((volatile unsigned long *)0x4000E03C))
N#define UART2_MIS_R             (*((volatile unsigned long *)0x4000E040))
N#define UART2_ICR_R             (*((volatile unsigned long *)0x4000E044))
N#define UART2_DMACTL_R          (*((volatile unsigned long *)0x4000E048))
N#define UART2_9BITADDR_R        (*((volatile unsigned long *)0x4000E0A4))
N#define UART2_9BITAMASK_R       (*((volatile unsigned long *)0x4000E0A8))
N#define UART2_PP_R              (*((volatile unsigned long *)0x4000EFC0))
N#define UART2_CC_R              (*((volatile unsigned long *)0x4000EFC8))
N
N//*****************************************************************************
N//
N// UART registers (UART3)
N//
N//*****************************************************************************
N#define UART3_DR_R              (*((volatile unsigned long *)0x4000F000))
N#define UART3_RSR_R             (*((volatile unsigned long *)0x4000F004))
N#define UART3_ECR_R             (*((volatile unsigned long *)0x4000F004))
N#define UART3_FR_R              (*((volatile unsigned long *)0x4000F018))
N#define UART3_ILPR_R            (*((volatile unsigned long *)0x4000F020))
N#define UART3_IBRD_R            (*((volatile unsigned long *)0x4000F024))
N#define UART3_FBRD_R            (*((volatile unsigned long *)0x4000F028))
N#define UART3_LCRH_R            (*((volatile unsigned long *)0x4000F02C))
N#define UART3_CTL_R             (*((volatile unsigned long *)0x4000F030))
N#define UART3_IFLS_R            (*((volatile unsigned long *)0x4000F034))
N#define UART3_IM_R              (*((volatile unsigned long *)0x4000F038))
N#define UART3_RIS_R             (*((volatile unsigned long *)0x4000F03C))
N#define UART3_MIS_R             (*((volatile unsigned long *)0x4000F040))
N#define UART3_ICR_R             (*((volatile unsigned long *)0x4000F044))
N#define UART3_DMACTL_R          (*((volatile unsigned long *)0x4000F048))
N#define UART3_9BITADDR_R        (*((volatile unsigned long *)0x4000F0A4))
N#define UART3_9BITAMASK_R       (*((volatile unsigned long *)0x4000F0A8))
N#define UART3_PP_R              (*((volatile unsigned long *)0x4000FFC0))
N#define UART3_CC_R              (*((volatile unsigned long *)0x4000FFC8))
N
N//*****************************************************************************
N//
N// UART registers (UART4)
N//
N//*****************************************************************************
N#define UART4_DR_R              (*((volatile unsigned long *)0x40010000))
N#define UART4_RSR_R             (*((volatile unsigned long *)0x40010004))
N#define UART4_ECR_R             (*((volatile unsigned long *)0x40010004))
N#define UART4_FR_R              (*((volatile unsigned long *)0x40010018))
N#define UART4_ILPR_R            (*((volatile unsigned long *)0x40010020))
N#define UART4_IBRD_R            (*((volatile unsigned long *)0x40010024))
N#define UART4_FBRD_R            (*((volatile unsigned long *)0x40010028))
N#define UART4_LCRH_R            (*((volatile unsigned long *)0x4001002C))
N#define UART4_CTL_R             (*((volatile unsigned long *)0x40010030))
N#define UART4_IFLS_R            (*((volatile unsigned long *)0x40010034))
N#define UART4_IM_R              (*((volatile unsigned long *)0x40010038))
N#define UART4_RIS_R             (*((volatile unsigned long *)0x4001003C))
N#define UART4_MIS_R             (*((volatile unsigned long *)0x40010040))
N#define UART4_ICR_R             (*((volatile unsigned long *)0x40010044))
N#define UART4_DMACTL_R          (*((volatile unsigned long *)0x40010048))
N#define UART4_9BITADDR_R        (*((volatile unsigned long *)0x400100A4))
N#define UART4_9BITAMASK_R       (*((volatile unsigned long *)0x400100A8))
N#define UART4_PP_R              (*((volatile unsigned long *)0x40010FC0))
N#define UART4_CC_R              (*((volatile unsigned long *)0x40010FC8))
N
N//*****************************************************************************
N//
N// UART registers (UART5)
N//
N//*****************************************************************************
N#define UART5_DR_R              (*((volatile unsigned long *)0x40011000))
N#define UART5_RSR_R             (*((volatile unsigned long *)0x40011004))
N#define UART5_ECR_R             (*((volatile unsigned long *)0x40011004))
N#define UART5_FR_R              (*((volatile unsigned long *)0x40011018))
N#define UART5_ILPR_R            (*((volatile unsigned long *)0x40011020))
N#define UART5_IBRD_R            (*((volatile unsigned long *)0x40011024))
N#define UART5_FBRD_R            (*((volatile unsigned long *)0x40011028))
N#define UART5_LCRH_R            (*((volatile unsigned long *)0x4001102C))
N#define UART5_CTL_R             (*((volatile unsigned long *)0x40011030))
N#define UART5_IFLS_R            (*((volatile unsigned long *)0x40011034))
N#define UART5_IM_R              (*((volatile unsigned long *)0x40011038))
N#define UART5_RIS_R             (*((volatile unsigned long *)0x4001103C))
N#define UART5_MIS_R             (*((volatile unsigned long *)0x40011040))
N#define UART5_ICR_R             (*((volatile unsigned long *)0x40011044))
N#define UART5_DMACTL_R          (*((volatile unsigned long *)0x40011048))
N#define UART5_9BITADDR_R        (*((volatile unsigned long *)0x400110A4))
N#define UART5_9BITAMASK_R       (*((volatile unsigned long *)0x400110A8))
N#define UART5_PP_R              (*((volatile unsigned long *)0x40011FC0))
N#define UART5_CC_R              (*((volatile unsigned long *)0x40011FC8))
N
N//*****************************************************************************
N//
N// UART registers (UART6)
N//
N//*****************************************************************************
N#define UART6_DR_R              (*((volatile unsigned long *)0x40012000))
N#define UART6_RSR_R             (*((volatile unsigned long *)0x40012004))
N#define UART6_ECR_R             (*((volatile unsigned long *)0x40012004))
N#define UART6_FR_R              (*((volatile unsigned long *)0x40012018))
N#define UART6_ILPR_R            (*((volatile unsigned long *)0x40012020))
N#define UART6_IBRD_R            (*((volatile unsigned long *)0x40012024))
N#define UART6_FBRD_R            (*((volatile unsigned long *)0x40012028))
N#define UART6_LCRH_R            (*((volatile unsigned long *)0x4001202C))
N#define UART6_CTL_R             (*((volatile unsigned long *)0x40012030))
N#define UART6_IFLS_R            (*((volatile unsigned long *)0x40012034))
N#define UART6_IM_R              (*((volatile unsigned long *)0x40012038))
N#define UART6_RIS_R             (*((volatile unsigned long *)0x4001203C))
N#define UART6_MIS_R             (*((volatile unsigned long *)0x40012040))
N#define UART6_ICR_R             (*((volatile unsigned long *)0x40012044))
N#define UART6_DMACTL_R          (*((volatile unsigned long *)0x40012048))
N#define UART6_9BITADDR_R        (*((volatile unsigned long *)0x400120A4))
N#define UART6_9BITAMASK_R       (*((volatile unsigned long *)0x400120A8))
N#define UART6_PP_R              (*((volatile unsigned long *)0x40012FC0))
N#define UART6_CC_R              (*((volatile unsigned long *)0x40012FC8))
N
N//*****************************************************************************
N//
N// UART registers (UART7)
N//
N//*****************************************************************************
N#define UART7_DR_R              (*((volatile unsigned long *)0x40013000))
N#define UART7_RSR_R             (*((volatile unsigned long *)0x40013004))
N#define UART7_ECR_R             (*((volatile unsigned long *)0x40013004))
N#define UART7_FR_R              (*((volatile unsigned long *)0x40013018))
N#define UART7_ILPR_R            (*((volatile unsigned long *)0x40013020))
N#define UART7_IBRD_R            (*((volatile unsigned long *)0x40013024))
N#define UART7_FBRD_R            (*((volatile unsigned long *)0x40013028))
N#define UART7_LCRH_R            (*((volatile unsigned long *)0x4001302C))
N#define UART7_CTL_R             (*((volatile unsigned long *)0x40013030))
N#define UART7_IFLS_R            (*((volatile unsigned long *)0x40013034))
N#define UART7_IM_R              (*((volatile unsigned long *)0x40013038))
N#define UART7_RIS_R             (*((volatile unsigned long *)0x4001303C))
N#define UART7_MIS_R             (*((volatile unsigned long *)0x40013040))
N#define UART7_ICR_R             (*((volatile unsigned long *)0x40013044))
N#define UART7_DMACTL_R          (*((volatile unsigned long *)0x40013048))
N#define UART7_9BITADDR_R        (*((volatile unsigned long *)0x400130A4))
N#define UART7_9BITAMASK_R       (*((volatile unsigned long *)0x400130A8))
N#define UART7_PP_R              (*((volatile unsigned long *)0x40013FC0))
N#define UART7_CC_R              (*((volatile unsigned long *)0x40013FC8))
N
N//*****************************************************************************
N//
N// I2C registers (I2C0)
N//
N//*****************************************************************************
N#define I2C0_MSA_R              (*((volatile unsigned long *)0x40020000))
N#define I2C0_MCS_R              (*((volatile unsigned long *)0x40020004))
N#define I2C0_MDR_R              (*((volatile unsigned long *)0x40020008))
N#define I2C0_MTPR_R             (*((volatile unsigned long *)0x4002000C))
N#define I2C0_MIMR_R             (*((volatile unsigned long *)0x40020010))
N#define I2C0_MRIS_R             (*((volatile unsigned long *)0x40020014))
N#define I2C0_MMIS_R             (*((volatile unsigned long *)0x40020018))
N#define I2C0_MICR_R             (*((volatile unsigned long *)0x4002001C))
N#define I2C0_MCR_R              (*((volatile unsigned long *)0x40020020))
N#define I2C0_MCLKOCNT_R         (*((volatile unsigned long *)0x40020024))
N#define I2C0_MBMON_R            (*((volatile unsigned long *)0x4002002C))
N#define I2C0_MCR2_R             (*((volatile unsigned long *)0x40020038))
N#define I2C0_SOAR_R             (*((volatile unsigned long *)0x40020800))
N#define I2C0_SCSR_R             (*((volatile unsigned long *)0x40020804))
N#define I2C0_SDR_R              (*((volatile unsigned long *)0x40020808))
N#define I2C0_SIMR_R             (*((volatile unsigned long *)0x4002080C))
N#define I2C0_SRIS_R             (*((volatile unsigned long *)0x40020810))
N#define I2C0_SMIS_R             (*((volatile unsigned long *)0x40020814))
N#define I2C0_SICR_R             (*((volatile unsigned long *)0x40020818))
N#define I2C0_SOAR2_R            (*((volatile unsigned long *)0x4002081C))
N#define I2C0_SACKCTL_R          (*((volatile unsigned long *)0x40020820))
N#define I2C0_PP_R               (*((volatile unsigned long *)0x40020FC0))
N#define I2C0_PC_R               (*((volatile unsigned long *)0x40020FC4))
N
N//*****************************************************************************
N//
N// I2C registers (I2C1)
N//
N//*****************************************************************************
N#define I2C1_MSA_R              (*((volatile unsigned long *)0x40021000))
N#define I2C1_MCS_R              (*((volatile unsigned long *)0x40021004))
N#define I2C1_MDR_R              (*((volatile unsigned long *)0x40021008))
N#define I2C1_MTPR_R             (*((volatile unsigned long *)0x4002100C))
N#define I2C1_MIMR_R             (*((volatile unsigned long *)0x40021010))
N#define I2C1_MRIS_R             (*((volatile unsigned long *)0x40021014))
N#define I2C1_MMIS_R             (*((volatile unsigned long *)0x40021018))
N#define I2C1_MICR_R             (*((volatile unsigned long *)0x4002101C))
N#define I2C1_MCR_R              (*((volatile unsigned long *)0x40021020))
N#define I2C1_MCLKOCNT_R         (*((volatile unsigned long *)0x40021024))
N#define I2C1_MBMON_R            (*((volatile unsigned long *)0x4002102C))
N#define I2C1_MCR2_R             (*((volatile unsigned long *)0x40021038))
N#define I2C1_SOAR_R             (*((volatile unsigned long *)0x40021800))
N#define I2C1_SCSR_R             (*((volatile unsigned long *)0x40021804))
N#define I2C1_SDR_R              (*((volatile unsigned long *)0x40021808))
N#define I2C1_SIMR_R             (*((volatile unsigned long *)0x4002180C))
N#define I2C1_SRIS_R             (*((volatile unsigned long *)0x40021810))
N#define I2C1_SMIS_R             (*((volatile unsigned long *)0x40021814))
N#define I2C1_SICR_R             (*((volatile unsigned long *)0x40021818))
N#define I2C1_SOAR2_R            (*((volatile unsigned long *)0x4002181C))
N#define I2C1_SACKCTL_R          (*((volatile unsigned long *)0x40021820))
N#define I2C1_PP_R               (*((volatile unsigned long *)0x40021FC0))
N#define I2C1_PC_R               (*((volatile unsigned long *)0x40021FC4))
N
N//*****************************************************************************
N//
N// I2C registers (I2C2)
N//
N//*****************************************************************************
N#define I2C2_MSA_R              (*((volatile unsigned long *)0x40022000))
N#define I2C2_MCS_R              (*((volatile unsigned long *)0x40022004))
N#define I2C2_MDR_R              (*((volatile unsigned long *)0x40022008))
N#define I2C2_MTPR_R             (*((volatile unsigned long *)0x4002200C))
N#define I2C2_MIMR_R             (*((volatile unsigned long *)0x40022010))
N#define I2C2_MRIS_R             (*((volatile unsigned long *)0x40022014))
N#define I2C2_MMIS_R             (*((volatile unsigned long *)0x40022018))
N#define I2C2_MICR_R             (*((volatile unsigned long *)0x4002201C))
N#define I2C2_MCR_R              (*((volatile unsigned long *)0x40022020))
N#define I2C2_MCLKOCNT_R         (*((volatile unsigned long *)0x40022024))
N#define I2C2_MBMON_R            (*((volatile unsigned long *)0x4002202C))
N#define I2C2_MCR2_R             (*((volatile unsigned long *)0x40022038))
N#define I2C2_SOAR_R             (*((volatile unsigned long *)0x40022800))
N#define I2C2_SCSR_R             (*((volatile unsigned long *)0x40022804))
N#define I2C2_SDR_R              (*((volatile unsigned long *)0x40022808))
N#define I2C2_SIMR_R             (*((volatile unsigned long *)0x4002280C))
N#define I2C2_SRIS_R             (*((volatile unsigned long *)0x40022810))
N#define I2C2_SMIS_R             (*((volatile unsigned long *)0x40022814))
N#define I2C2_SICR_R             (*((volatile unsigned long *)0x40022818))
N#define I2C2_SOAR2_R            (*((volatile unsigned long *)0x4002281C))
N#define I2C2_SACKCTL_R          (*((volatile unsigned long *)0x40022820))
N#define I2C2_PP_R               (*((volatile unsigned long *)0x40022FC0))
N#define I2C2_PC_R               (*((volatile unsigned long *)0x40022FC4))
N
N//*****************************************************************************
N//
N// I2C registers (I2C3)
N//
N//*****************************************************************************
N#define I2C3_MSA_R              (*((volatile unsigned long *)0x40023000))
N#define I2C3_MCS_R              (*((volatile unsigned long *)0x40023004))
N#define I2C3_MDR_R              (*((volatile unsigned long *)0x40023008))
N#define I2C3_MTPR_R             (*((volatile unsigned long *)0x4002300C))
N#define I2C3_MIMR_R             (*((volatile unsigned long *)0x40023010))
N#define I2C3_MRIS_R             (*((volatile unsigned long *)0x40023014))
N#define I2C3_MMIS_R             (*((volatile unsigned long *)0x40023018))
N#define I2C3_MICR_R             (*((volatile unsigned long *)0x4002301C))
N#define I2C3_MCR_R              (*((volatile unsigned long *)0x40023020))
N#define I2C3_MCLKOCNT_R         (*((volatile unsigned long *)0x40023024))
N#define I2C3_MBMON_R            (*((volatile unsigned long *)0x4002302C))
N#define I2C3_MCR2_R             (*((volatile unsigned long *)0x40023038))
N#define I2C3_SOAR_R             (*((volatile unsigned long *)0x40023800))
N#define I2C3_SCSR_R             (*((volatile unsigned long *)0x40023804))
N#define I2C3_SDR_R              (*((volatile unsigned long *)0x40023808))
N#define I2C3_SIMR_R             (*((volatile unsigned long *)0x4002380C))
N#define I2C3_SRIS_R             (*((volatile unsigned long *)0x40023810))
N#define I2C3_SMIS_R             (*((volatile unsigned long *)0x40023814))
N#define I2C3_SICR_R             (*((volatile unsigned long *)0x40023818))
N#define I2C3_SOAR2_R            (*((volatile unsigned long *)0x4002381C))
N#define I2C3_SACKCTL_R          (*((volatile unsigned long *)0x40023820))
N#define I2C3_PP_R               (*((volatile unsigned long *)0x40023FC0))
N#define I2C3_PC_R               (*((volatile unsigned long *)0x40023FC4))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTE)
N//
N//*****************************************************************************
N#define GPIO_PORTE_DATA_BITS_R  ((volatile unsigned long *)0x40024000)
N#define GPIO_PORTE_DATA_R       (*((volatile unsigned long *)0x400243FC))
N#define GPIO_PORTE_DIR_R        (*((volatile unsigned long *)0x40024400))
N#define GPIO_PORTE_IS_R         (*((volatile unsigned long *)0x40024404))
N#define GPIO_PORTE_IBE_R        (*((volatile unsigned long *)0x40024408))
N#define GPIO_PORTE_IEV_R        (*((volatile unsigned long *)0x4002440C))
N#define GPIO_PORTE_IM_R         (*((volatile unsigned long *)0x40024410))
N#define GPIO_PORTE_RIS_R        (*((volatile unsigned long *)0x40024414))
N#define GPIO_PORTE_MIS_R        (*((volatile unsigned long *)0x40024418))
N#define GPIO_PORTE_ICR_R        (*((volatile unsigned long *)0x4002441C))
N#define GPIO_PORTE_AFSEL_R      (*((volatile unsigned long *)0x40024420))
N#define GPIO_PORTE_DR2R_R       (*((volatile unsigned long *)0x40024500))
N#define GPIO_PORTE_DR4R_R       (*((volatile unsigned long *)0x40024504))
N#define GPIO_PORTE_DR8R_R       (*((volatile unsigned long *)0x40024508))
N#define GPIO_PORTE_ODR_R        (*((volatile unsigned long *)0x4002450C))
N#define GPIO_PORTE_PUR_R        (*((volatile unsigned long *)0x40024510))
N#define GPIO_PORTE_PDR_R        (*((volatile unsigned long *)0x40024514))
N#define GPIO_PORTE_SLR_R        (*((volatile unsigned long *)0x40024518))
N#define GPIO_PORTE_DEN_R        (*((volatile unsigned long *)0x4002451C))
N#define GPIO_PORTE_LOCK_R       (*((volatile unsigned long *)0x40024520))
N#define GPIO_PORTE_CR_R         (*((volatile unsigned long *)0x40024524))
N#define GPIO_PORTE_AMSEL_R      (*((volatile unsigned long *)0x40024528))
N#define GPIO_PORTE_PCTL_R       (*((volatile unsigned long *)0x4002452C))
N#define GPIO_PORTE_ADCCTL_R     (*((volatile unsigned long *)0x40024530))
N#define GPIO_PORTE_DMACTL_R     (*((volatile unsigned long *)0x40024534))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTF)
N//
N//*****************************************************************************
N#define GPIO_PORTF_DATA_BITS_R  ((volatile unsigned long *)0x40025000)
N#define GPIO_PORTF_DATA_R       (*((volatile unsigned long *)0x400253FC))
N#define GPIO_PORTF_DIR_R        (*((volatile unsigned long *)0x40025400))
N#define GPIO_PORTF_IS_R         (*((volatile unsigned long *)0x40025404))
N#define GPIO_PORTF_IBE_R        (*((volatile unsigned long *)0x40025408))
N#define GPIO_PORTF_IEV_R        (*((volatile unsigned long *)0x4002540C))
N#define GPIO_PORTF_IM_R         (*((volatile unsigned long *)0x40025410))
N#define GPIO_PORTF_RIS_R        (*((volatile unsigned long *)0x40025414))
N#define GPIO_PORTF_MIS_R        (*((volatile unsigned long *)0x40025418))
N#define GPIO_PORTF_ICR_R        (*((volatile unsigned long *)0x4002541C))
N#define GPIO_PORTF_AFSEL_R      (*((volatile unsigned long *)0x40025420))
N#define GPIO_PORTF_DR2R_R       (*((volatile unsigned long *)0x40025500))
N#define GPIO_PORTF_DR4R_R       (*((volatile unsigned long *)0x40025504))
N#define GPIO_PORTF_DR8R_R       (*((volatile unsigned long *)0x40025508))
N#define GPIO_PORTF_ODR_R        (*((volatile unsigned long *)0x4002550C))
N#define GPIO_PORTF_PUR_R        (*((volatile unsigned long *)0x40025510))
N#define GPIO_PORTF_PDR_R        (*((volatile unsigned long *)0x40025514))
N#define GPIO_PORTF_SLR_R        (*((volatile unsigned long *)0x40025518))
N#define GPIO_PORTF_DEN_R        (*((volatile unsigned long *)0x4002551C))
N#define GPIO_PORTF_LOCK_R       (*((volatile unsigned long *)0x40025520))
N#define GPIO_PORTF_CR_R         (*((volatile unsigned long *)0x40025524))
N#define GPIO_PORTF_AMSEL_R      (*((volatile unsigned long *)0x40025528))
N#define GPIO_PORTF_PCTL_R       (*((volatile unsigned long *)0x4002552C))
N#define GPIO_PORTF_ADCCTL_R     (*((volatile unsigned long *)0x40025530))
N#define GPIO_PORTF_DMACTL_R     (*((volatile unsigned long *)0x40025534))
N
N//*****************************************************************************
N//
N// PWM registers (PWM0)
N//
N//*****************************************************************************
N#define PWM0_CTL_R              (*((volatile unsigned long *)0x40028000))
N#define PWM0_SYNC_R             (*((volatile unsigned long *)0x40028004))
N#define PWM0_ENABLE_R           (*((volatile unsigned long *)0x40028008))
N#define PWM0_INVERT_R           (*((volatile unsigned long *)0x4002800C))
N#define PWM0_FAULT_R            (*((volatile unsigned long *)0x40028010))
N#define PWM0_INTEN_R            (*((volatile unsigned long *)0x40028014))
N#define PWM0_RIS_R              (*((volatile unsigned long *)0x40028018))
N#define PWM0_ISC_R              (*((volatile unsigned long *)0x4002801C))
N#define PWM0_STATUS_R           (*((volatile unsigned long *)0x40028020))
N#define PWM0_FAULTVAL_R         (*((volatile unsigned long *)0x40028024))
N#define PWM0_ENUPD_R            (*((volatile unsigned long *)0x40028028))
N#define PWM0_0_CTL_R            (*((volatile unsigned long *)0x40028040))
N#define PWM0_0_INTEN_R          (*((volatile unsigned long *)0x40028044))
N#define PWM0_0_RIS_R            (*((volatile unsigned long *)0x40028048))
N#define PWM0_0_ISC_R            (*((volatile unsigned long *)0x4002804C))
N#define PWM0_0_LOAD_R           (*((volatile unsigned long *)0x40028050))
N#define PWM0_0_COUNT_R          (*((volatile unsigned long *)0x40028054))
N#define PWM0_0_CMPA_R           (*((volatile unsigned long *)0x40028058))
N#define PWM0_0_CMPB_R           (*((volatile unsigned long *)0x4002805C))
N#define PWM0_0_GENA_R           (*((volatile unsigned long *)0x40028060))
N#define PWM0_0_GENB_R           (*((volatile unsigned long *)0x40028064))
N#define PWM0_0_DBCTL_R          (*((volatile unsigned long *)0x40028068))
N#define PWM0_0_DBRISE_R         (*((volatile unsigned long *)0x4002806C))
N#define PWM0_0_DBFALL_R         (*((volatile unsigned long *)0x40028070))
N#define PWM0_0_FLTSRC0_R        (*((volatile unsigned long *)0x40028074))
N#define PWM0_0_FLTSRC1_R        (*((volatile unsigned long *)0x40028078))
N#define PWM0_0_MINFLTPER_R      (*((volatile unsigned long *)0x4002807C))
N#define PWM0_1_CTL_R            (*((volatile unsigned long *)0x40028080))
N#define PWM0_1_INTEN_R          (*((volatile unsigned long *)0x40028084))
N#define PWM0_1_RIS_R            (*((volatile unsigned long *)0x40028088))
N#define PWM0_1_ISC_R            (*((volatile unsigned long *)0x4002808C))
N#define PWM0_1_LOAD_R           (*((volatile unsigned long *)0x40028090))
N#define PWM0_1_COUNT_R          (*((volatile unsigned long *)0x40028094))
N#define PWM0_1_CMPA_R           (*((volatile unsigned long *)0x40028098))
N#define PWM0_1_CMPB_R           (*((volatile unsigned long *)0x4002809C))
N#define PWM0_1_GENA_R           (*((volatile unsigned long *)0x400280A0))
N#define PWM0_1_GENB_R           (*((volatile unsigned long *)0x400280A4))
N#define PWM0_1_DBCTL_R          (*((volatile unsigned long *)0x400280A8))
N#define PWM0_1_DBRISE_R         (*((volatile unsigned long *)0x400280AC))
N#define PWM0_1_DBFALL_R         (*((volatile unsigned long *)0x400280B0))
N#define PWM0_1_FLTSRC0_R        (*((volatile unsigned long *)0x400280B4))
N#define PWM0_1_FLTSRC1_R        (*((volatile unsigned long *)0x400280B8))
N#define PWM0_1_MINFLTPER_R      (*((volatile unsigned long *)0x400280BC))
N#define PWM0_2_CTL_R            (*((volatile unsigned long *)0x400280C0))
N#define PWM0_2_INTEN_R          (*((volatile unsigned long *)0x400280C4))
N#define PWM0_2_RIS_R            (*((volatile unsigned long *)0x400280C8))
N#define PWM0_2_ISC_R            (*((volatile unsigned long *)0x400280CC))
N#define PWM0_2_LOAD_R           (*((volatile unsigned long *)0x400280D0))
N#define PWM0_2_COUNT_R          (*((volatile unsigned long *)0x400280D4))
N#define PWM0_2_CMPA_R           (*((volatile unsigned long *)0x400280D8))
N#define PWM0_2_CMPB_R           (*((volatile unsigned long *)0x400280DC))
N#define PWM0_2_GENA_R           (*((volatile unsigned long *)0x400280E0))
N#define PWM0_2_GENB_R           (*((volatile unsigned long *)0x400280E4))
N#define PWM0_2_DBCTL_R          (*((volatile unsigned long *)0x400280E8))
N#define PWM0_2_DBRISE_R         (*((volatile unsigned long *)0x400280EC))
N#define PWM0_2_DBFALL_R         (*((volatile unsigned long *)0x400280F0))
N#define PWM0_2_FLTSRC0_R        (*((volatile unsigned long *)0x400280F4))
N#define PWM0_2_FLTSRC1_R        (*((volatile unsigned long *)0x400280F8))
N#define PWM0_2_MINFLTPER_R      (*((volatile unsigned long *)0x400280FC))
N#define PWM0_3_CTL_R            (*((volatile unsigned long *)0x40028100))
N#define PWM0_3_INTEN_R          (*((volatile unsigned long *)0x40028104))
N#define PWM0_3_RIS_R            (*((volatile unsigned long *)0x40028108))
N#define PWM0_3_ISC_R            (*((volatile unsigned long *)0x4002810C))
N#define PWM0_3_LOAD_R           (*((volatile unsigned long *)0x40028110))
N#define PWM0_3_COUNT_R          (*((volatile unsigned long *)0x40028114))
N#define PWM0_3_CMPA_R           (*((volatile unsigned long *)0x40028118))
N#define PWM0_3_CMPB_R           (*((volatile unsigned long *)0x4002811C))
N#define PWM0_3_GENA_R           (*((volatile unsigned long *)0x40028120))
N#define PWM0_3_GENB_R           (*((volatile unsigned long *)0x40028124))
N#define PWM0_3_DBCTL_R          (*((volatile unsigned long *)0x40028128))
N#define PWM0_3_DBRISE_R         (*((volatile unsigned long *)0x4002812C))
N#define PWM0_3_DBFALL_R         (*((volatile unsigned long *)0x40028130))
N#define PWM0_3_FLTSRC0_R        (*((volatile unsigned long *)0x40028134))
N#define PWM0_3_FLTSRC1_R        (*((volatile unsigned long *)0x40028138))
N#define PWM0_3_MINFLTPER_R      (*((volatile unsigned long *)0x4002813C))
N#define PWM0_0_FLTSEN_R         (*((volatile unsigned long *)0x40028800))
N#define PWM0_0_FLTSTAT0_R       (*((volatile unsigned long *)0x40028804))
N#define PWM0_0_FLTSTAT1_R       (*((volatile unsigned long *)0x40028808))
N#define PWM0_1_FLTSEN_R         (*((volatile unsigned long *)0x40028880))
N#define PWM0_1_FLTSTAT0_R       (*((volatile unsigned long *)0x40028884))
N#define PWM0_1_FLTSTAT1_R       (*((volatile unsigned long *)0x40028888))
N#define PWM0_2_FLTSTAT0_R       (*((volatile unsigned long *)0x40028904))
N#define PWM0_2_FLTSTAT1_R       (*((volatile unsigned long *)0x40028908))
N#define PWM0_3_FLTSTAT0_R       (*((volatile unsigned long *)0x40028984))
N#define PWM0_3_FLTSTAT1_R       (*((volatile unsigned long *)0x40028988))
N#define PWM0_PP_R               (*((volatile unsigned long *)0x40028FC0))
N
N//*****************************************************************************
N//
N// PWM registers (PWM1)
N//
N//*****************************************************************************
N#define PWM1_CTL_R              (*((volatile unsigned long *)0x40029000))
N#define PWM1_SYNC_R             (*((volatile unsigned long *)0x40029004))
N#define PWM1_ENABLE_R           (*((volatile unsigned long *)0x40029008))
N#define PWM1_INVERT_R           (*((volatile unsigned long *)0x4002900C))
N#define PWM1_FAULT_R            (*((volatile unsigned long *)0x40029010))
N#define PWM1_INTEN_R            (*((volatile unsigned long *)0x40029014))
N#define PWM1_RIS_R              (*((volatile unsigned long *)0x40029018))
N#define PWM1_ISC_R              (*((volatile unsigned long *)0x4002901C))
N#define PWM1_STATUS_R           (*((volatile unsigned long *)0x40029020))
N#define PWM1_FAULTVAL_R         (*((volatile unsigned long *)0x40029024))
N#define PWM1_ENUPD_R            (*((volatile unsigned long *)0x40029028))
N#define PWM1_0_CTL_R            (*((volatile unsigned long *)0x40029040))
N#define PWM1_0_INTEN_R          (*((volatile unsigned long *)0x40029044))
N#define PWM1_0_RIS_R            (*((volatile unsigned long *)0x40029048))
N#define PWM1_0_ISC_R            (*((volatile unsigned long *)0x4002904C))
N#define PWM1_0_LOAD_R           (*((volatile unsigned long *)0x40029050))
N#define PWM1_0_COUNT_R          (*((volatile unsigned long *)0x40029054))
N#define PWM1_0_CMPA_R           (*((volatile unsigned long *)0x40029058))
N#define PWM1_0_CMPB_R           (*((volatile unsigned long *)0x4002905C))
N#define PWM1_0_GENA_R           (*((volatile unsigned long *)0x40029060))
N#define PWM1_0_GENB_R           (*((volatile unsigned long *)0x40029064))
N#define PWM1_0_DBCTL_R          (*((volatile unsigned long *)0x40029068))
N#define PWM1_0_DBRISE_R         (*((volatile unsigned long *)0x4002906C))
N#define PWM1_0_DBFALL_R         (*((volatile unsigned long *)0x40029070))
N#define PWM1_0_FLTSRC0_R        (*((volatile unsigned long *)0x40029074))
N#define PWM1_0_FLTSRC1_R        (*((volatile unsigned long *)0x40029078))
N#define PWM1_0_MINFLTPER_R      (*((volatile unsigned long *)0x4002907C))
N#define PWM1_1_CTL_R            (*((volatile unsigned long *)0x40029080))
N#define PWM1_1_INTEN_R          (*((volatile unsigned long *)0x40029084))
N#define PWM1_1_RIS_R            (*((volatile unsigned long *)0x40029088))
N#define PWM1_1_ISC_R            (*((volatile unsigned long *)0x4002908C))
N#define PWM1_1_LOAD_R           (*((volatile unsigned long *)0x40029090))
N#define PWM1_1_COUNT_R          (*((volatile unsigned long *)0x40029094))
N#define PWM1_1_CMPA_R           (*((volatile unsigned long *)0x40029098))
N#define PWM1_1_CMPB_R           (*((volatile unsigned long *)0x4002909C))
N#define PWM1_1_GENA_R           (*((volatile unsigned long *)0x400290A0))
N#define PWM1_1_GENB_R           (*((volatile unsigned long *)0x400290A4))
N#define PWM1_1_DBCTL_R          (*((volatile unsigned long *)0x400290A8))
N#define PWM1_1_DBRISE_R         (*((volatile unsigned long *)0x400290AC))
N#define PWM1_1_DBFALL_R         (*((volatile unsigned long *)0x400290B0))
N#define PWM1_1_FLTSRC0_R        (*((volatile unsigned long *)0x400290B4))
N#define PWM1_1_FLTSRC1_R        (*((volatile unsigned long *)0x400290B8))
N#define PWM1_1_MINFLTPER_R      (*((volatile unsigned long *)0x400290BC))
N#define PWM1_2_CTL_R            (*((volatile unsigned long *)0x400290C0))
N#define PWM1_2_INTEN_R          (*((volatile unsigned long *)0x400290C4))
N#define PWM1_2_RIS_R            (*((volatile unsigned long *)0x400290C8))
N#define PWM1_2_ISC_R            (*((volatile unsigned long *)0x400290CC))
N#define PWM1_2_LOAD_R           (*((volatile unsigned long *)0x400290D0))
N#define PWM1_2_COUNT_R          (*((volatile unsigned long *)0x400290D4))
N#define PWM1_2_CMPA_R           (*((volatile unsigned long *)0x400290D8))
N#define PWM1_2_CMPB_R           (*((volatile unsigned long *)0x400290DC))
N#define PWM1_2_GENA_R           (*((volatile unsigned long *)0x400290E0))
N#define PWM1_2_GENB_R           (*((volatile unsigned long *)0x400290E4))
N#define PWM1_2_DBCTL_R          (*((volatile unsigned long *)0x400290E8))
N#define PWM1_2_DBRISE_R         (*((volatile unsigned long *)0x400290EC))
N#define PWM1_2_DBFALL_R         (*((volatile unsigned long *)0x400290F0))
N#define PWM1_2_FLTSRC0_R        (*((volatile unsigned long *)0x400290F4))
N#define PWM1_2_FLTSRC1_R        (*((volatile unsigned long *)0x400290F8))
N#define PWM1_2_MINFLTPER_R      (*((volatile unsigned long *)0x400290FC))
N#define PWM1_3_CTL_R            (*((volatile unsigned long *)0x40029100))
N#define PWM1_3_INTEN_R          (*((volatile unsigned long *)0x40029104))
N#define PWM1_3_RIS_R            (*((volatile unsigned long *)0x40029108))
N#define PWM1_3_ISC_R            (*((volatile unsigned long *)0x4002910C))
N#define PWM1_3_LOAD_R           (*((volatile unsigned long *)0x40029110))
N#define PWM1_3_COUNT_R          (*((volatile unsigned long *)0x40029114))
N#define PWM1_3_CMPA_R           (*((volatile unsigned long *)0x40029118))
N#define PWM1_3_CMPB_R           (*((volatile unsigned long *)0x4002911C))
N#define PWM1_3_GENA_R           (*((volatile unsigned long *)0x40029120))
N#define PWM1_3_GENB_R           (*((volatile unsigned long *)0x40029124))
N#define PWM1_3_DBCTL_R          (*((volatile unsigned long *)0x40029128))
N#define PWM1_3_DBRISE_R         (*((volatile unsigned long *)0x4002912C))
N#define PWM1_3_DBFALL_R         (*((volatile unsigned long *)0x40029130))
N#define PWM1_3_FLTSRC0_R        (*((volatile unsigned long *)0x40029134))
N#define PWM1_3_FLTSRC1_R        (*((volatile unsigned long *)0x40029138))
N#define PWM1_3_MINFLTPER_R      (*((volatile unsigned long *)0x4002913C))
N#define PWM1_0_FLTSEN_R         (*((volatile unsigned long *)0x40029800))
N#define PWM1_0_FLTSTAT0_R       (*((volatile unsigned long *)0x40029804))
N#define PWM1_0_FLTSTAT1_R       (*((volatile unsigned long *)0x40029808))
N#define PWM1_1_FLTSEN_R         (*((volatile unsigned long *)0x40029880))
N#define PWM1_1_FLTSTAT0_R       (*((volatile unsigned long *)0x40029884))
N#define PWM1_1_FLTSTAT1_R       (*((volatile unsigned long *)0x40029888))
N#define PWM1_2_FLTSTAT0_R       (*((volatile unsigned long *)0x40029904))
N#define PWM1_2_FLTSTAT1_R       (*((volatile unsigned long *)0x40029908))
N#define PWM1_3_FLTSTAT0_R       (*((volatile unsigned long *)0x40029984))
N#define PWM1_3_FLTSTAT1_R       (*((volatile unsigned long *)0x40029988))
N#define PWM1_PP_R               (*((volatile unsigned long *)0x40029FC0))
N
N//*****************************************************************************
N//
N// QEI registers (QEI0)
N//
N//*****************************************************************************
N#define QEI0_CTL_R              (*((volatile unsigned long *)0x4002C000))
N#define QEI0_STAT_R             (*((volatile unsigned long *)0x4002C004))
N#define QEI0_POS_R              (*((volatile unsigned long *)0x4002C008))
N#define QEI0_MAXPOS_R           (*((volatile unsigned long *)0x4002C00C))
N#define QEI0_LOAD_R             (*((volatile unsigned long *)0x4002C010))
N#define QEI0_TIME_R             (*((volatile unsigned long *)0x4002C014))
N#define QEI0_COUNT_R            (*((volatile unsigned long *)0x4002C018))
N#define QEI0_SPEED_R            (*((volatile unsigned long *)0x4002C01C))
N#define QEI0_INTEN_R            (*((volatile unsigned long *)0x4002C020))
N#define QEI0_RIS_R              (*((volatile unsigned long *)0x4002C024))
N#define QEI0_ISC_R              (*((volatile unsigned long *)0x4002C028))
N
N//*****************************************************************************
N//
N// QEI registers (QEI1)
N//
N//*****************************************************************************
N#define QEI1_CTL_R              (*((volatile unsigned long *)0x4002D000))
N#define QEI1_STAT_R             (*((volatile unsigned long *)0x4002D004))
N#define QEI1_POS_R              (*((volatile unsigned long *)0x4002D008))
N#define QEI1_MAXPOS_R           (*((volatile unsigned long *)0x4002D00C))
N#define QEI1_LOAD_R             (*((volatile unsigned long *)0x4002D010))
N#define QEI1_TIME_R             (*((volatile unsigned long *)0x4002D014))
N#define QEI1_COUNT_R            (*((volatile unsigned long *)0x4002D018))
N#define QEI1_SPEED_R            (*((volatile unsigned long *)0x4002D01C))
N#define QEI1_INTEN_R            (*((volatile unsigned long *)0x4002D020))
N#define QEI1_RIS_R              (*((volatile unsigned long *)0x4002D024))
N#define QEI1_ISC_R              (*((volatile unsigned long *)0x4002D028))
N
N//*****************************************************************************
N//
N// Timer registers (TIMER0)
N//
N//*****************************************************************************
N#define TIMER0_CFG_R            (*((volatile unsigned long *)0x40030000))
N#define TIMER0_TAMR_R           (*((volatile unsigned long *)0x40030004))
N#define TIMER0_TBMR_R           (*((volatile unsigned long *)0x40030008))
N#define TIMER0_CTL_R            (*((volatile unsigned long *)0x4003000C))
N#define TIMER0_SYNC_R           (*((volatile unsigned long *)0x40030010))
N#define TIMER0_IMR_R            (*((volatile unsigned long *)0x40030018))
N#define TIMER0_RIS_R            (*((volatile unsigned long *)0x4003001C))
N#define TIMER0_MIS_R            (*((volatile unsigned long *)0x40030020))
N#define TIMER0_ICR_R            (*((volatile unsigned long *)0x40030024))
N#define TIMER0_TAILR_R          (*((volatile unsigned long *)0x40030028))
N#define TIMER0_TBILR_R          (*((volatile unsigned long *)0x4003002C))
N#define TIMER0_TAMATCHR_R       (*((volatile unsigned long *)0x40030030))
N#define TIMER0_TBMATCHR_R       (*((volatile unsigned long *)0x40030034))
N#define TIMER0_TAPR_R           (*((volatile unsigned long *)0x40030038))
N#define TIMER0_TBPR_R           (*((volatile unsigned long *)0x4003003C))
N#define TIMER0_TAPMR_R          (*((volatile unsigned long *)0x40030040))
N#define TIMER0_TBPMR_R          (*((volatile unsigned long *)0x40030044))
N#define TIMER0_TAR_R            (*((volatile unsigned long *)0x40030048))
N#define TIMER0_TBR_R            (*((volatile unsigned long *)0x4003004C))
N#define TIMER0_TAV_R            (*((volatile unsigned long *)0x40030050))
N#define TIMER0_TBV_R            (*((volatile unsigned long *)0x40030054))
N#define TIMER0_RTCPD_R          (*((volatile unsigned long *)0x40030058))
N#define TIMER0_TAPS_R           (*((volatile unsigned long *)0x4003005C))
N#define TIMER0_TBPS_R           (*((volatile unsigned long *)0x40030060))
N#define TIMER0_TAPV_R           (*((volatile unsigned long *)0x40030064))
N#define TIMER0_TBPV_R           (*((volatile unsigned long *)0x40030068))
N#define TIMER0_PP_R             (*((volatile unsigned long *)0x40030FC0))
N
N//*****************************************************************************
N//
N// Timer registers (TIMER1)
N//
N//*****************************************************************************
N#define TIMER1_CFG_R            (*((volatile unsigned long *)0x40031000))
N#define TIMER1_TAMR_R           (*((volatile unsigned long *)0x40031004))
N#define TIMER1_TBMR_R           (*((volatile unsigned long *)0x40031008))
N#define TIMER1_CTL_R            (*((volatile unsigned long *)0x4003100C))
N#define TIMER1_SYNC_R           (*((volatile unsigned long *)0x40031010))
N#define TIMER1_IMR_R            (*((volatile unsigned long *)0x40031018))
N#define TIMER1_RIS_R            (*((volatile unsigned long *)0x4003101C))
N#define TIMER1_MIS_R            (*((volatile unsigned long *)0x40031020))
N#define TIMER1_ICR_R            (*((volatile unsigned long *)0x40031024))
N#define TIMER1_TAILR_R          (*((volatile unsigned long *)0x40031028))
N#define TIMER1_TBILR_R          (*((volatile unsigned long *)0x4003102C))
N#define TIMER1_TAMATCHR_R       (*((volatile unsigned long *)0x40031030))
N#define TIMER1_TBMATCHR_R       (*((volatile unsigned long *)0x40031034))
N#define TIMER1_TAPR_R           (*((volatile unsigned long *)0x40031038))
N#define TIMER1_TBPR_R           (*((volatile unsigned long *)0x4003103C))
N#define TIMER1_TAPMR_R          (*((volatile unsigned long *)0x40031040))
N#define TIMER1_TBPMR_R          (*((volatile unsigned long *)0x40031044))
N#define TIMER1_TAR_R            (*((volatile unsigned long *)0x40031048))
N#define TIMER1_TBR_R            (*((volatile unsigned long *)0x4003104C))
N#define TIMER1_TAV_R            (*((volatile unsigned long *)0x40031050))
N#define TIMER1_TBV_R            (*((volatile unsigned long *)0x40031054))
N#define TIMER1_RTCPD_R          (*((volatile unsigned long *)0x40031058))
N#define TIMER1_TAPS_R           (*((volatile unsigned long *)0x4003105C))
N#define TIMER1_TBPS_R           (*((volatile unsigned long *)0x40031060))
N#define TIMER1_TAPV_R           (*((volatile unsigned long *)0x40031064))
N#define TIMER1_TBPV_R           (*((volatile unsigned long *)0x40031068))
N#define TIMER1_PP_R             (*((volatile unsigned long *)0x40031FC0))
N
N//*****************************************************************************
N//
N// Timer registers (TIMER2)
N//
N//*****************************************************************************
N#define TIMER2_CFG_R            (*((volatile unsigned long *)0x40032000))
N#define TIMER2_TAMR_R           (*((volatile unsigned long *)0x40032004))
N#define TIMER2_TBMR_R           (*((volatile unsigned long *)0x40032008))
N#define TIMER2_CTL_R            (*((volatile unsigned long *)0x4003200C))
N#define TIMER2_SYNC_R           (*((volatile unsigned long *)0x40032010))
N#define TIMER2_IMR_R            (*((volatile unsigned long *)0x40032018))
N#define TIMER2_RIS_R            (*((volatile unsigned long *)0x4003201C))
N#define TIMER2_MIS_R            (*((volatile unsigned long *)0x40032020))
N#define TIMER2_ICR_R            (*((volatile unsigned long *)0x40032024))
N#define TIMER2_TAILR_R          (*((volatile unsigned long *)0x40032028))
N#define TIMER2_TBILR_R          (*((volatile unsigned long *)0x4003202C))
N#define TIMER2_TAMATCHR_R       (*((volatile unsigned long *)0x40032030))
N#define TIMER2_TBMATCHR_R       (*((volatile unsigned long *)0x40032034))
N#define TIMER2_TAPR_R           (*((volatile unsigned long *)0x40032038))
N#define TIMER2_TBPR_R           (*((volatile unsigned long *)0x4003203C))
N#define TIMER2_TAPMR_R          (*((volatile unsigned long *)0x40032040))
N#define TIMER2_TBPMR_R          (*((volatile unsigned long *)0x40032044))
N#define TIMER2_TAR_R            (*((volatile unsigned long *)0x40032048))
N#define TIMER2_TBR_R            (*((volatile unsigned long *)0x4003204C))
N#define TIMER2_TAV_R            (*((volatile unsigned long *)0x40032050))
N#define TIMER2_TBV_R            (*((volatile unsigned long *)0x40032054))
N#define TIMER2_RTCPD_R          (*((volatile unsigned long *)0x40032058))
N#define TIMER2_TAPS_R           (*((volatile unsigned long *)0x4003205C))
N#define TIMER2_TBPS_R           (*((volatile unsigned long *)0x40032060))
N#define TIMER2_TAPV_R           (*((volatile unsigned long *)0x40032064))
N#define TIMER2_TBPV_R           (*((volatile unsigned long *)0x40032068))
N#define TIMER2_PP_R             (*((volatile unsigned long *)0x40032FC0))
N
N//*****************************************************************************
N//
N// Timer registers (TIMER3)
N//
N//*****************************************************************************
N#define TIMER3_CFG_R            (*((volatile unsigned long *)0x40033000))
N#define TIMER3_TAMR_R           (*((volatile unsigned long *)0x40033004))
N#define TIMER3_TBMR_R           (*((volatile unsigned long *)0x40033008))
N#define TIMER3_CTL_R            (*((volatile unsigned long *)0x4003300C))
N#define TIMER3_SYNC_R           (*((volatile unsigned long *)0x40033010))
N#define TIMER3_IMR_R            (*((volatile unsigned long *)0x40033018))
N#define TIMER3_RIS_R            (*((volatile unsigned long *)0x4003301C))
N#define TIMER3_MIS_R            (*((volatile unsigned long *)0x40033020))
N#define TIMER3_ICR_R            (*((volatile unsigned long *)0x40033024))
N#define TIMER3_TAILR_R          (*((volatile unsigned long *)0x40033028))
N#define TIMER3_TBILR_R          (*((volatile unsigned long *)0x4003302C))
N#define TIMER3_TAMATCHR_R       (*((volatile unsigned long *)0x40033030))
N#define TIMER3_TBMATCHR_R       (*((volatile unsigned long *)0x40033034))
N#define TIMER3_TAPR_R           (*((volatile unsigned long *)0x40033038))
N#define TIMER3_TBPR_R           (*((volatile unsigned long *)0x4003303C))
N#define TIMER3_TAPMR_R          (*((volatile unsigned long *)0x40033040))
N#define TIMER3_TBPMR_R          (*((volatile unsigned long *)0x40033044))
N#define TIMER3_TAR_R            (*((volatile unsigned long *)0x40033048))
N#define TIMER3_TBR_R            (*((volatile unsigned long *)0x4003304C))
N#define TIMER3_TAV_R            (*((volatile unsigned long *)0x40033050))
N#define TIMER3_TBV_R            (*((volatile unsigned long *)0x40033054))
N#define TIMER3_RTCPD_R          (*((volatile unsigned long *)0x40033058))
N#define TIMER3_TAPS_R           (*((volatile unsigned long *)0x4003305C))
N#define TIMER3_TBPS_R           (*((volatile unsigned long *)0x40033060))
N#define TIMER3_TAPV_R           (*((volatile unsigned long *)0x40033064))
N#define TIMER3_TBPV_R           (*((volatile unsigned long *)0x40033068))
N#define TIMER3_PP_R             (*((volatile unsigned long *)0x40033FC0))
N
N//*****************************************************************************
N//
N// Timer registers (TIMER4)
N//
N//*****************************************************************************
N#define TIMER4_CFG_R            (*((volatile unsigned long *)0x40034000))
N#define TIMER4_TAMR_R           (*((volatile unsigned long *)0x40034004))
N#define TIMER4_TBMR_R           (*((volatile unsigned long *)0x40034008))
N#define TIMER4_CTL_R            (*((volatile unsigned long *)0x4003400C))
N#define TIMER4_SYNC_R           (*((volatile unsigned long *)0x40034010))
N#define TIMER4_IMR_R            (*((volatile unsigned long *)0x40034018))
N#define TIMER4_RIS_R            (*((volatile unsigned long *)0x4003401C))
N#define TIMER4_MIS_R            (*((volatile unsigned long *)0x40034020))
N#define TIMER4_ICR_R            (*((volatile unsigned long *)0x40034024))
N#define TIMER4_TAILR_R          (*((volatile unsigned long *)0x40034028))
N#define TIMER4_TBILR_R          (*((volatile unsigned long *)0x4003402C))
N#define TIMER4_TAMATCHR_R       (*((volatile unsigned long *)0x40034030))
N#define TIMER4_TBMATCHR_R       (*((volatile unsigned long *)0x40034034))
N#define TIMER4_TAPR_R           (*((volatile unsigned long *)0x40034038))
N#define TIMER4_TBPR_R           (*((volatile unsigned long *)0x4003403C))
N#define TIMER4_TAPMR_R          (*((volatile unsigned long *)0x40034040))
N#define TIMER4_TBPMR_R          (*((volatile unsigned long *)0x40034044))
N#define TIMER4_TAR_R            (*((volatile unsigned long *)0x40034048))
N#define TIMER4_TBR_R            (*((volatile unsigned long *)0x4003404C))
N#define TIMER4_TAV_R            (*((volatile unsigned long *)0x40034050))
N#define TIMER4_TBV_R            (*((volatile unsigned long *)0x40034054))
N#define TIMER4_RTCPD_R          (*((volatile unsigned long *)0x40034058))
N#define TIMER4_TAPS_R           (*((volatile unsigned long *)0x4003405C))
N#define TIMER4_TBPS_R           (*((volatile unsigned long *)0x40034060))
N#define TIMER4_TAPV_R           (*((volatile unsigned long *)0x40034064))
N#define TIMER4_TBPV_R           (*((volatile unsigned long *)0x40034068))
N#define TIMER4_PP_R             (*((volatile unsigned long *)0x40034FC0))
N
N//*****************************************************************************
N//
N// Timer registers (TIMER5)
N//
N//*****************************************************************************
N#define TIMER5_CFG_R            (*((volatile unsigned long *)0x40035000))
N#define TIMER5_TAMR_R           (*((volatile unsigned long *)0x40035004))
N#define TIMER5_TBMR_R           (*((volatile unsigned long *)0x40035008))
N#define TIMER5_CTL_R            (*((volatile unsigned long *)0x4003500C))
N#define TIMER5_SYNC_R           (*((volatile unsigned long *)0x40035010))
N#define TIMER5_IMR_R            (*((volatile unsigned long *)0x40035018))
N#define TIMER5_RIS_R            (*((volatile unsigned long *)0x4003501C))
N#define TIMER5_MIS_R            (*((volatile unsigned long *)0x40035020))
N#define TIMER5_ICR_R            (*((volatile unsigned long *)0x40035024))
N#define TIMER5_TAILR_R          (*((volatile unsigned long *)0x40035028))
N#define TIMER5_TBILR_R          (*((volatile unsigned long *)0x4003502C))
N#define TIMER5_TAMATCHR_R       (*((volatile unsigned long *)0x40035030))
N#define TIMER5_TBMATCHR_R       (*((volatile unsigned long *)0x40035034))
N#define TIMER5_TAPR_R           (*((volatile unsigned long *)0x40035038))
N#define TIMER5_TBPR_R           (*((volatile unsigned long *)0x4003503C))
N#define TIMER5_TAPMR_R          (*((volatile unsigned long *)0x40035040))
N#define TIMER5_TBPMR_R          (*((volatile unsigned long *)0x40035044))
N#define TIMER5_TAR_R            (*((volatile unsigned long *)0x40035048))
N#define TIMER5_TBR_R            (*((volatile unsigned long *)0x4003504C))
N#define TIMER5_TAV_R            (*((volatile unsigned long *)0x40035050))
N#define TIMER5_TBV_R            (*((volatile unsigned long *)0x40035054))
N#define TIMER5_RTCPD_R          (*((volatile unsigned long *)0x40035058))
N#define TIMER5_TAPS_R           (*((volatile unsigned long *)0x4003505C))
N#define TIMER5_TBPS_R           (*((volatile unsigned long *)0x40035060))
N#define TIMER5_TAPV_R           (*((volatile unsigned long *)0x40035064))
N#define TIMER5_TBPV_R           (*((volatile unsigned long *)0x40035068))
N#define TIMER5_PP_R             (*((volatile unsigned long *)0x40035FC0))
N
N//*****************************************************************************
N//
N// Timer registers (WTIMER0)
N//
N//*****************************************************************************
N#define WTIMER0_CFG_R           (*((volatile unsigned long *)0x40036000))
N#define WTIMER0_TAMR_R          (*((volatile unsigned long *)0x40036004))
N#define WTIMER0_TBMR_R          (*((volatile unsigned long *)0x40036008))
N#define WTIMER0_CTL_R           (*((volatile unsigned long *)0x4003600C))
N#define WTIMER0_SYNC_R          (*((volatile unsigned long *)0x40036010))
N#define WTIMER0_IMR_R           (*((volatile unsigned long *)0x40036018))
N#define WTIMER0_RIS_R           (*((volatile unsigned long *)0x4003601C))
N#define WTIMER0_MIS_R           (*((volatile unsigned long *)0x40036020))
N#define WTIMER0_ICR_R           (*((volatile unsigned long *)0x40036024))
N#define WTIMER0_TAILR_R         (*((volatile unsigned long *)0x40036028))
N#define WTIMER0_TBILR_R         (*((volatile unsigned long *)0x4003602C))
N#define WTIMER0_TAMATCHR_R      (*((volatile unsigned long *)0x40036030))
N#define WTIMER0_TBMATCHR_R      (*((volatile unsigned long *)0x40036034))
N#define WTIMER0_TAPR_R          (*((volatile unsigned long *)0x40036038))
N#define WTIMER0_TBPR_R          (*((volatile unsigned long *)0x4003603C))
N#define WTIMER0_TAPMR_R         (*((volatile unsigned long *)0x40036040))
N#define WTIMER0_TBPMR_R         (*((volatile unsigned long *)0x40036044))
N#define WTIMER0_TAR_R           (*((volatile unsigned long *)0x40036048))
N#define WTIMER0_TBR_R           (*((volatile unsigned long *)0x4003604C))
N#define WTIMER0_TAV_R           (*((volatile unsigned long *)0x40036050))
N#define WTIMER0_TBV_R           (*((volatile unsigned long *)0x40036054))
N#define WTIMER0_RTCPD_R         (*((volatile unsigned long *)0x40036058))
N#define WTIMER0_TAPS_R          (*((volatile unsigned long *)0x4003605C))
N#define WTIMER0_TBPS_R          (*((volatile unsigned long *)0x40036060))
N#define WTIMER0_TAPV_R          (*((volatile unsigned long *)0x40036064))
N#define WTIMER0_TBPV_R          (*((volatile unsigned long *)0x40036068))
N#define WTIMER0_PP_R            (*((volatile unsigned long *)0x40036FC0))
N
N//*****************************************************************************
N//
N// Timer registers (WTIMER1)
N//
N//*****************************************************************************
N#define WTIMER1_CFG_R           (*((volatile unsigned long *)0x40037000))
N#define WTIMER1_TAMR_R          (*((volatile unsigned long *)0x40037004))
N#define WTIMER1_TBMR_R          (*((volatile unsigned long *)0x40037008))
N#define WTIMER1_CTL_R           (*((volatile unsigned long *)0x4003700C))
N#define WTIMER1_SYNC_R          (*((volatile unsigned long *)0x40037010))
N#define WTIMER1_IMR_R           (*((volatile unsigned long *)0x40037018))
N#define WTIMER1_RIS_R           (*((volatile unsigned long *)0x4003701C))
N#define WTIMER1_MIS_R           (*((volatile unsigned long *)0x40037020))
N#define WTIMER1_ICR_R           (*((volatile unsigned long *)0x40037024))
N#define WTIMER1_TAILR_R         (*((volatile unsigned long *)0x40037028))
N#define WTIMER1_TBILR_R         (*((volatile unsigned long *)0x4003702C))
N#define WTIMER1_TAMATCHR_R      (*((volatile unsigned long *)0x40037030))
N#define WTIMER1_TBMATCHR_R      (*((volatile unsigned long *)0x40037034))
N#define WTIMER1_TAPR_R          (*((volatile unsigned long *)0x40037038))
N#define WTIMER1_TBPR_R          (*((volatile unsigned long *)0x4003703C))
N#define WTIMER1_TAPMR_R         (*((volatile unsigned long *)0x40037040))
N#define WTIMER1_TBPMR_R         (*((volatile unsigned long *)0x40037044))
N#define WTIMER1_TAR_R           (*((volatile unsigned long *)0x40037048))
N#define WTIMER1_TBR_R           (*((volatile unsigned long *)0x4003704C))
N#define WTIMER1_TAV_R           (*((volatile unsigned long *)0x40037050))
N#define WTIMER1_TBV_R           (*((volatile unsigned long *)0x40037054))
N#define WTIMER1_RTCPD_R         (*((volatile unsigned long *)0x40037058))
N#define WTIMER1_TAPS_R          (*((volatile unsigned long *)0x4003705C))
N#define WTIMER1_TBPS_R          (*((volatile unsigned long *)0x40037060))
N#define WTIMER1_TAPV_R          (*((volatile unsigned long *)0x40037064))
N#define WTIMER1_TBPV_R          (*((volatile unsigned long *)0x40037068))
N#define WTIMER1_PP_R            (*((volatile unsigned long *)0x40037FC0))
N
N//*****************************************************************************
N//
N// ADC registers (ADC0)
N//
N//*****************************************************************************
N#define ADC0_ACTSS_R            (*((volatile unsigned long *)0x40038000))
N#define ADC0_RIS_R              (*((volatile unsigned long *)0x40038004))
N#define ADC0_IM_R               (*((volatile unsigned long *)0x40038008))
N#define ADC0_ISC_R              (*((volatile unsigned long *)0x4003800C))
N#define ADC0_OSTAT_R            (*((volatile unsigned long *)0x40038010))
N#define ADC0_EMUX_R             (*((volatile unsigned long *)0x40038014))
N#define ADC0_USTAT_R            (*((volatile unsigned long *)0x40038018))
N#define ADC0_TSSEL_R            (*((volatile unsigned long *)0x4003801C))
N#define ADC0_SSPRI_R            (*((volatile unsigned long *)0x40038020))
N#define ADC0_SPC_R              (*((volatile unsigned long *)0x40038024))
N#define ADC0_PSSI_R             (*((volatile unsigned long *)0x40038028))
N#define ADC0_SAC_R              (*((volatile unsigned long *)0x40038030))
N#define ADC0_DCISC_R            (*((volatile unsigned long *)0x40038034))
N#define ADC0_CTL_R              (*((volatile unsigned long *)0x40038038))
N#define ADC0_SSMUX0_R           (*((volatile unsigned long *)0x40038040))
N#define ADC0_SSCTL0_R           (*((volatile unsigned long *)0x40038044))
N#define ADC0_SSFIFO0_R          (*((volatile unsigned long *)0x40038048))
N#define ADC0_SSFSTAT0_R         (*((volatile unsigned long *)0x4003804C))
N#define ADC0_SSOP0_R            (*((volatile unsigned long *)0x40038050))
N#define ADC0_SSDC0_R            (*((volatile unsigned long *)0x40038054))
N#define ADC0_SSMUX1_R           (*((volatile unsigned long *)0x40038060))
N#define ADC0_SSCTL1_R           (*((volatile unsigned long *)0x40038064))
N#define ADC0_SSFIFO1_R          (*((volatile unsigned long *)0x40038068))
N#define ADC0_SSFSTAT1_R         (*((volatile unsigned long *)0x4003806C))
N#define ADC0_SSOP1_R            (*((volatile unsigned long *)0x40038070))
N#define ADC0_SSDC1_R            (*((volatile unsigned long *)0x40038074))
N#define ADC0_SSMUX2_R           (*((volatile unsigned long *)0x40038080))
N#define ADC0_SSCTL2_R           (*((volatile unsigned long *)0x40038084))
N#define ADC0_SSFIFO2_R          (*((volatile unsigned long *)0x40038088))
N#define ADC0_SSFSTAT2_R         (*((volatile unsigned long *)0x4003808C))
N#define ADC0_SSOP2_R            (*((volatile unsigned long *)0x40038090))
N#define ADC0_SSDC2_R            (*((volatile unsigned long *)0x40038094))
N#define ADC0_SSMUX3_R           (*((volatile unsigned long *)0x400380A0))
N#define ADC0_SSCTL3_R           (*((volatile unsigned long *)0x400380A4))
N#define ADC0_SSFIFO3_R          (*((volatile unsigned long *)0x400380A8))
N#define ADC0_SSFSTAT3_R         (*((volatile unsigned long *)0x400380AC))
N#define ADC0_SSOP3_R            (*((volatile unsigned long *)0x400380B0))
N#define ADC0_SSDC3_R            (*((volatile unsigned long *)0x400380B4))
N#define ADC0_DCRIC_R            (*((volatile unsigned long *)0x40038D00))
N#define ADC0_DCCTL0_R           (*((volatile unsigned long *)0x40038E00))
N#define ADC0_DCCTL1_R           (*((volatile unsigned long *)0x40038E04))
N#define ADC0_DCCTL2_R           (*((volatile unsigned long *)0x40038E08))
N#define ADC0_DCCTL3_R           (*((volatile unsigned long *)0x40038E0C))
N#define ADC0_DCCTL4_R           (*((volatile unsigned long *)0x40038E10))
N#define ADC0_DCCTL5_R           (*((volatile unsigned long *)0x40038E14))
N#define ADC0_DCCTL6_R           (*((volatile unsigned long *)0x40038E18))
N#define ADC0_DCCTL7_R           (*((volatile unsigned long *)0x40038E1C))
N#define ADC0_DCCMP0_R           (*((volatile unsigned long *)0x40038E40))
N#define ADC0_DCCMP1_R           (*((volatile unsigned long *)0x40038E44))
N#define ADC0_DCCMP2_R           (*((volatile unsigned long *)0x40038E48))
N#define ADC0_DCCMP3_R           (*((volatile unsigned long *)0x40038E4C))
N#define ADC0_DCCMP4_R           (*((volatile unsigned long *)0x40038E50))
N#define ADC0_DCCMP5_R           (*((volatile unsigned long *)0x40038E54))
N#define ADC0_DCCMP6_R           (*((volatile unsigned long *)0x40038E58))
N#define ADC0_DCCMP7_R           (*((volatile unsigned long *)0x40038E5C))
N#define ADC0_PP_R               (*((volatile unsigned long *)0x40038FC0))
N#define ADC0_PC_R               (*((volatile unsigned long *)0x40038FC4))
N#define ADC0_CC_R               (*((volatile unsigned long *)0x40038FC8))
N
N//*****************************************************************************
N//
N// ADC registers (ADC1)
N//
N//*****************************************************************************
N#define ADC1_ACTSS_R            (*((volatile unsigned long *)0x40039000))
N#define ADC1_RIS_R              (*((volatile unsigned long *)0x40039004))
N#define ADC1_IM_R               (*((volatile unsigned long *)0x40039008))
N#define ADC1_ISC_R              (*((volatile unsigned long *)0x4003900C))
N#define ADC1_OSTAT_R            (*((volatile unsigned long *)0x40039010))
N#define ADC1_EMUX_R             (*((volatile unsigned long *)0x40039014))
N#define ADC1_USTAT_R            (*((volatile unsigned long *)0x40039018))
N#define ADC1_TSSEL_R            (*((volatile unsigned long *)0x4003901C))
N#define ADC1_SSPRI_R            (*((volatile unsigned long *)0x40039020))
N#define ADC1_SPC_R              (*((volatile unsigned long *)0x40039024))
N#define ADC1_PSSI_R             (*((volatile unsigned long *)0x40039028))
N#define ADC1_SAC_R              (*((volatile unsigned long *)0x40039030))
N#define ADC1_DCISC_R            (*((volatile unsigned long *)0x40039034))
N#define ADC1_CTL_R              (*((volatile unsigned long *)0x40039038))
N#define ADC1_SSMUX0_R           (*((volatile unsigned long *)0x40039040))
N#define ADC1_SSCTL0_R           (*((volatile unsigned long *)0x40039044))
N#define ADC1_SSFIFO0_R          (*((volatile unsigned long *)0x40039048))
N#define ADC1_SSFSTAT0_R         (*((volatile unsigned long *)0x4003904C))
N#define ADC1_SSOP0_R            (*((volatile unsigned long *)0x40039050))
N#define ADC1_SSDC0_R            (*((volatile unsigned long *)0x40039054))
N#define ADC1_SSMUX1_R           (*((volatile unsigned long *)0x40039060))
N#define ADC1_SSCTL1_R           (*((volatile unsigned long *)0x40039064))
N#define ADC1_SSFIFO1_R          (*((volatile unsigned long *)0x40039068))
N#define ADC1_SSFSTAT1_R         (*((volatile unsigned long *)0x4003906C))
N#define ADC1_SSOP1_R            (*((volatile unsigned long *)0x40039070))
N#define ADC1_SSDC1_R            (*((volatile unsigned long *)0x40039074))
N#define ADC1_SSMUX2_R           (*((volatile unsigned long *)0x40039080))
N#define ADC1_SSCTL2_R           (*((volatile unsigned long *)0x40039084))
N#define ADC1_SSFIFO2_R          (*((volatile unsigned long *)0x40039088))
N#define ADC1_SSFSTAT2_R         (*((volatile unsigned long *)0x4003908C))
N#define ADC1_SSOP2_R            (*((volatile unsigned long *)0x40039090))
N#define ADC1_SSDC2_R            (*((volatile unsigned long *)0x40039094))
N#define ADC1_SSMUX3_R           (*((volatile unsigned long *)0x400390A0))
N#define ADC1_SSCTL3_R           (*((volatile unsigned long *)0x400390A4))
N#define ADC1_SSFIFO3_R          (*((volatile unsigned long *)0x400390A8))
N#define ADC1_SSFSTAT3_R         (*((volatile unsigned long *)0x400390AC))
N#define ADC1_SSOP3_R            (*((volatile unsigned long *)0x400390B0))
N#define ADC1_SSDC3_R            (*((volatile unsigned long *)0x400390B4))
N#define ADC1_DCRIC_R            (*((volatile unsigned long *)0x40039D00))
N#define ADC1_DCCTL0_R           (*((volatile unsigned long *)0x40039E00))
N#define ADC1_DCCTL1_R           (*((volatile unsigned long *)0x40039E04))
N#define ADC1_DCCTL2_R           (*((volatile unsigned long *)0x40039E08))
N#define ADC1_DCCTL3_R           (*((volatile unsigned long *)0x40039E0C))
N#define ADC1_DCCTL4_R           (*((volatile unsigned long *)0x40039E10))
N#define ADC1_DCCTL5_R           (*((volatile unsigned long *)0x40039E14))
N#define ADC1_DCCTL6_R           (*((volatile unsigned long *)0x40039E18))
N#define ADC1_DCCTL7_R           (*((volatile unsigned long *)0x40039E1C))
N#define ADC1_DCCMP0_R           (*((volatile unsigned long *)0x40039E40))
N#define ADC1_DCCMP1_R           (*((volatile unsigned long *)0x40039E44))
N#define ADC1_DCCMP2_R           (*((volatile unsigned long *)0x40039E48))
N#define ADC1_DCCMP3_R           (*((volatile unsigned long *)0x40039E4C))
N#define ADC1_DCCMP4_R           (*((volatile unsigned long *)0x40039E50))
N#define ADC1_DCCMP5_R           (*((volatile unsigned long *)0x40039E54))
N#define ADC1_DCCMP6_R           (*((volatile unsigned long *)0x40039E58))
N#define ADC1_DCCMP7_R           (*((volatile unsigned long *)0x40039E5C))
N#define ADC1_PP_R               (*((volatile unsigned long *)0x40039FC0))
N#define ADC1_PC_R               (*((volatile unsigned long *)0x40039FC4))
N#define ADC1_CC_R               (*((volatile unsigned long *)0x40039FC8))
N
N//*****************************************************************************
N//
N// Comparator registers (COMP)
N//
N//*****************************************************************************
N#define COMP_ACMIS_R            (*((volatile unsigned long *)0x4003C000))
N#define COMP_ACRIS_R            (*((volatile unsigned long *)0x4003C004))
N#define COMP_ACINTEN_R          (*((volatile unsigned long *)0x4003C008))
N#define COMP_ACREFCTL_R         (*((volatile unsigned long *)0x4003C010))
N#define COMP_ACSTAT0_R          (*((volatile unsigned long *)0x4003C020))
N#define COMP_ACCTL0_R           (*((volatile unsigned long *)0x4003C024))
N#define COMP_ACSTAT1_R          (*((volatile unsigned long *)0x4003C040))
N#define COMP_ACCTL1_R           (*((volatile unsigned long *)0x4003C044))
N#define COMP_PP_R               (*((volatile unsigned long *)0x4003CFC0))
N
N//*****************************************************************************
N//
N// CAN registers (CAN0)
N//
N//*****************************************************************************
N#define CAN0_CTL_R              (*((volatile unsigned long *)0x40040000))
N#define CAN0_STS_R              (*((volatile unsigned long *)0x40040004))
N#define CAN0_ERR_R              (*((volatile unsigned long *)0x40040008))
N#define CAN0_BIT_R              (*((volatile unsigned long *)0x4004000C))
N#define CAN0_INT_R              (*((volatile unsigned long *)0x40040010))
N#define CAN0_TST_R              (*((volatile unsigned long *)0x40040014))
N#define CAN0_BRPE_R             (*((volatile unsigned long *)0x40040018))
N#define CAN0_IF1CRQ_R           (*((volatile unsigned long *)0x40040020))
N#define CAN0_IF1CMSK_R          (*((volatile unsigned long *)0x40040024))
N#define CAN0_IF1MSK1_R          (*((volatile unsigned long *)0x40040028))
N#define CAN0_IF1MSK2_R          (*((volatile unsigned long *)0x4004002C))
N#define CAN0_IF1ARB1_R          (*((volatile unsigned long *)0x40040030))
N#define CAN0_IF1ARB2_R          (*((volatile unsigned long *)0x40040034))
N#define CAN0_IF1MCTL_R          (*((volatile unsigned long *)0x40040038))
N#define CAN0_IF1DA1_R           (*((volatile unsigned long *)0x4004003C))
N#define CAN0_IF1DA2_R           (*((volatile unsigned long *)0x40040040))
N#define CAN0_IF1DB1_R           (*((volatile unsigned long *)0x40040044))
N#define CAN0_IF1DB2_R           (*((volatile unsigned long *)0x40040048))
N#define CAN0_IF2CRQ_R           (*((volatile unsigned long *)0x40040080))
N#define CAN0_IF2CMSK_R          (*((volatile unsigned long *)0x40040084))
N#define CAN0_IF2MSK1_R          (*((volatile unsigned long *)0x40040088))
N#define CAN0_IF2MSK2_R          (*((volatile unsigned long *)0x4004008C))
N#define CAN0_IF2ARB1_R          (*((volatile unsigned long *)0x40040090))
N#define CAN0_IF2ARB2_R          (*((volatile unsigned long *)0x40040094))
N#define CAN0_IF2MCTL_R          (*((volatile unsigned long *)0x40040098))
N#define CAN0_IF2DA1_R           (*((volatile unsigned long *)0x4004009C))
N#define CAN0_IF2DA2_R           (*((volatile unsigned long *)0x400400A0))
N#define CAN0_IF2DB1_R           (*((volatile unsigned long *)0x400400A4))
N#define CAN0_IF2DB2_R           (*((volatile unsigned long *)0x400400A8))
N#define CAN0_TXRQ1_R            (*((volatile unsigned long *)0x40040100))
N#define CAN0_TXRQ2_R            (*((volatile unsigned long *)0x40040104))
N#define CAN0_NWDA1_R            (*((volatile unsigned long *)0x40040120))
N#define CAN0_NWDA2_R            (*((volatile unsigned long *)0x40040124))
N#define CAN0_MSG1INT_R          (*((volatile unsigned long *)0x40040140))
N#define CAN0_MSG2INT_R          (*((volatile unsigned long *)0x40040144))
N#define CAN0_MSG1VAL_R          (*((volatile unsigned long *)0x40040160))
N#define CAN0_MSG2VAL_R          (*((volatile unsigned long *)0x40040164))
N
N//*****************************************************************************
N//
N// CAN registers (CAN1)
N//
N//*****************************************************************************
N#define CAN1_CTL_R              (*((volatile unsigned long *)0x40041000))
N#define CAN1_STS_R              (*((volatile unsigned long *)0x40041004))
N#define CAN1_ERR_R              (*((volatile unsigned long *)0x40041008))
N#define CAN1_BIT_R              (*((volatile unsigned long *)0x4004100C))
N#define CAN1_INT_R              (*((volatile unsigned long *)0x40041010))
N#define CAN1_TST_R              (*((volatile unsigned long *)0x40041014))
N#define CAN1_BRPE_R             (*((volatile unsigned long *)0x40041018))
N#define CAN1_IF1CRQ_R           (*((volatile unsigned long *)0x40041020))
N#define CAN1_IF1CMSK_R          (*((volatile unsigned long *)0x40041024))
N#define CAN1_IF1MSK1_R          (*((volatile unsigned long *)0x40041028))
N#define CAN1_IF1MSK2_R          (*((volatile unsigned long *)0x4004102C))
N#define CAN1_IF1ARB1_R          (*((volatile unsigned long *)0x40041030))
N#define CAN1_IF1ARB2_R          (*((volatile unsigned long *)0x40041034))
N#define CAN1_IF1MCTL_R          (*((volatile unsigned long *)0x40041038))
N#define CAN1_IF1DA1_R           (*((volatile unsigned long *)0x4004103C))
N#define CAN1_IF1DA2_R           (*((volatile unsigned long *)0x40041040))
N#define CAN1_IF1DB1_R           (*((volatile unsigned long *)0x40041044))
N#define CAN1_IF1DB2_R           (*((volatile unsigned long *)0x40041048))
N#define CAN1_IF2CRQ_R           (*((volatile unsigned long *)0x40041080))
N#define CAN1_IF2CMSK_R          (*((volatile unsigned long *)0x40041084))
N#define CAN1_IF2MSK1_R          (*((volatile unsigned long *)0x40041088))
N#define CAN1_IF2MSK2_R          (*((volatile unsigned long *)0x4004108C))
N#define CAN1_IF2ARB1_R          (*((volatile unsigned long *)0x40041090))
N#define CAN1_IF2ARB2_R          (*((volatile unsigned long *)0x40041094))
N#define CAN1_IF2MCTL_R          (*((volatile unsigned long *)0x40041098))
N#define CAN1_IF2DA1_R           (*((volatile unsigned long *)0x4004109C))
N#define CAN1_IF2DA2_R           (*((volatile unsigned long *)0x400410A0))
N#define CAN1_IF2DB1_R           (*((volatile unsigned long *)0x400410A4))
N#define CAN1_IF2DB2_R           (*((volatile unsigned long *)0x400410A8))
N#define CAN1_TXRQ1_R            (*((volatile unsigned long *)0x40041100))
N#define CAN1_TXRQ2_R            (*((volatile unsigned long *)0x40041104))
N#define CAN1_NWDA1_R            (*((volatile unsigned long *)0x40041120))
N#define CAN1_NWDA2_R            (*((volatile unsigned long *)0x40041124))
N#define CAN1_MSG1INT_R          (*((volatile unsigned long *)0x40041140))
N#define CAN1_MSG2INT_R          (*((volatile unsigned long *)0x40041144))
N#define CAN1_MSG1VAL_R          (*((volatile unsigned long *)0x40041160))
N#define CAN1_MSG2VAL_R          (*((volatile unsigned long *)0x40041164))
N
N//*****************************************************************************
N//
N// Timer registers (WTIMER2)
N//
N//*****************************************************************************
N#define WTIMER2_CFG_R           (*((volatile unsigned long *)0x4004C000))
N#define WTIMER2_TAMR_R          (*((volatile unsigned long *)0x4004C004))
N#define WTIMER2_TBMR_R          (*((volatile unsigned long *)0x4004C008))
N#define WTIMER2_CTL_R           (*((volatile unsigned long *)0x4004C00C))
N#define WTIMER2_SYNC_R          (*((volatile unsigned long *)0x4004C010))
N#define WTIMER2_IMR_R           (*((volatile unsigned long *)0x4004C018))
N#define WTIMER2_RIS_R           (*((volatile unsigned long *)0x4004C01C))
N#define WTIMER2_MIS_R           (*((volatile unsigned long *)0x4004C020))
N#define WTIMER2_ICR_R           (*((volatile unsigned long *)0x4004C024))
N#define WTIMER2_TAILR_R         (*((volatile unsigned long *)0x4004C028))
N#define WTIMER2_TBILR_R         (*((volatile unsigned long *)0x4004C02C))
N#define WTIMER2_TAMATCHR_R      (*((volatile unsigned long *)0x4004C030))
N#define WTIMER2_TBMATCHR_R      (*((volatile unsigned long *)0x4004C034))
N#define WTIMER2_TAPR_R          (*((volatile unsigned long *)0x4004C038))
N#define WTIMER2_TBPR_R          (*((volatile unsigned long *)0x4004C03C))
N#define WTIMER2_TAPMR_R         (*((volatile unsigned long *)0x4004C040))
N#define WTIMER2_TBPMR_R         (*((volatile unsigned long *)0x4004C044))
N#define WTIMER2_TAR_R           (*((volatile unsigned long *)0x4004C048))
N#define WTIMER2_TBR_R           (*((volatile unsigned long *)0x4004C04C))
N#define WTIMER2_TAV_R           (*((volatile unsigned long *)0x4004C050))
N#define WTIMER2_TBV_R           (*((volatile unsigned long *)0x4004C054))
N#define WTIMER2_RTCPD_R         (*((volatile unsigned long *)0x4004C058))
N#define WTIMER2_TAPS_R          (*((volatile unsigned long *)0x4004C05C))
N#define WTIMER2_TBPS_R          (*((volatile unsigned long *)0x4004C060))
N#define WTIMER2_TAPV_R          (*((volatile unsigned long *)0x4004C064))
N#define WTIMER2_TBPV_R          (*((volatile unsigned long *)0x4004C068))
N#define WTIMER2_PP_R            (*((volatile unsigned long *)0x4004CFC0))
N
N//*****************************************************************************
N//
N// Timer registers (WTIMER3)
N//
N//*****************************************************************************
N#define WTIMER3_CFG_R           (*((volatile unsigned long *)0x4004D000))
N#define WTIMER3_TAMR_R          (*((volatile unsigned long *)0x4004D004))
N#define WTIMER3_TBMR_R          (*((volatile unsigned long *)0x4004D008))
N#define WTIMER3_CTL_R           (*((volatile unsigned long *)0x4004D00C))
N#define WTIMER3_SYNC_R          (*((volatile unsigned long *)0x4004D010))
N#define WTIMER3_IMR_R           (*((volatile unsigned long *)0x4004D018))
N#define WTIMER3_RIS_R           (*((volatile unsigned long *)0x4004D01C))
N#define WTIMER3_MIS_R           (*((volatile unsigned long *)0x4004D020))
N#define WTIMER3_ICR_R           (*((volatile unsigned long *)0x4004D024))
N#define WTIMER3_TAILR_R         (*((volatile unsigned long *)0x4004D028))
N#define WTIMER3_TBILR_R         (*((volatile unsigned long *)0x4004D02C))
N#define WTIMER3_TAMATCHR_R      (*((volatile unsigned long *)0x4004D030))
N#define WTIMER3_TBMATCHR_R      (*((volatile unsigned long *)0x4004D034))
N#define WTIMER3_TAPR_R          (*((volatile unsigned long *)0x4004D038))
N#define WTIMER3_TBPR_R          (*((volatile unsigned long *)0x4004D03C))
N#define WTIMER3_TAPMR_R         (*((volatile unsigned long *)0x4004D040))
N#define WTIMER3_TBPMR_R         (*((volatile unsigned long *)0x4004D044))
N#define WTIMER3_TAR_R           (*((volatile unsigned long *)0x4004D048))
N#define WTIMER3_TBR_R           (*((volatile unsigned long *)0x4004D04C))
N#define WTIMER3_TAV_R           (*((volatile unsigned long *)0x4004D050))
N#define WTIMER3_TBV_R           (*((volatile unsigned long *)0x4004D054))
N#define WTIMER3_RTCPD_R         (*((volatile unsigned long *)0x4004D058))
N#define WTIMER3_TAPS_R          (*((volatile unsigned long *)0x4004D05C))
N#define WTIMER3_TBPS_R          (*((volatile unsigned long *)0x4004D060))
N#define WTIMER3_TAPV_R          (*((volatile unsigned long *)0x4004D064))
N#define WTIMER3_TBPV_R          (*((volatile unsigned long *)0x4004D068))
N#define WTIMER3_PP_R            (*((volatile unsigned long *)0x4004DFC0))
N
N//*****************************************************************************
N//
N// Timer registers (WTIMER4)
N//
N//*****************************************************************************
N#define WTIMER4_CFG_R           (*((volatile unsigned long *)0x4004E000))
N#define WTIMER4_TAMR_R          (*((volatile unsigned long *)0x4004E004))
N#define WTIMER4_TBMR_R          (*((volatile unsigned long *)0x4004E008))
N#define WTIMER4_CTL_R           (*((volatile unsigned long *)0x4004E00C))
N#define WTIMER4_SYNC_R          (*((volatile unsigned long *)0x4004E010))
N#define WTIMER4_IMR_R           (*((volatile unsigned long *)0x4004E018))
N#define WTIMER4_RIS_R           (*((volatile unsigned long *)0x4004E01C))
N#define WTIMER4_MIS_R           (*((volatile unsigned long *)0x4004E020))
N#define WTIMER4_ICR_R           (*((volatile unsigned long *)0x4004E024))
N#define WTIMER4_TAILR_R         (*((volatile unsigned long *)0x4004E028))
N#define WTIMER4_TBILR_R         (*((volatile unsigned long *)0x4004E02C))
N#define WTIMER4_TAMATCHR_R      (*((volatile unsigned long *)0x4004E030))
N#define WTIMER4_TBMATCHR_R      (*((volatile unsigned long *)0x4004E034))
N#define WTIMER4_TAPR_R          (*((volatile unsigned long *)0x4004E038))
N#define WTIMER4_TBPR_R          (*((volatile unsigned long *)0x4004E03C))
N#define WTIMER4_TAPMR_R         (*((volatile unsigned long *)0x4004E040))
N#define WTIMER4_TBPMR_R         (*((volatile unsigned long *)0x4004E044))
N#define WTIMER4_TAR_R           (*((volatile unsigned long *)0x4004E048))
N#define WTIMER4_TBR_R           (*((volatile unsigned long *)0x4004E04C))
N#define WTIMER4_TAV_R           (*((volatile unsigned long *)0x4004E050))
N#define WTIMER4_TBV_R           (*((volatile unsigned long *)0x4004E054))
N#define WTIMER4_RTCPD_R         (*((volatile unsigned long *)0x4004E058))
N#define WTIMER4_TAPS_R          (*((volatile unsigned long *)0x4004E05C))
N#define WTIMER4_TBPS_R          (*((volatile unsigned long *)0x4004E060))
N#define WTIMER4_TAPV_R          (*((volatile unsigned long *)0x4004E064))
N#define WTIMER4_TBPV_R          (*((volatile unsigned long *)0x4004E068))
N#define WTIMER4_PP_R            (*((volatile unsigned long *)0x4004EFC0))
N
N//*****************************************************************************
N//
N// Timer registers (WTIMER5)
N//
N//*****************************************************************************
N#define WTIMER5_CFG_R           (*((volatile unsigned long *)0x4004F000))
N#define WTIMER5_TAMR_R          (*((volatile unsigned long *)0x4004F004))
N#define WTIMER5_TBMR_R          (*((volatile unsigned long *)0x4004F008))
N#define WTIMER5_CTL_R           (*((volatile unsigned long *)0x4004F00C))
N#define WTIMER5_SYNC_R          (*((volatile unsigned long *)0x4004F010))
N#define WTIMER5_IMR_R           (*((volatile unsigned long *)0x4004F018))
N#define WTIMER5_RIS_R           (*((volatile unsigned long *)0x4004F01C))
N#define WTIMER5_MIS_R           (*((volatile unsigned long *)0x4004F020))
N#define WTIMER5_ICR_R           (*((volatile unsigned long *)0x4004F024))
N#define WTIMER5_TAILR_R         (*((volatile unsigned long *)0x4004F028))
N#define WTIMER5_TBILR_R         (*((volatile unsigned long *)0x4004F02C))
N#define WTIMER5_TAMATCHR_R      (*((volatile unsigned long *)0x4004F030))
N#define WTIMER5_TBMATCHR_R      (*((volatile unsigned long *)0x4004F034))
N#define WTIMER5_TAPR_R          (*((volatile unsigned long *)0x4004F038))
N#define WTIMER5_TBPR_R          (*((volatile unsigned long *)0x4004F03C))
N#define WTIMER5_TAPMR_R         (*((volatile unsigned long *)0x4004F040))
N#define WTIMER5_TBPMR_R         (*((volatile unsigned long *)0x4004F044))
N#define WTIMER5_TAR_R           (*((volatile unsigned long *)0x4004F048))
N#define WTIMER5_TBR_R           (*((volatile unsigned long *)0x4004F04C))
N#define WTIMER5_TAV_R           (*((volatile unsigned long *)0x4004F050))
N#define WTIMER5_TBV_R           (*((volatile unsigned long *)0x4004F054))
N#define WTIMER5_RTCPD_R         (*((volatile unsigned long *)0x4004F058))
N#define WTIMER5_TAPS_R          (*((volatile unsigned long *)0x4004F05C))
N#define WTIMER5_TBPS_R          (*((volatile unsigned long *)0x4004F060))
N#define WTIMER5_TAPV_R          (*((volatile unsigned long *)0x4004F064))
N#define WTIMER5_TBPV_R          (*((volatile unsigned long *)0x4004F068))
N#define WTIMER5_PP_R            (*((volatile unsigned long *)0x4004FFC0))
N
N//*****************************************************************************
N//
N// Univeral Serial Bus registers (USB0)
N//
N//*****************************************************************************
N#define USB0_FADDR_R            (*((volatile unsigned char *)0x40050000))
N#define USB0_POWER_R            (*((volatile unsigned char *)0x40050001))
N#define USB0_TXIS_R             (*((volatile unsigned short *)0x40050002))
N#define USB0_RXIS_R             (*((volatile unsigned short *)0x40050004))
N#define USB0_TXIE_R             (*((volatile unsigned short *)0x40050006))
N#define USB0_RXIE_R             (*((volatile unsigned short *)0x40050008))
N#define USB0_IS_R               (*((volatile unsigned char *)0x4005000A))
N#define USB0_IE_R               (*((volatile unsigned char *)0x4005000B))
N#define USB0_FRAME_R            (*((volatile unsigned short *)0x4005000C))
N#define USB0_EPIDX_R            (*((volatile unsigned char *)0x4005000E))
N#define USB0_TEST_R             (*((volatile unsigned char *)0x4005000F))
N#define USB0_FIFO0_R            (*((volatile unsigned long *)0x40050020))
N#define USB0_FIFO1_R            (*((volatile unsigned long *)0x40050024))
N#define USB0_FIFO2_R            (*((volatile unsigned long *)0x40050028))
N#define USB0_FIFO3_R            (*((volatile unsigned long *)0x4005002C))
N#define USB0_FIFO4_R            (*((volatile unsigned long *)0x40050030))
N#define USB0_FIFO5_R            (*((volatile unsigned long *)0x40050034))
N#define USB0_FIFO6_R            (*((volatile unsigned long *)0x40050038))
N#define USB0_FIFO7_R            (*((volatile unsigned long *)0x4005003C))
N#define USB0_DEVCTL_R           (*((volatile unsigned char *)0x40050060))
N#define USB0_TXFIFOSZ_R         (*((volatile unsigned char *)0x40050062))
N#define USB0_RXFIFOSZ_R         (*((volatile unsigned char *)0x40050063))
N#define USB0_TXFIFOADD_R        (*((volatile unsigned short *)0x40050064))
N#define USB0_RXFIFOADD_R        (*((volatile unsigned short *)0x40050066))
N#define USB0_CONTIM_R           (*((volatile unsigned char *)0x4005007A))
N#define USB0_VPLEN_R            (*((volatile unsigned char *)0x4005007B))
N#define USB0_FSEOF_R            (*((volatile unsigned char *)0x4005007D))
N#define USB0_LSEOF_R            (*((volatile unsigned char *)0x4005007E))
N#define USB0_TXFUNCADDR0_R      (*((volatile unsigned char *)0x40050080))
N#define USB0_TXHUBADDR0_R       (*((volatile unsigned char *)0x40050082))
N#define USB0_TXHUBPORT0_R       (*((volatile unsigned char *)0x40050083))
N#define USB0_TXFUNCADDR1_R      (*((volatile unsigned char *)0x40050088))
N#define USB0_TXHUBADDR1_R       (*((volatile unsigned char *)0x4005008A))
N#define USB0_TXHUBPORT1_R       (*((volatile unsigned char *)0x4005008B))
N#define USB0_RXFUNCADDR1_R      (*((volatile unsigned char *)0x4005008C))
N#define USB0_RXHUBADDR1_R       (*((volatile unsigned char *)0x4005008E))
N#define USB0_RXHUBPORT1_R       (*((volatile unsigned char *)0x4005008F))
N#define USB0_TXFUNCADDR2_R      (*((volatile unsigned char *)0x40050090))
N#define USB0_TXHUBADDR2_R       (*((volatile unsigned char *)0x40050092))
N#define USB0_TXHUBPORT2_R       (*((volatile unsigned char *)0x40050093))
N#define USB0_RXFUNCADDR2_R      (*((volatile unsigned char *)0x40050094))
N#define USB0_RXHUBADDR2_R       (*((volatile unsigned char *)0x40050096))
N#define USB0_RXHUBPORT2_R       (*((volatile unsigned char *)0x40050097))
N#define USB0_TXFUNCADDR3_R      (*((volatile unsigned char *)0x40050098))
N#define USB0_TXHUBADDR3_R       (*((volatile unsigned char *)0x4005009A))
N#define USB0_TXHUBPORT3_R       (*((volatile unsigned char *)0x4005009B))
N#define USB0_RXFUNCADDR3_R      (*((volatile unsigned char *)0x4005009C))
N#define USB0_RXHUBADDR3_R       (*((volatile unsigned char *)0x4005009E))
N#define USB0_RXHUBPORT3_R       (*((volatile unsigned char *)0x4005009F))
N#define USB0_TXFUNCADDR4_R      (*((volatile unsigned char *)0x400500A0))
N#define USB0_TXHUBADDR4_R       (*((volatile unsigned char *)0x400500A2))
N#define USB0_TXHUBPORT4_R       (*((volatile unsigned char *)0x400500A3))
N#define USB0_RXFUNCADDR4_R      (*((volatile unsigned char *)0x400500A4))
N#define USB0_RXHUBADDR4_R       (*((volatile unsigned char *)0x400500A6))
N#define USB0_RXHUBPORT4_R       (*((volatile unsigned char *)0x400500A7))
N#define USB0_TXFUNCADDR5_R      (*((volatile unsigned char *)0x400500A8))
N#define USB0_TXHUBADDR5_R       (*((volatile unsigned char *)0x400500AA))
N#define USB0_TXHUBPORT5_R       (*((volatile unsigned char *)0x400500AB))
N#define USB0_RXFUNCADDR5_R      (*((volatile unsigned char *)0x400500AC))
N#define USB0_RXHUBADDR5_R       (*((volatile unsigned char *)0x400500AE))
N#define USB0_RXHUBPORT5_R       (*((volatile unsigned char *)0x400500AF))
N#define USB0_TXFUNCADDR6_R      (*((volatile unsigned char *)0x400500B0))
N#define USB0_TXHUBADDR6_R       (*((volatile unsigned char *)0x400500B2))
N#define USB0_TXHUBPORT6_R       (*((volatile unsigned char *)0x400500B3))
N#define USB0_RXFUNCADDR6_R      (*((volatile unsigned char *)0x400500B4))
N#define USB0_RXHUBADDR6_R       (*((volatile unsigned char *)0x400500B6))
N#define USB0_RXHUBPORT6_R       (*((volatile unsigned char *)0x400500B7))
N#define USB0_TXFUNCADDR7_R      (*((volatile unsigned char *)0x400500B8))
N#define USB0_TXHUBADDR7_R       (*((volatile unsigned char *)0x400500BA))
N#define USB0_TXHUBPORT7_R       (*((volatile unsigned char *)0x400500BB))
N#define USB0_RXFUNCADDR7_R      (*((volatile unsigned char *)0x400500BC))
N#define USB0_RXHUBADDR7_R       (*((volatile unsigned char *)0x400500BE))
N#define USB0_RXHUBPORT7_R       (*((volatile unsigned char *)0x400500BF))
N#define USB0_CSRL0_R            (*((volatile unsigned char *)0x40050102))
N#define USB0_CSRH0_R            (*((volatile unsigned char *)0x40050103))
N#define USB0_COUNT0_R           (*((volatile unsigned char *)0x40050108))
N#define USB0_TYPE0_R            (*((volatile unsigned char *)0x4005010A))
N#define USB0_NAKLMT_R           (*((volatile unsigned char *)0x4005010B))
N#define USB0_TXMAXP1_R          (*((volatile unsigned short *)0x40050110))
N#define USB0_TXCSRL1_R          (*((volatile unsigned char *)0x40050112))
N#define USB0_TXCSRH1_R          (*((volatile unsigned char *)0x40050113))
N#define USB0_RXMAXP1_R          (*((volatile unsigned short *)0x40050114))
N#define USB0_RXCSRL1_R          (*((volatile unsigned char *)0x40050116))
N#define USB0_RXCSRH1_R          (*((volatile unsigned char *)0x40050117))
N#define USB0_RXCOUNT1_R         (*((volatile unsigned short *)0x40050118))
N#define USB0_TXTYPE1_R          (*((volatile unsigned char *)0x4005011A))
N#define USB0_TXINTERVAL1_R      (*((volatile unsigned char *)0x4005011B))
N#define USB0_RXTYPE1_R          (*((volatile unsigned char *)0x4005011C))
N#define USB0_RXINTERVAL1_R      (*((volatile unsigned char *)0x4005011D))
N#define USB0_TXMAXP2_R          (*((volatile unsigned short *)0x40050120))
N#define USB0_TXCSRL2_R          (*((volatile unsigned char *)0x40050122))
N#define USB0_TXCSRH2_R          (*((volatile unsigned char *)0x40050123))
N#define USB0_RXMAXP2_R          (*((volatile unsigned short *)0x40050124))
N#define USB0_RXCSRL2_R          (*((volatile unsigned char *)0x40050126))
N#define USB0_RXCSRH2_R          (*((volatile unsigned char *)0x40050127))
N#define USB0_RXCOUNT2_R         (*((volatile unsigned short *)0x40050128))
N#define USB0_TXTYPE2_R          (*((volatile unsigned char *)0x4005012A))
N#define USB0_TXINTERVAL2_R      (*((volatile unsigned char *)0x4005012B))
N#define USB0_RXTYPE2_R          (*((volatile unsigned char *)0x4005012C))
N#define USB0_RXINTERVAL2_R      (*((volatile unsigned char *)0x4005012D))
N#define USB0_TXMAXP3_R          (*((volatile unsigned short *)0x40050130))
N#define USB0_TXCSRL3_R          (*((volatile unsigned char *)0x40050132))
N#define USB0_TXCSRH3_R          (*((volatile unsigned char *)0x40050133))
N#define USB0_RXMAXP3_R          (*((volatile unsigned short *)0x40050134))
N#define USB0_RXCSRL3_R          (*((volatile unsigned char *)0x40050136))
N#define USB0_RXCSRH3_R          (*((volatile unsigned char *)0x40050137))
N#define USB0_RXCOUNT3_R         (*((volatile unsigned short *)0x40050138))
N#define USB0_TXTYPE3_R          (*((volatile unsigned char *)0x4005013A))
N#define USB0_TXINTERVAL3_R      (*((volatile unsigned char *)0x4005013B))
N#define USB0_RXTYPE3_R          (*((volatile unsigned char *)0x4005013C))
N#define USB0_RXINTERVAL3_R      (*((volatile unsigned char *)0x4005013D))
N#define USB0_TXMAXP4_R          (*((volatile unsigned short *)0x40050140))
N#define USB0_TXCSRL4_R          (*((volatile unsigned char *)0x40050142))
N#define USB0_TXCSRH4_R          (*((volatile unsigned char *)0x40050143))
N#define USB0_RXMAXP4_R          (*((volatile unsigned short *)0x40050144))
N#define USB0_RXCSRL4_R          (*((volatile unsigned char *)0x40050146))
N#define USB0_RXCSRH4_R          (*((volatile unsigned char *)0x40050147))
N#define USB0_RXCOUNT4_R         (*((volatile unsigned short *)0x40050148))
N#define USB0_TXTYPE4_R          (*((volatile unsigned char *)0x4005014A))
N#define USB0_TXINTERVAL4_R      (*((volatile unsigned char *)0x4005014B))
N#define USB0_RXTYPE4_R          (*((volatile unsigned char *)0x4005014C))
N#define USB0_RXINTERVAL4_R      (*((volatile unsigned char *)0x4005014D))
N#define USB0_TXMAXP5_R          (*((volatile unsigned short *)0x40050150))
N#define USB0_TXCSRL5_R          (*((volatile unsigned char *)0x40050152))
N#define USB0_TXCSRH5_R          (*((volatile unsigned char *)0x40050153))
N#define USB0_RXMAXP5_R          (*((volatile unsigned short *)0x40050154))
N#define USB0_RXCSRL5_R          (*((volatile unsigned char *)0x40050156))
N#define USB0_RXCSRH5_R          (*((volatile unsigned char *)0x40050157))
N#define USB0_RXCOUNT5_R         (*((volatile unsigned short *)0x40050158))
N#define USB0_TXTYPE5_R          (*((volatile unsigned char *)0x4005015A))
N#define USB0_TXINTERVAL5_R      (*((volatile unsigned char *)0x4005015B))
N#define USB0_RXTYPE5_R          (*((volatile unsigned char *)0x4005015C))
N#define USB0_RXINTERVAL5_R      (*((volatile unsigned char *)0x4005015D))
N#define USB0_TXMAXP6_R          (*((volatile unsigned short *)0x40050160))
N#define USB0_TXCSRL6_R          (*((volatile unsigned char *)0x40050162))
N#define USB0_TXCSRH6_R          (*((volatile unsigned char *)0x40050163))
N#define USB0_RXMAXP6_R          (*((volatile unsigned short *)0x40050164))
N#define USB0_RXCSRL6_R          (*((volatile unsigned char *)0x40050166))
N#define USB0_RXCSRH6_R          (*((volatile unsigned char *)0x40050167))
N#define USB0_RXCOUNT6_R         (*((volatile unsigned short *)0x40050168))
N#define USB0_TXTYPE6_R          (*((volatile unsigned char *)0x4005016A))
N#define USB0_TXINTERVAL6_R      (*((volatile unsigned char *)0x4005016B))
N#define USB0_RXTYPE6_R          (*((volatile unsigned char *)0x4005016C))
N#define USB0_RXINTERVAL6_R      (*((volatile unsigned char *)0x4005016D))
N#define USB0_TXMAXP7_R          (*((volatile unsigned short *)0x40050170))
N#define USB0_TXCSRL7_R          (*((volatile unsigned char *)0x40050172))
N#define USB0_TXCSRH7_R          (*((volatile unsigned char *)0x40050173))
N#define USB0_RXMAXP7_R          (*((volatile unsigned short *)0x40050174))
N#define USB0_RXCSRL7_R          (*((volatile unsigned char *)0x40050176))
N#define USB0_RXCSRH7_R          (*((volatile unsigned char *)0x40050177))
N#define USB0_RXCOUNT7_R         (*((volatile unsigned short *)0x40050178))
N#define USB0_TXTYPE7_R          (*((volatile unsigned char *)0x4005017A))
N#define USB0_TXINTERVAL7_R      (*((volatile unsigned char *)0x4005017B))
N#define USB0_RXTYPE7_R          (*((volatile unsigned char *)0x4005017C))
N#define USB0_RXINTERVAL7_R      (*((volatile unsigned char *)0x4005017D))
N#define USB0_RQPKTCOUNT1_R      (*((volatile unsigned short *)0x40050304))
N#define USB0_RQPKTCOUNT2_R      (*((volatile unsigned short *)0x40050308))
N#define USB0_RQPKTCOUNT3_R      (*((volatile unsigned short *)0x4005030C))
N#define USB0_RQPKTCOUNT4_R      (*((volatile unsigned short *)0x40050310))
N#define USB0_RQPKTCOUNT5_R      (*((volatile unsigned short *)0x40050314))
N#define USB0_RQPKTCOUNT6_R      (*((volatile unsigned short *)0x40050318))
N#define USB0_RQPKTCOUNT7_R      (*((volatile unsigned short *)0x4005031C))
N#define USB0_RXDPKTBUFDIS_R     (*((volatile unsigned short *)0x40050340))
N#define USB0_TXDPKTBUFDIS_R     (*((volatile unsigned short *)0x40050342))
N#define USB0_EPC_R              (*((volatile unsigned long *)0x40050400))
N#define USB0_EPCRIS_R           (*((volatile unsigned long *)0x40050404))
N#define USB0_EPCIM_R            (*((volatile unsigned long *)0x40050408))
N#define USB0_EPCISC_R           (*((volatile unsigned long *)0x4005040C))
N#define USB0_DRRIS_R            (*((volatile unsigned long *)0x40050410))
N#define USB0_DRIM_R             (*((volatile unsigned long *)0x40050414))
N#define USB0_DRISC_R            (*((volatile unsigned long *)0x40050418))
N#define USB0_GPCS_R             (*((volatile unsigned long *)0x4005041C))
N#define USB0_VDC_R              (*((volatile unsigned long *)0x40050430))
N#define USB0_VDCRIS_R           (*((volatile unsigned long *)0x40050434))
N#define USB0_VDCIM_R            (*((volatile unsigned long *)0x40050438))
N#define USB0_VDCISC_R           (*((volatile unsigned long *)0x4005043C))
N#define USB0_IDVRIS_R           (*((volatile unsigned long *)0x40050444))
N#define USB0_IDVIM_R            (*((volatile unsigned long *)0x40050448))
N#define USB0_IDVISC_R           (*((volatile unsigned long *)0x4005044C))
N#define USB0_DMASEL_R           (*((volatile unsigned long *)0x40050450))
N#define USB0_PP_R               (*((volatile unsigned long *)0x40050FC0))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTA AHB)
N//
N//*****************************************************************************
N#define GPIO_PORTA_AHB_DATA_BITS_R                                            \
N                                ((volatile unsigned long *)0x40058000)
X#define GPIO_PORTA_AHB_DATA_BITS_R                                                                            ((volatile unsigned long *)0x40058000)
N#define GPIO_PORTA_AHB_DATA_R   (*((volatile unsigned long *)0x400583FC))
N#define GPIO_PORTA_AHB_DIR_R    (*((volatile unsigned long *)0x40058400))
N#define GPIO_PORTA_AHB_IS_R     (*((volatile unsigned long *)0x40058404))
N#define GPIO_PORTA_AHB_IBE_R    (*((volatile unsigned long *)0x40058408))
N#define GPIO_PORTA_AHB_IEV_R    (*((volatile unsigned long *)0x4005840C))
N#define GPIO_PORTA_AHB_IM_R     (*((volatile unsigned long *)0x40058410))
N#define GPIO_PORTA_AHB_RIS_R    (*((volatile unsigned long *)0x40058414))
N#define GPIO_PORTA_AHB_MIS_R    (*((volatile unsigned long *)0x40058418))
N#define GPIO_PORTA_AHB_ICR_R    (*((volatile unsigned long *)0x4005841C))
N#define GPIO_PORTA_AHB_AFSEL_R  (*((volatile unsigned long *)0x40058420))
N#define GPIO_PORTA_AHB_DR2R_R   (*((volatile unsigned long *)0x40058500))
N#define GPIO_PORTA_AHB_DR4R_R   (*((volatile unsigned long *)0x40058504))
N#define GPIO_PORTA_AHB_DR8R_R   (*((volatile unsigned long *)0x40058508))
N#define GPIO_PORTA_AHB_ODR_R    (*((volatile unsigned long *)0x4005850C))
N#define GPIO_PORTA_AHB_PUR_R    (*((volatile unsigned long *)0x40058510))
N#define GPIO_PORTA_AHB_PDR_R    (*((volatile unsigned long *)0x40058514))
N#define GPIO_PORTA_AHB_SLR_R    (*((volatile unsigned long *)0x40058518))
N#define GPIO_PORTA_AHB_DEN_R    (*((volatile unsigned long *)0x4005851C))
N#define GPIO_PORTA_AHB_LOCK_R   (*((volatile unsigned long *)0x40058520))
N#define GPIO_PORTA_AHB_CR_R     (*((volatile unsigned long *)0x40058524))
N#define GPIO_PORTA_AHB_AMSEL_R  (*((volatile unsigned long *)0x40058528))
N#define GPIO_PORTA_AHB_PCTL_R   (*((volatile unsigned long *)0x4005852C))
N#define GPIO_PORTA_AHB_ADCCTL_R (*((volatile unsigned long *)0x40058530))
N#define GPIO_PORTA_AHB_DMACTL_R (*((volatile unsigned long *)0x40058534))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTB AHB)
N//
N//*****************************************************************************
N#define GPIO_PORTB_AHB_DATA_BITS_R                                            \
N                                ((volatile unsigned long *)0x40059000)
X#define GPIO_PORTB_AHB_DATA_BITS_R                                                                            ((volatile unsigned long *)0x40059000)
N#define GPIO_PORTB_AHB_DATA_R   (*((volatile unsigned long *)0x400593FC))
N#define GPIO_PORTB_AHB_DIR_R    (*((volatile unsigned long *)0x40059400))
N#define GPIO_PORTB_AHB_IS_R     (*((volatile unsigned long *)0x40059404))
N#define GPIO_PORTB_AHB_IBE_R    (*((volatile unsigned long *)0x40059408))
N#define GPIO_PORTB_AHB_IEV_R    (*((volatile unsigned long *)0x4005940C))
N#define GPIO_PORTB_AHB_IM_R     (*((volatile unsigned long *)0x40059410))
N#define GPIO_PORTB_AHB_RIS_R    (*((volatile unsigned long *)0x40059414))
N#define GPIO_PORTB_AHB_MIS_R    (*((volatile unsigned long *)0x40059418))
N#define GPIO_PORTB_AHB_ICR_R    (*((volatile unsigned long *)0x4005941C))
N#define GPIO_PORTB_AHB_AFSEL_R  (*((volatile unsigned long *)0x40059420))
N#define GPIO_PORTB_AHB_DR2R_R   (*((volatile unsigned long *)0x40059500))
N#define GPIO_PORTB_AHB_DR4R_R   (*((volatile unsigned long *)0x40059504))
N#define GPIO_PORTB_AHB_DR8R_R   (*((volatile unsigned long *)0x40059508))
N#define GPIO_PORTB_AHB_ODR_R    (*((volatile unsigned long *)0x4005950C))
N#define GPIO_PORTB_AHB_PUR_R    (*((volatile unsigned long *)0x40059510))
N#define GPIO_PORTB_AHB_PDR_R    (*((volatile unsigned long *)0x40059514))
N#define GPIO_PORTB_AHB_SLR_R    (*((volatile unsigned long *)0x40059518))
N#define GPIO_PORTB_AHB_DEN_R    (*((volatile unsigned long *)0x4005951C))
N#define GPIO_PORTB_AHB_LOCK_R   (*((volatile unsigned long *)0x40059520))
N#define GPIO_PORTB_AHB_CR_R     (*((volatile unsigned long *)0x40059524))
N#define GPIO_PORTB_AHB_AMSEL_R  (*((volatile unsigned long *)0x40059528))
N#define GPIO_PORTB_AHB_PCTL_R   (*((volatile unsigned long *)0x4005952C))
N#define GPIO_PORTB_AHB_ADCCTL_R (*((volatile unsigned long *)0x40059530))
N#define GPIO_PORTB_AHB_DMACTL_R (*((volatile unsigned long *)0x40059534))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTC AHB)
N//
N//*****************************************************************************
N#define GPIO_PORTC_AHB_DATA_BITS_R                                            \
N                                ((volatile unsigned long *)0x4005A000)
X#define GPIO_PORTC_AHB_DATA_BITS_R                                                                            ((volatile unsigned long *)0x4005A000)
N#define GPIO_PORTC_AHB_DATA_R   (*((volatile unsigned long *)0x4005A3FC))
N#define GPIO_PORTC_AHB_DIR_R    (*((volatile unsigned long *)0x4005A400))
N#define GPIO_PORTC_AHB_IS_R     (*((volatile unsigned long *)0x4005A404))
N#define GPIO_PORTC_AHB_IBE_R    (*((volatile unsigned long *)0x4005A408))
N#define GPIO_PORTC_AHB_IEV_R    (*((volatile unsigned long *)0x4005A40C))
N#define GPIO_PORTC_AHB_IM_R     (*((volatile unsigned long *)0x4005A410))
N#define GPIO_PORTC_AHB_RIS_R    (*((volatile unsigned long *)0x4005A414))
N#define GPIO_PORTC_AHB_MIS_R    (*((volatile unsigned long *)0x4005A418))
N#define GPIO_PORTC_AHB_ICR_R    (*((volatile unsigned long *)0x4005A41C))
N#define GPIO_PORTC_AHB_AFSEL_R  (*((volatile unsigned long *)0x4005A420))
N#define GPIO_PORTC_AHB_DR2R_R   (*((volatile unsigned long *)0x4005A500))
N#define GPIO_PORTC_AHB_DR4R_R   (*((volatile unsigned long *)0x4005A504))
N#define GPIO_PORTC_AHB_DR8R_R   (*((volatile unsigned long *)0x4005A508))
N#define GPIO_PORTC_AHB_ODR_R    (*((volatile unsigned long *)0x4005A50C))
N#define GPIO_PORTC_AHB_PUR_R    (*((volatile unsigned long *)0x4005A510))
N#define GPIO_PORTC_AHB_PDR_R    (*((volatile unsigned long *)0x4005A514))
N#define GPIO_PORTC_AHB_SLR_R    (*((volatile unsigned long *)0x4005A518))
N#define GPIO_PORTC_AHB_DEN_R    (*((volatile unsigned long *)0x4005A51C))
N#define GPIO_PORTC_AHB_LOCK_R   (*((volatile unsigned long *)0x4005A520))
N#define GPIO_PORTC_AHB_CR_R     (*((volatile unsigned long *)0x4005A524))
N#define GPIO_PORTC_AHB_AMSEL_R  (*((volatile unsigned long *)0x4005A528))
N#define GPIO_PORTC_AHB_PCTL_R   (*((volatile unsigned long *)0x4005A52C))
N#define GPIO_PORTC_AHB_ADCCTL_R (*((volatile unsigned long *)0x4005A530))
N#define GPIO_PORTC_AHB_DMACTL_R (*((volatile unsigned long *)0x4005A534))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTD AHB)
N//
N//*****************************************************************************
N#define GPIO_PORTD_AHB_DATA_BITS_R                                            \
N                                ((volatile unsigned long *)0x4005B000)
X#define GPIO_PORTD_AHB_DATA_BITS_R                                                                            ((volatile unsigned long *)0x4005B000)
N#define GPIO_PORTD_AHB_DATA_R   (*((volatile unsigned long *)0x4005B3FC))
N#define GPIO_PORTD_AHB_DIR_R    (*((volatile unsigned long *)0x4005B400))
N#define GPIO_PORTD_AHB_IS_R     (*((volatile unsigned long *)0x4005B404))
N#define GPIO_PORTD_AHB_IBE_R    (*((volatile unsigned long *)0x4005B408))
N#define GPIO_PORTD_AHB_IEV_R    (*((volatile unsigned long *)0x4005B40C))
N#define GPIO_PORTD_AHB_IM_R     (*((volatile unsigned long *)0x4005B410))
N#define GPIO_PORTD_AHB_RIS_R    (*((volatile unsigned long *)0x4005B414))
N#define GPIO_PORTD_AHB_MIS_R    (*((volatile unsigned long *)0x4005B418))
N#define GPIO_PORTD_AHB_ICR_R    (*((volatile unsigned long *)0x4005B41C))
N#define GPIO_PORTD_AHB_AFSEL_R  (*((volatile unsigned long *)0x4005B420))
N#define GPIO_PORTD_AHB_DR2R_R   (*((volatile unsigned long *)0x4005B500))
N#define GPIO_PORTD_AHB_DR4R_R   (*((volatile unsigned long *)0x4005B504))
N#define GPIO_PORTD_AHB_DR8R_R   (*((volatile unsigned long *)0x4005B508))
N#define GPIO_PORTD_AHB_ODR_R    (*((volatile unsigned long *)0x4005B50C))
N#define GPIO_PORTD_AHB_PUR_R    (*((volatile unsigned long *)0x4005B510))
N#define GPIO_PORTD_AHB_PDR_R    (*((volatile unsigned long *)0x4005B514))
N#define GPIO_PORTD_AHB_SLR_R    (*((volatile unsigned long *)0x4005B518))
N#define GPIO_PORTD_AHB_DEN_R    (*((volatile unsigned long *)0x4005B51C))
N#define GPIO_PORTD_AHB_LOCK_R   (*((volatile unsigned long *)0x4005B520))
N#define GPIO_PORTD_AHB_CR_R     (*((volatile unsigned long *)0x4005B524))
N#define GPIO_PORTD_AHB_AMSEL_R  (*((volatile unsigned long *)0x4005B528))
N#define GPIO_PORTD_AHB_PCTL_R   (*((volatile unsigned long *)0x4005B52C))
N#define GPIO_PORTD_AHB_ADCCTL_R (*((volatile unsigned long *)0x4005B530))
N#define GPIO_PORTD_AHB_DMACTL_R (*((volatile unsigned long *)0x4005B534))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTE AHB)
N//
N//*****************************************************************************
N#define GPIO_PORTE_AHB_DATA_BITS_R                                            \
N                                ((volatile unsigned long *)0x4005C000)
X#define GPIO_PORTE_AHB_DATA_BITS_R                                                                            ((volatile unsigned long *)0x4005C000)
N#define GPIO_PORTE_AHB_DATA_R   (*((volatile unsigned long *)0x4005C3FC))
N#define GPIO_PORTE_AHB_DIR_R    (*((volatile unsigned long *)0x4005C400))
N#define GPIO_PORTE_AHB_IS_R     (*((volatile unsigned long *)0x4005C404))
N#define GPIO_PORTE_AHB_IBE_R    (*((volatile unsigned long *)0x4005C408))
N#define GPIO_PORTE_AHB_IEV_R    (*((volatile unsigned long *)0x4005C40C))
N#define GPIO_PORTE_AHB_IM_R     (*((volatile unsigned long *)0x4005C410))
N#define GPIO_PORTE_AHB_RIS_R    (*((volatile unsigned long *)0x4005C414))
N#define GPIO_PORTE_AHB_MIS_R    (*((volatile unsigned long *)0x4005C418))
N#define GPIO_PORTE_AHB_ICR_R    (*((volatile unsigned long *)0x4005C41C))
N#define GPIO_PORTE_AHB_AFSEL_R  (*((volatile unsigned long *)0x4005C420))
N#define GPIO_PORTE_AHB_DR2R_R   (*((volatile unsigned long *)0x4005C500))
N#define GPIO_PORTE_AHB_DR4R_R   (*((volatile unsigned long *)0x4005C504))
N#define GPIO_PORTE_AHB_DR8R_R   (*((volatile unsigned long *)0x4005C508))
N#define GPIO_PORTE_AHB_ODR_R    (*((volatile unsigned long *)0x4005C50C))
N#define GPIO_PORTE_AHB_PUR_R    (*((volatile unsigned long *)0x4005C510))
N#define GPIO_PORTE_AHB_PDR_R    (*((volatile unsigned long *)0x4005C514))
N#define GPIO_PORTE_AHB_SLR_R    (*((volatile unsigned long *)0x4005C518))
N#define GPIO_PORTE_AHB_DEN_R    (*((volatile unsigned long *)0x4005C51C))
N#define GPIO_PORTE_AHB_LOCK_R   (*((volatile unsigned long *)0x4005C520))
N#define GPIO_PORTE_AHB_CR_R     (*((volatile unsigned long *)0x4005C524))
N#define GPIO_PORTE_AHB_AMSEL_R  (*((volatile unsigned long *)0x4005C528))
N#define GPIO_PORTE_AHB_PCTL_R   (*((volatile unsigned long *)0x4005C52C))
N#define GPIO_PORTE_AHB_ADCCTL_R (*((volatile unsigned long *)0x4005C530))
N#define GPIO_PORTE_AHB_DMACTL_R (*((volatile unsigned long *)0x4005C534))
N
N//*****************************************************************************
N//
N// GPIO registers (PORTF AHB)
N//
N//*****************************************************************************
N#define GPIO_PORTF_AHB_DATA_BITS_R                                            \
N                                ((volatile unsigned long *)0x4005D000)
X#define GPIO_PORTF_AHB_DATA_BITS_R                                                                            ((volatile unsigned long *)0x4005D000)
N#define GPIO_PORTF_AHB_DATA_R   (*((volatile unsigned long *)0x4005D3FC))
N#define GPIO_PORTF_AHB_DIR_R    (*((volatile unsigned long *)0x4005D400))
N#define GPIO_PORTF_AHB_IS_R     (*((volatile unsigned long *)0x4005D404))
N#define GPIO_PORTF_AHB_IBE_R    (*((volatile unsigned long *)0x4005D408))
N#define GPIO_PORTF_AHB_IEV_R    (*((volatile unsigned long *)0x4005D40C))
N#define GPIO_PORTF_AHB_IM_R     (*((volatile unsigned long *)0x4005D410))
N#define GPIO_PORTF_AHB_RIS_R    (*((volatile unsigned long *)0x4005D414))
N#define GPIO_PORTF_AHB_MIS_R    (*((volatile unsigned long *)0x4005D418))
N#define GPIO_PORTF_AHB_ICR_R    (*((volatile unsigned long *)0x4005D41C))
N#define GPIO_PORTF_AHB_AFSEL_R  (*((volatile unsigned long *)0x4005D420))
N#define GPIO_PORTF_AHB_DR2R_R   (*((volatile unsigned long *)0x4005D500))
N#define GPIO_PORTF_AHB_DR4R_R   (*((volatile unsigned long *)0x4005D504))
N#define GPIO_PORTF_AHB_DR8R_R   (*((volatile unsigned long *)0x4005D508))
N#define GPIO_PORTF_AHB_ODR_R    (*((volatile unsigned long *)0x4005D50C))
N#define GPIO_PORTF_AHB_PUR_R    (*((volatile unsigned long *)0x4005D510))
N#define GPIO_PORTF_AHB_PDR_R    (*((volatile unsigned long *)0x4005D514))
N#define GPIO_PORTF_AHB_SLR_R    (*((volatile unsigned long *)0x4005D518))
N#define GPIO_PORTF_AHB_DEN_R    (*((volatile unsigned long *)0x4005D51C))
N#define GPIO_PORTF_AHB_LOCK_R   (*((volatile unsigned long *)0x4005D520))
N#define GPIO_PORTF_AHB_CR_R     (*((volatile unsigned long *)0x4005D524))
N#define GPIO_PORTF_AHB_AMSEL_R  (*((volatile unsigned long *)0x4005D528))
N#define GPIO_PORTF_AHB_PCTL_R   (*((volatile unsigned long *)0x4005D52C))
N#define GPIO_PORTF_AHB_ADCCTL_R (*((volatile unsigned long *)0x4005D530))
N#define GPIO_PORTF_AHB_DMACTL_R (*((volatile unsigned long *)0x4005D534))
N
N//*****************************************************************************
N//
N// EEPROM registers (EEPROM)
N//
N//*****************************************************************************
N#define EEPROM_EESIZE_R         (*((volatile unsigned long *)0x400AF000))
N#define EEPROM_EEBLOCK_R        (*((volatile unsigned long *)0x400AF004))
N#define EEPROM_EEOFFSET_R       (*((volatile unsigned long *)0x400AF008))
N#define EEPROM_EERDWR_R         (*((volatile unsigned long *)0x400AF010))
N#define EEPROM_EERDWRINC_R      (*((volatile unsigned long *)0x400AF014))
N#define EEPROM_EEDONE_R         (*((volatile unsigned long *)0x400AF018))
N#define EEPROM_EESUPP_R         (*((volatile unsigned long *)0x400AF01C))
N#define EEPROM_EEUNLOCK_R       (*((volatile unsigned long *)0x400AF020))
N#define EEPROM_EEPROT_R         (*((volatile unsigned long *)0x400AF030))
N#define EEPROM_EEPASS0_R        (*((volatile unsigned long *)0x400AF034))
N#define EEPROM_EEPASS1_R        (*((volatile unsigned long *)0x400AF038))
N#define EEPROM_EEPASS2_R        (*((volatile unsigned long *)0x400AF03C))
N#define EEPROM_EEINT_R          (*((volatile unsigned long *)0x400AF040))
N#define EEPROM_EEHIDE_R         (*((volatile unsigned long *)0x400AF050))
N#define EEPROM_EEDBGME_R        (*((volatile unsigned long *)0x400AF080))
N#define EEPROM_PP_R             (*((volatile unsigned long *)0x400AFFC0))
N
N//*****************************************************************************
N//
N// System Exception Module registers (SYSEXC)
N//
N//*****************************************************************************
N#define SYSEXC_RIS_R            (*((volatile unsigned long *)0x400F9000))
N#define SYSEXC_IM_R             (*((volatile unsigned long *)0x400F9004))
N#define SYSEXC_MIS_R            (*((volatile unsigned long *)0x400F9008))
N#define SYSEXC_IC_R             (*((volatile unsigned long *)0x400F900C))
N
N//*****************************************************************************
N//
N// Hibernation module registers (HIB)
N//
N//*****************************************************************************
N#define HIB_RTCC_R              (*((volatile unsigned long *)0x400FC000))
N#define HIB_RTCM0_R             (*((volatile unsigned long *)0x400FC004))
N#define HIB_RTCLD_R             (*((volatile unsigned long *)0x400FC00C))
N#define HIB_CTL_R               (*((volatile unsigned long *)0x400FC010))
N#define HIB_IM_R                (*((volatile unsigned long *)0x400FC014))
N#define HIB_RIS_R               (*((volatile unsigned long *)0x400FC018))
N#define HIB_MIS_R               (*((volatile unsigned long *)0x400FC01C))
N#define HIB_IC_R                (*((volatile unsigned long *)0x400FC020))
N#define HIB_RTCT_R              (*((volatile unsigned long *)0x400FC024))
N#define HIB_RTCSS_R             (*((volatile unsigned long *)0x400FC028))
N#define HIB_DATA_R              (*((volatile unsigned long *)0x400FC030))
N
N//*****************************************************************************
N//
N// FLASH registers (FLASH CTRL)
N//
N//*****************************************************************************
N#define FLASH_FMA_R             (*((volatile unsigned long *)0x400FD000))
N#define FLASH_FMD_R             (*((volatile unsigned long *)0x400FD004))
N#define FLASH_FMC_R             (*((volatile unsigned long *)0x400FD008))
N#define FLASH_FCRIS_R           (*((volatile unsigned long *)0x400FD00C))
N#define FLASH_FCIM_R            (*((volatile unsigned long *)0x400FD010))
N#define FLASH_FCMISC_R          (*((volatile unsigned long *)0x400FD014))
N#define FLASH_FMC2_R            (*((volatile unsigned long *)0x400FD020))
N#define FLASH_FWBVAL_R          (*((volatile unsigned long *)0x400FD030))
N#define FLASH_FWBN_R            (*((volatile unsigned long *)0x400FD100))
N#define FLASH_FSIZE_R           (*((volatile unsigned long *)0x400FDFC0))
N#define FLASH_SSIZE_R           (*((volatile unsigned long *)0x400FDFC4))
N#define FLASH_ROMSWMAP_R        (*((volatile unsigned long *)0x400FDFCC))
N#define FLASH_RMCTL_R           (*((volatile unsigned long *)0x400FE0F0))
N#define FLASH_BOOTCFG_R         (*((volatile unsigned long *)0x400FE1D0))
N#define FLASH_USERREG0_R        (*((volatile unsigned long *)0x400FE1E0))
N#define FLASH_USERREG1_R        (*((volatile unsigned long *)0x400FE1E4))
N#define FLASH_USERREG2_R        (*((volatile unsigned long *)0x400FE1E8))
N#define FLASH_USERREG3_R        (*((volatile unsigned long *)0x400FE1EC))
N#define FLASH_FMPRE0_R          (*((volatile unsigned long *)0x400FE200))
N#define FLASH_FMPRE1_R          (*((volatile unsigned long *)0x400FE204))
N#define FLASH_FMPRE2_R          (*((volatile unsigned long *)0x400FE208))
N#define FLASH_FMPRE3_R          (*((volatile unsigned long *)0x400FE20C))
N#define FLASH_FMPPE0_R          (*((volatile unsigned long *)0x400FE400))
N#define FLASH_FMPPE1_R          (*((volatile unsigned long *)0x400FE404))
N#define FLASH_FMPPE2_R          (*((volatile unsigned long *)0x400FE408))
N#define FLASH_FMPPE3_R          (*((volatile unsigned long *)0x400FE40C))
N
N//*****************************************************************************
N//
N// System Control registers (SYSCTL)
N//
N//*****************************************************************************
N#define SYSCTL_DID0_R           (*((volatile unsigned long *)0x400FE000))
N#define SYSCTL_DID1_R           (*((volatile unsigned long *)0x400FE004))
N#define SYSCTL_DC0_R            (*((volatile unsigned long *)0x400FE008))
N#define SYSCTL_DC1_R            (*((volatile unsigned long *)0x400FE010))
N#define SYSCTL_DC2_R            (*((volatile unsigned long *)0x400FE014))
N#define SYSCTL_DC3_R            (*((volatile unsigned long *)0x400FE018))
N#define SYSCTL_DC4_R            (*((volatile unsigned long *)0x400FE01C))
N#define SYSCTL_DC5_R            (*((volatile unsigned long *)0x400FE020))
N#define SYSCTL_DC6_R            (*((volatile unsigned long *)0x400FE024))
N#define SYSCTL_DC7_R            (*((volatile unsigned long *)0x400FE028))
N#define SYSCTL_DC8_R            (*((volatile unsigned long *)0x400FE02C))
N#define SYSCTL_PBORCTL_R        (*((volatile unsigned long *)0x400FE030))
N#define SYSCTL_SRCR0_R          (*((volatile unsigned long *)0x400FE040))
N#define SYSCTL_SRCR1_R          (*((volatile unsigned long *)0x400FE044))
N#define SYSCTL_SRCR2_R          (*((volatile unsigned long *)0x400FE048))
N#define SYSCTL_RIS_R            (*((volatile unsigned long *)0x400FE050))
N#define SYSCTL_IMC_R            (*((volatile unsigned long *)0x400FE054))
N#define SYSCTL_MISC_R           (*((volatile unsigned long *)0x400FE058))
N#define SYSCTL_RESC_R           (*((volatile unsigned long *)0x400FE05C))
N#define SYSCTL_RCC_R            (*((volatile unsigned long *)0x400FE060))
N#define SYSCTL_GPIOHBCTL_R      (*((volatile unsigned long *)0x400FE06C))
N#define SYSCTL_RCC2_R           (*((volatile unsigned long *)0x400FE070))
N#define SYSCTL_MOSCCTL_R        (*((volatile unsigned long *)0x400FE07C))
N#define SYSCTL_RCGC0_R          (*((volatile unsigned long *)0x400FE100))
N#define SYSCTL_RCGC1_R          (*((volatile unsigned long *)0x400FE104))
N#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
N#define SYSCTL_SCGC0_R          (*((volatile unsigned long *)0x400FE110))
N#define SYSCTL_SCGC1_R          (*((volatile unsigned long *)0x400FE114))
N#define SYSCTL_SCGC2_R          (*((volatile unsigned long *)0x400FE118))
N#define SYSCTL_DCGC0_R          (*((volatile unsigned long *)0x400FE120))
N#define SYSCTL_DCGC1_R          (*((volatile unsigned long *)0x400FE124))
N#define SYSCTL_DCGC2_R          (*((volatile unsigned long *)0x400FE128))
N#define SYSCTL_DSLPCLKCFG_R     (*((volatile unsigned long *)0x400FE144))
N#define SYSCTL_SYSPROP_R        (*((volatile unsigned long *)0x400FE14C))
N#define SYSCTL_PIOSCCAL_R       (*((volatile unsigned long *)0x400FE150))
N#define SYSCTL_PIOSCSTAT_R      (*((volatile unsigned long *)0x400FE154))
N#define SYSCTL_PLLFREQ0_R       (*((volatile unsigned long *)0x400FE160))
N#define SYSCTL_PLLFREQ1_R       (*((volatile unsigned long *)0x400FE164))
N#define SYSCTL_PLLSTAT_R        (*((volatile unsigned long *)0x400FE168))
N#define SYSCTL_DC9_R            (*((volatile unsigned long *)0x400FE190))
N#define SYSCTL_NVMSTAT_R        (*((volatile unsigned long *)0x400FE1A0))
N#define SYSCTL_PPWD_R           (*((volatile unsigned long *)0x400FE300))
N#define SYSCTL_PPTIMER_R        (*((volatile unsigned long *)0x400FE304))
N#define SYSCTL_PPGPIO_R         (*((volatile unsigned long *)0x400FE308))
N#define SYSCTL_PPDMA_R          (*((volatile unsigned long *)0x400FE30C))
N#define SYSCTL_PPHIB_R          (*((volatile unsigned long *)0x400FE314))
N#define SYSCTL_PPUART_R         (*((volatile unsigned long *)0x400FE318))
N#define SYSCTL_PPSSI_R          (*((volatile unsigned long *)0x400FE31C))
N#define SYSCTL_PPI2C_R          (*((volatile unsigned long *)0x400FE320))
N#define SYSCTL_PPUSB_R          (*((volatile unsigned long *)0x400FE328))
N#define SYSCTL_PPCAN_R          (*((volatile unsigned long *)0x400FE334))
N#define SYSCTL_PPADC_R          (*((volatile unsigned long *)0x400FE338))
N#define SYSCTL_PPACMP_R         (*((volatile unsigned long *)0x400FE33C))
N#define SYSCTL_PPPWM_R          (*((volatile unsigned long *)0x400FE340))
N#define SYSCTL_PPQEI_R          (*((volatile unsigned long *)0x400FE344))
N#define SYSCTL_PPEEPROM_R       (*((volatile unsigned long *)0x400FE358))
N#define SYSCTL_PPWTIMER_R       (*((volatile unsigned long *)0x400FE35C))
N#define SYSCTL_SRWD_R           (*((volatile unsigned long *)0x400FE500))
N#define SYSCTL_SRTIMER_R        (*((volatile unsigned long *)0x400FE504))
N#define SYSCTL_SRGPIO_R         (*((volatile unsigned long *)0x400FE508))
N#define SYSCTL_SRDMA_R          (*((volatile unsigned long *)0x400FE50C))
N#define SYSCTL_SRHIB_R          (*((volatile unsigned long *)0x400FE514))
N#define SYSCTL_SRUART_R         (*((volatile unsigned long *)0x400FE518))
N#define SYSCTL_SRSSI_R          (*((volatile unsigned long *)0x400FE51C))
N#define SYSCTL_SRI2C_R          (*((volatile unsigned long *)0x400FE520))
N#define SYSCTL_SRUSB_R          (*((volatile unsigned long *)0x400FE528))
N#define SYSCTL_SRCAN_R          (*((volatile unsigned long *)0x400FE534))
N#define SYSCTL_SRADC_R          (*((volatile unsigned long *)0x400FE538))
N#define SYSCTL_SRACMP_R         (*((volatile unsigned long *)0x400FE53C))
N#define SYSCTL_SRPWM_R          (*((volatile unsigned long *)0x400FE540))
N#define SYSCTL_SRQEI_R          (*((volatile unsigned long *)0x400FE544))
N#define SYSCTL_SREEPROM_R       (*((volatile unsigned long *)0x400FE558))
N#define SYSCTL_SRWTIMER_R       (*((volatile unsigned long *)0x400FE55C))
N#define SYSCTL_RCGCWD_R         (*((volatile unsigned long *)0x400FE600))
N#define SYSCTL_RCGCTIMER_R      (*((volatile unsigned long *)0x400FE604))
N#define SYSCTL_RCGCGPIO_R       (*((volatile unsigned long *)0x400FE608))
N#define SYSCTL_RCGCDMA_R        (*((volatile unsigned long *)0x400FE60C))
N#define SYSCTL_RCGCHIB_R        (*((volatile unsigned long *)0x400FE614))
N#define SYSCTL_RCGCUART_R       (*((volatile unsigned long *)0x400FE618))
N#define SYSCTL_RCGCSSI_R        (*((volatile unsigned long *)0x400FE61C))
N#define SYSCTL_RCGCI2C_R        (*((volatile unsigned long *)0x400FE620))
N#define SYSCTL_RCGCUSB_R        (*((volatile unsigned long *)0x400FE628))
N#define SYSCTL_RCGCCAN_R        (*((volatile unsigned long *)0x400FE634))
N#define SYSCTL_RCGCADC_R        (*((volatile unsigned long *)0x400FE638))
N#define SYSCTL_RCGCACMP_R       (*((volatile unsigned long *)0x400FE63C))
N#define SYSCTL_RCGCPWM_R        (*((volatile unsigned long *)0x400FE640))
N#define SYSCTL_RCGCQEI_R        (*((volatile unsigned long *)0x400FE644))
N#define SYSCTL_RCGCEEPROM_R     (*((volatile unsigned long *)0x400FE658))
N#define SYSCTL_RCGCWTIMER_R     (*((volatile unsigned long *)0x400FE65C))
N#define SYSCTL_SCGCWD_R         (*((volatile unsigned long *)0x400FE700))
N#define SYSCTL_SCGCTIMER_R      (*((volatile unsigned long *)0x400FE704))
N#define SYSCTL_SCGCGPIO_R       (*((volatile unsigned long *)0x400FE708))
N#define SYSCTL_SCGCDMA_R        (*((volatile unsigned long *)0x400FE70C))
N#define SYSCTL_SCGCHIB_R        (*((volatile unsigned long *)0x400FE714))
N#define SYSCTL_SCGCUART_R       (*((volatile unsigned long *)0x400FE718))
N#define SYSCTL_SCGCSSI_R        (*((volatile unsigned long *)0x400FE71C))
N#define SYSCTL_SCGCI2C_R        (*((volatile unsigned long *)0x400FE720))
N#define SYSCTL_SCGCUSB_R        (*((volatile unsigned long *)0x400FE728))
N#define SYSCTL_SCGCCAN_R        (*((volatile unsigned long *)0x400FE734))
N#define SYSCTL_SCGCADC_R        (*((volatile unsigned long *)0x400FE738))
N#define SYSCTL_SCGCACMP_R       (*((volatile unsigned long *)0x400FE73C))
N#define SYSCTL_SCGCPWM_R        (*((volatile unsigned long *)0x400FE740))
N#define SYSCTL_SCGCQEI_R        (*((volatile unsigned long *)0x400FE744))
N#define SYSCTL_SCGCEEPROM_R     (*((volatile unsigned long *)0x400FE758))
N#define SYSCTL_SCGCWTIMER_R     (*((volatile unsigned long *)0x400FE75C))
N#define SYSCTL_DCGCWD_R         (*((volatile unsigned long *)0x400FE800))
N#define SYSCTL_DCGCTIMER_R      (*((volatile unsigned long *)0x400FE804))
N#define SYSCTL_DCGCGPIO_R       (*((volatile unsigned long *)0x400FE808))
N#define SYSCTL_DCGCDMA_R        (*((volatile unsigned long *)0x400FE80C))
N#define SYSCTL_DCGCHIB_R        (*((volatile unsigned long *)0x400FE814))
N#define SYSCTL_DCGCUART_R       (*((volatile unsigned long *)0x400FE818))
N#define SYSCTL_DCGCSSI_R        (*((volatile unsigned long *)0x400FE81C))
N#define SYSCTL_DCGCI2C_R        (*((volatile unsigned long *)0x400FE820))
N#define SYSCTL_DCGCUSB_R        (*((volatile unsigned long *)0x400FE828))
N#define SYSCTL_DCGCCAN_R        (*((volatile unsigned long *)0x400FE834))
N#define SYSCTL_DCGCADC_R        (*((volatile unsigned long *)0x400FE838))
N#define SYSCTL_DCGCACMP_R       (*((volatile unsigned long *)0x400FE83C))
N#define SYSCTL_DCGCPWM_R        (*((volatile unsigned long *)0x400FE840))
N#define SYSCTL_DCGCQEI_R        (*((volatile unsigned long *)0x400FE844))
N#define SYSCTL_DCGCEEPROM_R     (*((volatile unsigned long *)0x400FE858))
N#define SYSCTL_DCGCWTIMER_R     (*((volatile unsigned long *)0x400FE85C))
N#define SYSCTL_PRWD_R           (*((volatile unsigned long *)0x400FEA00))
N#define SYSCTL_PRTIMER_R        (*((volatile unsigned long *)0x400FEA04))
N#define SYSCTL_PRGPIO_R         (*((volatile unsigned long *)0x400FEA08))
N#define SYSCTL_PRDMA_R          (*((volatile unsigned long *)0x400FEA0C))
N#define SYSCTL_PRHIB_R          (*((volatile unsigned long *)0x400FEA14))
N#define SYSCTL_PRUART_R         (*((volatile unsigned long *)0x400FEA18))
N#define SYSCTL_PRSSI_R          (*((volatile unsigned long *)0x400FEA1C))
N#define SYSCTL_PRI2C_R          (*((volatile unsigned long *)0x400FEA20))
N#define SYSCTL_PRUSB_R          (*((volatile unsigned long *)0x400FEA28))
N#define SYSCTL_PRCAN_R          (*((volatile unsigned long *)0x400FEA34))
N#define SYSCTL_PRADC_R          (*((volatile unsigned long *)0x400FEA38))
N#define SYSCTL_PRACMP_R         (*((volatile unsigned long *)0x400FEA3C))
N#define SYSCTL_PRPWM_R          (*((volatile unsigned long *)0x400FEA40))
N#define SYSCTL_PRQEI_R          (*((volatile unsigned long *)0x400FEA44))
N#define SYSCTL_PREEPROM_R       (*((volatile unsigned long *)0x400FEA58))
N#define SYSCTL_PRWTIMER_R       (*((volatile unsigned long *)0x400FEA5C))
N
N//*****************************************************************************
N//
N// Micro Direct Memory Access registers (UDMA)
N//
N//*****************************************************************************
N#define UDMA_STAT_R             (*((volatile unsigned long *)0x400FF000))
N#define UDMA_CFG_R              (*((volatile unsigned long *)0x400FF004))
N#define UDMA_CTLBASE_R          (*((volatile unsigned long *)0x400FF008))
N#define UDMA_ALTBASE_R          (*((volatile unsigned long *)0x400FF00C))
N#define UDMA_WAITSTAT_R         (*((volatile unsigned long *)0x400FF010))
N#define UDMA_SWREQ_R            (*((volatile unsigned long *)0x400FF014))
N#define UDMA_USEBURSTSET_R      (*((volatile unsigned long *)0x400FF018))
N#define UDMA_USEBURSTCLR_R      (*((volatile unsigned long *)0x400FF01C))
N#define UDMA_REQMASKSET_R       (*((volatile unsigned long *)0x400FF020))
N#define UDMA_REQMASKCLR_R       (*((volatile unsigned long *)0x400FF024))
N#define UDMA_ENASET_R           (*((volatile unsigned long *)0x400FF028))
N#define UDMA_ENACLR_R           (*((volatile unsigned long *)0x400FF02C))
N#define UDMA_ALTSET_R           (*((volatile unsigned long *)0x400FF030))
N#define UDMA_ALTCLR_R           (*((volatile unsigned long *)0x400FF034))
N#define UDMA_PRIOSET_R          (*((volatile unsigned long *)0x400FF038))
N#define UDMA_PRIOCLR_R          (*((volatile unsigned long *)0x400FF03C))
N#define UDMA_ERRCLR_R           (*((volatile unsigned long *)0x400FF04C))
N#define UDMA_CHASGN_R           (*((volatile unsigned long *)0x400FF500))
N#define UDMA_CHIS_R             (*((volatile unsigned long *)0x400FF504))
N#define UDMA_CHMAP0_R           (*((volatile unsigned long *)0x400FF510))
N#define UDMA_CHMAP1_R           (*((volatile unsigned long *)0x400FF514))
N#define UDMA_CHMAP2_R           (*((volatile unsigned long *)0x400FF518))
N#define UDMA_CHMAP3_R           (*((volatile unsigned long *)0x400FF51C))
N
N//*****************************************************************************
N//
N// Micro Direct Memory Access (uDMA) offsets (UDMA)
N//
N//*****************************************************************************
N#define UDMA_SRCENDP            0x00000000  // DMA Channel Source Address End
N                                            // Pointer
N#define UDMA_DSTENDP            0x00000004  // DMA Channel Destination Address
N                                            // End Pointer
N#define UDMA_CHCTL              0x00000008  // DMA Channel Control Word
N
N//*****************************************************************************
N//
N// NVIC registers (NVIC)
N//
N//*****************************************************************************
N#define NVIC_ACTLR_R            (*((volatile unsigned long *)0xE000E008))
N#define NVIC_ST_CTRL_R          (*((volatile unsigned long *)0xE000E010))
N#define NVIC_ST_RELOAD_R        (*((volatile unsigned long *)0xE000E014))
N#define NVIC_ST_CURRENT_R       (*((volatile unsigned long *)0xE000E018))
N#define NVIC_EN0_R              (*((volatile unsigned long *)0xE000E100))
N#define NVIC_EN1_R              (*((volatile unsigned long *)0xE000E104))
N#define NVIC_EN2_R              (*((volatile unsigned long *)0xE000E108))
N#define NVIC_EN3_R              (*((volatile unsigned long *)0xE000E10C))
N#define NVIC_EN4_R              (*((volatile unsigned long *)0xE000E110))
N#define NVIC_DIS0_R             (*((volatile unsigned long *)0xE000E180))
N#define NVIC_DIS1_R             (*((volatile unsigned long *)0xE000E184))
N#define NVIC_DIS2_R             (*((volatile unsigned long *)0xE000E188))
N#define NVIC_DIS3_R             (*((volatile unsigned long *)0xE000E18C))
N#define NVIC_DIS4_R             (*((volatile unsigned long *)0xE000E190))
N#define NVIC_PEND0_R            (*((volatile unsigned long *)0xE000E200))
N#define NVIC_PEND1_R            (*((volatile unsigned long *)0xE000E204))
N#define NVIC_PEND2_R            (*((volatile unsigned long *)0xE000E208))
N#define NVIC_PEND3_R            (*((volatile unsigned long *)0xE000E20C))
N#define NVIC_PEND4_R            (*((volatile unsigned long *)0xE000E210))
N#define NVIC_UNPEND0_R          (*((volatile unsigned long *)0xE000E280))
N#define NVIC_UNPEND1_R          (*((volatile unsigned long *)0xE000E284))
N#define NVIC_UNPEND2_R          (*((volatile unsigned long *)0xE000E288))
N#define NVIC_UNPEND3_R          (*((volatile unsigned long *)0xE000E28C))
N#define NVIC_UNPEND4_R          (*((volatile unsigned long *)0xE000E290))
N#define NVIC_ACTIVE0_R          (*((volatile unsigned long *)0xE000E300))
N#define NVIC_ACTIVE1_R          (*((volatile unsigned long *)0xE000E304))
N#define NVIC_ACTIVE2_R          (*((volatile unsigned long *)0xE000E308))
N#define NVIC_ACTIVE3_R          (*((volatile unsigned long *)0xE000E30C))
N#define NVIC_ACTIVE4_R          (*((volatile unsigned long *)0xE000E310))
N#define NVIC_PRI0_R             (*((volatile unsigned long *)0xE000E400))
N#define NVIC_PRI1_R             (*((volatile unsigned long *)0xE000E404))
N#define NVIC_PRI2_R             (*((volatile unsigned long *)0xE000E408))
N#define NVIC_PRI3_R             (*((volatile unsigned long *)0xE000E40C))
N#define NVIC_PRI4_R             (*((volatile unsigned long *)0xE000E410))
N#define NVIC_PRI5_R             (*((volatile unsigned long *)0xE000E414))
N#define NVIC_PRI6_R             (*((volatile unsigned long *)0xE000E418))
N#define NVIC_PRI7_R             (*((volatile unsigned long *)0xE000E41C))
N#define NVIC_PRI8_R             (*((volatile unsigned long *)0xE000E420))
N#define NVIC_PRI9_R             (*((volatile unsigned long *)0xE000E424))
N#define NVIC_PRI10_R            (*((volatile unsigned long *)0xE000E428))
N#define NVIC_PRI11_R            (*((volatile unsigned long *)0xE000E42C))
N#define NVIC_PRI12_R            (*((volatile unsigned long *)0xE000E430))
N#define NVIC_PRI13_R            (*((volatile unsigned long *)0xE000E434))
N#define NVIC_PRI14_R            (*((volatile unsigned long *)0xE000E438))
N#define NVIC_PRI15_R            (*((volatile unsigned long *)0xE000E43C))
N#define NVIC_PRI16_R            (*((volatile unsigned long *)0xE000E440))
N#define NVIC_PRI17_R            (*((volatile unsigned long *)0xE000E444))
N#define NVIC_PRI18_R            (*((volatile unsigned long *)0xE000E448))
N#define NVIC_PRI19_R            (*((volatile unsigned long *)0xE000E44C))
N#define NVIC_PRI20_R            (*((volatile unsigned long *)0xE000E450))
N#define NVIC_PRI21_R            (*((volatile unsigned long *)0xE000E454))
N#define NVIC_PRI22_R            (*((volatile unsigned long *)0xE000E458))
N#define NVIC_PRI23_R            (*((volatile unsigned long *)0xE000E45C))
N#define NVIC_PRI24_R            (*((volatile unsigned long *)0xE000E460))
N#define NVIC_PRI25_R            (*((volatile unsigned long *)0xE000E464))
N#define NVIC_PRI26_R            (*((volatile unsigned long *)0xE000E468))
N#define NVIC_PRI27_R            (*((volatile unsigned long *)0xE000E46C))
N#define NVIC_PRI28_R            (*((volatile unsigned long *)0xE000E470))
N#define NVIC_PRI29_R            (*((volatile unsigned long *)0xE000E474))
N#define NVIC_PRI30_R            (*((volatile unsigned long *)0xE000E478))
N#define NVIC_PRI31_R            (*((volatile unsigned long *)0xE000E47C))
N#define NVIC_PRI32_R            (*((volatile unsigned long *)0xE000E480))
N#define NVIC_PRI33_R            (*((volatile unsigned long *)0xE000E484))
N#define NVIC_PRI34_R            (*((volatile unsigned long *)0xE000E488))
N#define NVIC_CPUID_R            (*((volatile unsigned long *)0xE000ED00))
N#define NVIC_INT_CTRL_R         (*((volatile unsigned long *)0xE000ED04))
N#define NVIC_VTABLE_R           (*((volatile unsigned long *)0xE000ED08))
N#define NVIC_APINT_R            (*((volatile unsigned long *)0xE000ED0C))
N#define NVIC_SYS_CTRL_R         (*((volatile unsigned long *)0xE000ED10))
N#define NVIC_CFG_CTRL_R         (*((volatile unsigned long *)0xE000ED14))
N#define NVIC_SYS_PRI1_R         (*((volatile unsigned long *)0xE000ED18))
N#define NVIC_SYS_PRI2_R         (*((volatile unsigned long *)0xE000ED1C))
N#define NVIC_SYS_PRI3_R         (*((volatile unsigned long *)0xE000ED20))
N#define NVIC_SYS_HND_CTRL_R     (*((volatile unsigned long *)0xE000ED24))
N#define NVIC_FAULT_STAT_R       (*((volatile unsigned long *)0xE000ED28))
N#define NVIC_HFAULT_STAT_R      (*((volatile unsigned long *)0xE000ED2C))
N#define NVIC_DEBUG_STAT_R       (*((volatile unsigned long *)0xE000ED30))
N#define NVIC_MM_ADDR_R          (*((volatile unsigned long *)0xE000ED34))
N#define NVIC_FAULT_ADDR_R       (*((volatile unsigned long *)0xE000ED38))
N#define NVIC_CPAC_R             (*((volatile unsigned long *)0xE000ED88))
N#define NVIC_MPU_TYPE_R         (*((volatile unsigned long *)0xE000ED90))
N#define NVIC_MPU_CTRL_R         (*((volatile unsigned long *)0xE000ED94))
N#define NVIC_MPU_NUMBER_R       (*((volatile unsigned long *)0xE000ED98))
N#define NVIC_MPU_BASE_R         (*((volatile unsigned long *)0xE000ED9C))
N#define NVIC_MPU_ATTR_R         (*((volatile unsigned long *)0xE000EDA0))
N#define NVIC_MPU_BASE1_R        (*((volatile unsigned long *)0xE000EDA4))
N#define NVIC_MPU_ATTR1_R        (*((volatile unsigned long *)0xE000EDA8))
N#define NVIC_MPU_BASE2_R        (*((volatile unsigned long *)0xE000EDAC))
N#define NVIC_MPU_ATTR2_R        (*((volatile unsigned long *)0xE000EDB0))
N#define NVIC_MPU_BASE3_R        (*((volatile unsigned long *)0xE000EDB4))
N#define NVIC_MPU_ATTR3_R        (*((volatile unsigned long *)0xE000EDB8))
N#define NVIC_DBG_CTRL_R         (*((volatile unsigned long *)0xE000EDF0))
N#define NVIC_DBG_XFER_R         (*((volatile unsigned long *)0xE000EDF4))
N#define NVIC_DBG_DATA_R         (*((volatile unsigned long *)0xE000EDF8))
N#define NVIC_DBG_INT_R          (*((volatile unsigned long *)0xE000EDFC))
N#define NVIC_SW_TRIG_R          (*((volatile unsigned long *)0xE000EF00))
N#define NVIC_FPCC_R             (*((volatile unsigned long *)0xE000EF34))
N#define NVIC_FPCA_R             (*((volatile unsigned long *)0xE000EF38))
N#define NVIC_FPDSC_R            (*((volatile unsigned long *)0xE000EF3C))
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the WDT_O_LOAD register.
N//
N//*****************************************************************************
N#define WDT_LOAD_M              0xFFFFFFFF  // Watchdog Load Value
N#define WDT_LOAD_S              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the WDT_O_VALUE register.
N//
N//*****************************************************************************
N#define WDT_VALUE_M             0xFFFFFFFF  // Watchdog Value
N#define WDT_VALUE_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the WDT_O_CTL register.
N//
N//*****************************************************************************
N#define WDT_CTL_WRC             0x80000000  // Write Complete
N#define WDT_CTL_INTTYPE         0x00000004  // Watchdog Interrupt Type
N#define WDT_CTL_RESEN           0x00000002  // Watchdog Reset Enable
N#define WDT_CTL_INTEN           0x00000001  // Watchdog Interrupt Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the WDT_O_ICR register.
N//
N//*****************************************************************************
N#define WDT_ICR_M               0xFFFFFFFF  // Watchdog Interrupt Clear
N#define WDT_ICR_S               0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the WDT_O_RIS register.
N//
N//*****************************************************************************
N#define WDT_RIS_WDTRIS          0x00000001  // Watchdog Raw Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the WDT_O_MIS register.
N//
N//*****************************************************************************
N#define WDT_MIS_WDTMIS          0x00000001  // Watchdog Masked Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the WDT_O_TEST register.
N//
N//*****************************************************************************
N#define WDT_TEST_STALL          0x00000100  // Watchdog Stall Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the WDT_O_LOCK register.
N//
N//*****************************************************************************
N#define WDT_LOCK_M              0xFFFFFFFF  // Watchdog Lock
N#define WDT_LOCK_UNLOCKED       0x00000000  // Unlocked
N#define WDT_LOCK_LOCKED         0x00000001  // Locked
N#define WDT_LOCK_UNLOCK         0x1ACCE551  // Unlocks the watchdog timer
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_O_IM register.
N//
N//*****************************************************************************
N#define GPIO_IM_GPIO_M          0x000000FF  // GPIO Interrupt Mask Enable
N#define GPIO_IM_GPIO_S          0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_O_RIS register.
N//
N//*****************************************************************************
N#define GPIO_RIS_GPIO_M         0x000000FF  // GPIO Interrupt Raw Status
N#define GPIO_RIS_GPIO_S         0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_O_MIS register.
N//
N//*****************************************************************************
N#define GPIO_MIS_GPIO_M         0x000000FF  // GPIO Masked Interrupt Status
N#define GPIO_MIS_GPIO_S         0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_O_ICR register.
N//
N//*****************************************************************************
N#define GPIO_ICR_GPIO_M         0x000000FF  // GPIO Interrupt Clear
N#define GPIO_ICR_GPIO_S         0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_O_LOCK register.
N//
N//*****************************************************************************
N#define GPIO_LOCK_M             0xFFFFFFFF  // GPIO Lock
N#define GPIO_LOCK_UNLOCKED      0x00000000  // The GPIOCR register is unlocked
N                                            // and may be modified
N#define GPIO_LOCK_LOCKED        0x00000001  // The GPIOCR register is locked
N                                            // and may not be modified
N#define GPIO_LOCK_KEY           0x4C4F434B  // Unlocks the GPIO_CR register
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_PCTL register for
N// port A.
N//
N//*****************************************************************************
N#define GPIO_PCTL_PA7_M         0xF0000000  // PA7 mask
N#define GPIO_PCTL_PA7_I2C1SDA   0x30000000  // I2C1SDA on PA7
N#define GPIO_PCTL_PA7_M1PWM3    0x50000000  // M1PWM3 on PA7
N#define GPIO_PCTL_PA6_M         0x0F000000  // PA6 mask
N#define GPIO_PCTL_PA6_I2C1SCL   0x03000000  // I2C1SCL on PA6
N#define GPIO_PCTL_PA6_M1PWM2    0x05000000  // M1PWM2 on PA6
N#define GPIO_PCTL_PA5_M         0x00F00000  // PA5 mask
N#define GPIO_PCTL_PA5_SSI0TX    0x00200000  // SSI0TX on PA5
N#define GPIO_PCTL_PA4_M         0x000F0000  // PA4 mask
N#define GPIO_PCTL_PA4_SSI0RX    0x00020000  // SSI0RX on PA4
N#define GPIO_PCTL_PA3_M         0x0000F000  // PA3 mask
N#define GPIO_PCTL_PA3_SSI0FSS   0x00002000  // SSI0FSS on PA3
N#define GPIO_PCTL_PA2_M         0x00000F00  // PA2 mask
N#define GPIO_PCTL_PA2_SSI0CLK   0x00000200  // SSI0CLK on PA2
N#define GPIO_PCTL_PA1_M         0x000000F0  // PA1 mask
N#define GPIO_PCTL_PA1_U0TX      0x00000010  // U0TX on PA1
N#define GPIO_PCTL_PA1_CAN1TX    0x00000080  // CAN1TX on PA1
N#define GPIO_PCTL_PA0_M         0x0000000F  // PA0 mask
N#define GPIO_PCTL_PA0_U0RX      0x00000001  // U0RX on PA0
N#define GPIO_PCTL_PA0_CAN1RX    0x00000008  // CAN1RX on PA0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_PCTL register for
N// port B.
N//
N//*****************************************************************************
N#define GPIO_PCTL_PB7_M         0xF0000000  // PB7 mask
N#define GPIO_PCTL_PB7_SSI2TX    0x20000000  // SSI2TX on PB7
N#define GPIO_PCTL_PB7_M0PWM1    0x40000000  // M0PWM1 on PB7
N#define GPIO_PCTL_PB7_T0CCP1    0x70000000  // T0CCP1 on PB7
N#define GPIO_PCTL_PB6_M         0x0F000000  // PB6 mask
N#define GPIO_PCTL_PB6_SSI2RX    0x02000000  // SSI2RX on PB6
N#define GPIO_PCTL_PB6_M0PWM0    0x04000000  // M0PWM0 on PB6
N#define GPIO_PCTL_PB6_T0CCP0    0x07000000  // T0CCP0 on PB6
N#define GPIO_PCTL_PB5_M         0x00F00000  // PB5 mask
N#define GPIO_PCTL_PB5_SSI2FSS   0x00200000  // SSI2FSS on PB5
N#define GPIO_PCTL_PB5_M0PWM3    0x00400000  // M0PWM3 on PB5
N#define GPIO_PCTL_PB5_T1CCP1    0x00700000  // T1CCP1 on PB5
N#define GPIO_PCTL_PB5_CAN0TX    0x00800000  // CAN0TX on PB5
N#define GPIO_PCTL_PB4_M         0x000F0000  // PB4 mask
N#define GPIO_PCTL_PB4_SSI2CLK   0x00020000  // SSI2CLK on PB4
N#define GPIO_PCTL_PB4_M0PWM2    0x00040000  // M0PWM2 on PB4
N#define GPIO_PCTL_PB4_T1CCP0    0x00070000  // T1CCP0 on PB4
N#define GPIO_PCTL_PB4_CAN0RX    0x00080000  // CAN0RX on PB4
N#define GPIO_PCTL_PB3_M         0x0000F000  // PB3 mask
N#define GPIO_PCTL_PB3_I2C0SDA   0x00003000  // I2C0SDA on PB3
N#define GPIO_PCTL_PB3_T3CCP1    0x00007000  // T3CCP1 on PB3
N#define GPIO_PCTL_PB2_M         0x00000F00  // PB2 mask
N#define GPIO_PCTL_PB2_I2C0SCL   0x00000300  // I2C0SCL on PB2
N#define GPIO_PCTL_PB2_T3CCP0    0x00000700  // T3CCP0 on PB2
N#define GPIO_PCTL_PB1_M         0x000000F0  // PB1 mask
N#define GPIO_PCTL_PB1_USB0VBUS  0x00000000  // USB0VBUS on PB1
N#define GPIO_PCTL_PB1_U1TX      0x00000010  // U1TX on PB1
N#define GPIO_PCTL_PB1_T2CCP1    0x00000070  // T2CCP1 on PB1
N#define GPIO_PCTL_PB0_M         0x0000000F  // PB0 mask
N#define GPIO_PCTL_PB0_USB0ID    0x00000000  // USB0ID on PB0
N#define GPIO_PCTL_PB0_U1RX      0x00000001  // U1RX on PB0
N#define GPIO_PCTL_PB0_T2CCP0    0x00000007  // T2CCP0 on PB0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_PCTL register for
N// port C.
N//
N//*****************************************************************************
N#define GPIO_PCTL_PC7_M         0xF0000000  // PC7 mask
N#define GPIO_PCTL_PC7_U3TX      0x10000000  // U3TX on PC7
N#define GPIO_PCTL_PC7_WT1CCP1   0x70000000  // WT1CCP1 on PC7
N#define GPIO_PCTL_PC7_USB0PFLT  0x80000000  // USB0PFLT on PC7
N#define GPIO_PCTL_PC6_M         0x0F000000  // PC6 mask
N#define GPIO_PCTL_PC6_U3RX      0x01000000  // U3RX on PC6
N#define GPIO_PCTL_PC6_PHB1      0x06000000  // PHB1 on PC6
N#define GPIO_PCTL_PC6_WT1CCP0   0x07000000  // WT1CCP0 on PC6
N#define GPIO_PCTL_PC6_USB0EPEN  0x08000000  // USB0EPEN on PC6
N#define GPIO_PCTL_PC5_M         0x00F00000  // PC5 mask
N#define GPIO_PCTL_PC5_U4TX      0x00100000  // U4TX on PC5
N#define GPIO_PCTL_PC5_U1TX      0x00200000  // U1TX on PC5
N#define GPIO_PCTL_PC5_M0PWM7    0x00400000  // M0PWM7 on PC5
N#define GPIO_PCTL_PC5_PHA1      0x00600000  // PHA1 on PC5
N#define GPIO_PCTL_PC5_WT0CCP1   0x00700000  // WT0CCP1 on PC5
N#define GPIO_PCTL_PC5_U1CTS     0x00800000  // U1CTS on PC5
N#define GPIO_PCTL_PC4_M         0x000F0000  // PC4 mask
N#define GPIO_PCTL_PC4_U4RX      0x00010000  // U4RX on PC4
N#define GPIO_PCTL_PC4_U1RX      0x00020000  // U1RX on PC4
N#define GPIO_PCTL_PC4_M0PWM6    0x00040000  // M0PWM6 on PC4
N#define GPIO_PCTL_PC4_IDX1      0x00060000  // IDX1 on PC4
N#define GPIO_PCTL_PC4_WT0CCP0   0x00070000  // WT0CCP0 on PC4
N#define GPIO_PCTL_PC4_U1RTS     0x00080000  // U1RTS on PC4
N#define GPIO_PCTL_PC3_M         0x0000F000  // PC3 mask
N#define GPIO_PCTL_PC3_TDO       0x00001000  // TDO on PC3
N#define GPIO_PCTL_PC3_T5CCP1    0x00007000  // T5CCP1 on PC3
N#define GPIO_PCTL_PC2_M         0x00000F00  // PC2 mask
N#define GPIO_PCTL_PC2_TDI       0x00000100  // TDI on PC2
N#define GPIO_PCTL_PC2_T5CCP0    0x00000700  // T5CCP0 on PC2
N#define GPIO_PCTL_PC1_M         0x000000F0  // PC1 mask
N#define GPIO_PCTL_PC1_TMS       0x00000010  // TMS on PC1
N#define GPIO_PCTL_PC1_T4CCP1    0x00000070  // T4CCP1 on PC1
N#define GPIO_PCTL_PC0_M         0x0000000F  // PC0 mask
N#define GPIO_PCTL_PC0_TCK       0x00000001  // TCK on PC0
N#define GPIO_PCTL_PC0_T4CCP0    0x00000007  // T4CCP0 on PC0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_PCTL register for
N// port D.
N//
N//*****************************************************************************
N#define GPIO_PCTL_PD7_M         0xF0000000  // PD7 mask
N#define GPIO_PCTL_PD7_U2TX      0x10000000  // U2TX on PD7
N#define GPIO_PCTL_PD7_PHB0      0x60000000  // PHB0 on PD7
N#define GPIO_PCTL_PD7_WT5CCP1   0x70000000  // WT5CCP1 on PD7
N#define GPIO_PCTL_PD7_NMI       0x80000000  // NMI on PD7
N#define GPIO_PCTL_PD6_M         0x0F000000  // PD6 mask
N#define GPIO_PCTL_PD6_U2RX      0x01000000  // U2RX on PD6
N#define GPIO_PCTL_PD6_M0FAULT0  0x04000000  // M0FAULT0 on PD6
N#define GPIO_PCTL_PD6_PHA0      0x06000000  // PHA0 on PD6
N#define GPIO_PCTL_PD6_WT5CCP0   0x07000000  // WT5CCP0 on PD6
N#define GPIO_PCTL_PD5_M         0x00F00000  // PD5 mask
N#define GPIO_PCTL_PD5_USB0DP    0x00000000  // USB0DP on PD5
N#define GPIO_PCTL_PD5_U6TX      0x00100000  // U6TX on PD5
N#define GPIO_PCTL_PD5_WT4CCP1   0x00700000  // WT4CCP1 on PD5
N#define GPIO_PCTL_PD4_M         0x000F0000  // PD4 mask
N#define GPIO_PCTL_PD4_USB0DM    0x00000000  // USB0DM on PD4
N#define GPIO_PCTL_PD4_U6RX      0x00010000  // U6RX on PD4
N#define GPIO_PCTL_PD4_WT4CCP0   0x00070000  // WT4CCP0 on PD4
N#define GPIO_PCTL_PD3_M         0x0000F000  // PD3 mask
N#define GPIO_PCTL_PD3_AIN4      0x00000000  // AIN4 on PD3
N#define GPIO_PCTL_PD3_SSI3TX    0x00001000  // SSI3TX on PD3
N#define GPIO_PCTL_PD3_SSI1TX    0x00002000  // SSI1TX on PD3
N#define GPIO_PCTL_PD3_IDX0      0x00006000  // IDX0 on PD3
N#define GPIO_PCTL_PD3_WT3CCP1   0x00007000  // WT3CCP1 on PD3
N#define GPIO_PCTL_PD3_USB0PFLT  0x00008000  // USB0PFLT on PD3
N#define GPIO_PCTL_PD2_M         0x00000F00  // PD2 mask
N#define GPIO_PCTL_PD2_AIN5      0x00000000  // AIN5 on PD2
N#define GPIO_PCTL_PD2_SSI3RX    0x00000100  // SSI3RX on PD2
N#define GPIO_PCTL_PD2_SSI1RX    0x00000200  // SSI1RX on PD2
N#define GPIO_PCTL_PD2_M0FAULT0  0x00000400  // M0FAULT0 on PD2
N#define GPIO_PCTL_PD2_WT3CCP0   0x00000700  // WT3CCP0 on PD2
N#define GPIO_PCTL_PD2_USB0EPEN  0x00000800  // USB0EPEN on PD2
N#define GPIO_PCTL_PD1_M         0x000000F0  // PD1 mask
N#define GPIO_PCTL_PD1_AIN6      0x00000000  // AIN6 on PD1
N#define GPIO_PCTL_PD1_SSI3FSS   0x00000010  // SSI3FSS on PD1
N#define GPIO_PCTL_PD1_SSI1FSS   0x00000020  // SSI1FSS on PD1
N#define GPIO_PCTL_PD1_I2C3SDA   0x00000030  // I2C3SDA on PD1
N#define GPIO_PCTL_PD1_M0PWM7    0x00000040  // M0PWM7 on PD1
N#define GPIO_PCTL_PD1_M1PWM1    0x00000050  // M1PWM1 on PD1
N#define GPIO_PCTL_PD1_WT2CCP1   0x00000070  // WT2CCP1 on PD1
N#define GPIO_PCTL_PD0_M         0x0000000F  // PD0 mask
N#define GPIO_PCTL_PD0_AIN7      0x00000000  // AIN7 on PD0
N#define GPIO_PCTL_PD0_SSI3CLK   0x00000001  // SSI3CLK on PD0
N#define GPIO_PCTL_PD0_SSI1CLK   0x00000002  // SSI1CLK on PD0
N#define GPIO_PCTL_PD0_I2C3SCL   0x00000003  // I2C3SCL on PD0
N#define GPIO_PCTL_PD0_M0PWM6    0x00000004  // M0PWM6 on PD0
N#define GPIO_PCTL_PD0_M1PWM0    0x00000005  // M1PWM0 on PD0
N#define GPIO_PCTL_PD0_WT2CCP0   0x00000007  // WT2CCP0 on PD0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_PCTL register for
N// port E.
N//
N//*****************************************************************************
N#define GPIO_PCTL_PE5_M         0x00F00000  // PE5 mask
N#define GPIO_PCTL_PE5_AIN8      0x00000000  // AIN8 on PE5
N#define GPIO_PCTL_PE5_U5TX      0x00100000  // U5TX on PE5
N#define GPIO_PCTL_PE5_I2C2SDA   0x00300000  // I2C2SDA on PE5
N#define GPIO_PCTL_PE5_M0PWM5    0x00400000  // M0PWM5 on PE5
N#define GPIO_PCTL_PE5_M1PWM3    0x00500000  // M1PWM3 on PE5
N#define GPIO_PCTL_PE5_CAN0TX    0x00800000  // CAN0TX on PE5
N#define GPIO_PCTL_PE4_M         0x000F0000  // PE4 mask
N#define GPIO_PCTL_PE4_AIN9      0x00000000  // AIN9 on PE4
N#define GPIO_PCTL_PE4_U5RX      0x00010000  // U5RX on PE4
N#define GPIO_PCTL_PE4_I2C2SCL   0x00030000  // I2C2SCL on PE4
N#define GPIO_PCTL_PE4_M0PWM4    0x00040000  // M0PWM4 on PE4
N#define GPIO_PCTL_PE4_M1PWM2    0x00050000  // M1PWM2 on PE4
N#define GPIO_PCTL_PE4_CAN0RX    0x00080000  // CAN0RX on PE4
N#define GPIO_PCTL_PE3_M         0x0000F000  // PE3 mask
N#define GPIO_PCTL_PE3_AIN0      0x00000000  // AIN0 on PE3
N#define GPIO_PCTL_PE2_M         0x00000F00  // PE2 mask
N#define GPIO_PCTL_PE2_AIN1      0x00000000  // AIN1 on PE2
N#define GPIO_PCTL_PE1_M         0x000000F0  // PE1 mask
N#define GPIO_PCTL_PE1_AIN2      0x00000000  // AIN2 on PE1
N#define GPIO_PCTL_PE1_U7TX      0x00000010  // U7TX on PE1
N#define GPIO_PCTL_PE0_M         0x0000000F  // PE0 mask
N#define GPIO_PCTL_PE0_AIN3      0x00000000  // AIN3 on PE0
N#define GPIO_PCTL_PE0_U7RX      0x00000001  // U7RX on PE0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the GPIO_PCTL register for
N// port F.
N//
N//*****************************************************************************
N#define GPIO_PCTL_PF4_M         0x000F0000  // PF4 mask
N#define GPIO_PCTL_PF4_M1FAULT0  0x00050000  // M1FAULT0 on PF4
N#define GPIO_PCTL_PF4_IDX0      0x00060000  // IDX0 on PF4
N#define GPIO_PCTL_PF4_T2CCP0    0x00070000  // T2CCP0 on PF4
N#define GPIO_PCTL_PF4_USB0EPEN  0x00080000  // USB0EPEN on PF4
N#define GPIO_PCTL_PF3_M         0x0000F000  // PF3 mask
N#define GPIO_PCTL_PF3_SSI1FSS   0x00002000  // SSI1FSS on PF3
N#define GPIO_PCTL_PF3_CAN0TX    0x00003000  // CAN0TX on PF3
N#define GPIO_PCTL_PF3_M1PWM7    0x00005000  // M1PWM7 on PF3
N#define GPIO_PCTL_PF3_T1CCP1    0x00007000  // T1CCP1 on PF3
N#define GPIO_PCTL_PF3_TRCLK     0x0000E000  // TRCLK on PF3
N#define GPIO_PCTL_PF2_M         0x00000F00  // PF2 mask
N#define GPIO_PCTL_PF2_SSI1CLK   0x00000200  // SSI1CLK on PF2
N#define GPIO_PCTL_PF2_M0FAULT0  0x00000400  // M0FAULT0 on PF2
N#define GPIO_PCTL_PF2_M1PWM6    0x00000500  // M1PWM6 on PF2
N#define GPIO_PCTL_PF2_T1CCP0    0x00000700  // T1CCP0 on PF2
N#define GPIO_PCTL_PF2_TRD0      0x00000E00  // TRD0 on PF2
N#define GPIO_PCTL_PF1_M         0x000000F0  // PF1 mask
N#define GPIO_PCTL_PF1_U1CTS     0x00000010  // U1CTS on PF1
N#define GPIO_PCTL_PF1_SSI1TX    0x00000020  // SSI1TX on PF1
N#define GPIO_PCTL_PF1_M1PWM5    0x00000050  // M1PWM5 on PF1
N#define GPIO_PCTL_PF1_PHB0      0x00000060  // PHB0 on PF1
N#define GPIO_PCTL_PF1_T0CCP1    0x00000070  // T0CCP1 on PF1
N#define GPIO_PCTL_PF1_C1O       0x00000090  // C1O on PF1
N#define GPIO_PCTL_PF1_TRD1      0x000000E0  // TRD1 on PF1
N#define GPIO_PCTL_PF0_M         0x0000000F  // PF0 mask
N#define GPIO_PCTL_PF0_U1RTS     0x00000001  // U1RTS on PF0
N#define GPIO_PCTL_PF0_SSI1RX    0x00000002  // SSI1RX on PF0
N#define GPIO_PCTL_PF0_CAN0RX    0x00000003  // CAN0RX on PF0
N#define GPIO_PCTL_PF0_M1PWM4    0x00000005  // M1PWM4 on PF0
N#define GPIO_PCTL_PF0_PHA0      0x00000006  // PHA0 on PF0
N#define GPIO_PCTL_PF0_T0CCP0    0x00000007  // T0CCP0 on PF0
N#define GPIO_PCTL_PF0_NMI       0x00000008  // NMI on PF0
N#define GPIO_PCTL_PF0_C0O       0x00000009  // C0O on PF0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_CR0 register.
N//
N//*****************************************************************************
N#define SSI_CR0_SCR_M           0x0000FF00  // SSI Serial Clock Rate
N#define SSI_CR0_SPH             0x00000080  // SSI Serial Clock Phase
N#define SSI_CR0_SPO             0x00000040  // SSI Serial Clock Polarity
N#define SSI_CR0_FRF_M           0x00000030  // SSI Frame Format Select
N#define SSI_CR0_FRF_MOTO        0x00000000  // Freescale SPI Frame Format
N#define SSI_CR0_FRF_TI          0x00000010  // Texas Instruments Synchronous
N                                            // Serial Frame Format
N#define SSI_CR0_FRF_NMW         0x00000020  // MICROWIRE Frame Format
N#define SSI_CR0_DSS_M           0x0000000F  // SSI Data Size Select
N#define SSI_CR0_DSS_4           0x00000003  // 4-bit data
N#define SSI_CR0_DSS_5           0x00000004  // 5-bit data
N#define SSI_CR0_DSS_6           0x00000005  // 6-bit data
N#define SSI_CR0_DSS_7           0x00000006  // 7-bit data
N#define SSI_CR0_DSS_8           0x00000007  // 8-bit data
N#define SSI_CR0_DSS_9           0x00000008  // 9-bit data
N#define SSI_CR0_DSS_10          0x00000009  // 10-bit data
N#define SSI_CR0_DSS_11          0x0000000A  // 11-bit data
N#define SSI_CR0_DSS_12          0x0000000B  // 12-bit data
N#define SSI_CR0_DSS_13          0x0000000C  // 13-bit data
N#define SSI_CR0_DSS_14          0x0000000D  // 14-bit data
N#define SSI_CR0_DSS_15          0x0000000E  // 15-bit data
N#define SSI_CR0_DSS_16          0x0000000F  // 16-bit data
N#define SSI_CR0_SCR_S           8
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_CR1 register.
N//
N//*****************************************************************************
N#define SSI_CR1_EOT             0x00000010  // End of Transmission
N#define SSI_CR1_SOD             0x00000008  // SSI Slave Mode Output Disable
N#define SSI_CR1_MS              0x00000004  // SSI Master/Slave Select
N#define SSI_CR1_SSE             0x00000002  // SSI Synchronous Serial Port
N                                            // Enable
N#define SSI_CR1_LBM             0x00000001  // SSI Loopback Mode
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_DR register.
N//
N//*****************************************************************************
N#define SSI_DR_DATA_M           0x0000FFFF  // SSI Receive/Transmit Data
N#define SSI_DR_DATA_S           0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_SR register.
N//
N//*****************************************************************************
N#define SSI_SR_BSY              0x00000010  // SSI Busy Bit
N#define SSI_SR_RFF              0x00000008  // SSI Receive FIFO Full
N#define SSI_SR_RNE              0x00000004  // SSI Receive FIFO Not Empty
N#define SSI_SR_TNF              0x00000002  // SSI Transmit FIFO Not Full
N#define SSI_SR_TFE              0x00000001  // SSI Transmit FIFO Empty
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_CPSR register.
N//
N//*****************************************************************************
N#define SSI_CPSR_CPSDVSR_M      0x000000FF  // SSI Clock Prescale Divisor
N#define SSI_CPSR_CPSDVSR_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_IM register.
N//
N//*****************************************************************************
N#define SSI_IM_TXIM             0x00000008  // SSI Transmit FIFO Interrupt Mask
N#define SSI_IM_RXIM             0x00000004  // SSI Receive FIFO Interrupt Mask
N#define SSI_IM_RTIM             0x00000002  // SSI Receive Time-Out Interrupt
N                                            // Mask
N#define SSI_IM_RORIM            0x00000001  // SSI Receive Overrun Interrupt
N                                            // Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_RIS register.
N//
N//*****************************************************************************
N#define SSI_RIS_TXRIS           0x00000008  // SSI Transmit FIFO Raw Interrupt
N                                            // Status
N#define SSI_RIS_RXRIS           0x00000004  // SSI Receive FIFO Raw Interrupt
N                                            // Status
N#define SSI_RIS_RTRIS           0x00000002  // SSI Receive Time-Out Raw
N                                            // Interrupt Status
N#define SSI_RIS_RORRIS          0x00000001  // SSI Receive Overrun Raw
N                                            // Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_MIS register.
N//
N//*****************************************************************************
N#define SSI_MIS_TXMIS           0x00000008  // SSI Transmit FIFO Masked
N                                            // Interrupt Status
N#define SSI_MIS_RXMIS           0x00000004  // SSI Receive FIFO Masked
N                                            // Interrupt Status
N#define SSI_MIS_RTMIS           0x00000002  // SSI Receive Time-Out Masked
N                                            // Interrupt Status
N#define SSI_MIS_RORMIS          0x00000001  // SSI Receive Overrun Masked
N                                            // Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_ICR register.
N//
N//*****************************************************************************
N#define SSI_ICR_RTIC            0x00000002  // SSI Receive Time-Out Interrupt
N                                            // Clear
N#define SSI_ICR_RORIC           0x00000001  // SSI Receive Overrun Interrupt
N                                            // Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_DMACTL register.
N//
N//*****************************************************************************
N#define SSI_DMACTL_TXDMAE       0x00000002  // Transmit DMA Enable
N#define SSI_DMACTL_RXDMAE       0x00000001  // Receive DMA Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SSI_O_CC register.
N//
N//*****************************************************************************
N#define SSI_CC_CS_M             0x0000000F  // SSI Baud Clock Source
N#define SSI_CC_CS_SYSPLL        0x00000000  // Either the system clock (if the
N                                            // PLL bypass is in effect) or the
N                                            // PLL output (default)
N#define SSI_CC_CS_PIOSC         0x00000005  // PIOSC
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_DR register.
N//
N//*****************************************************************************
N#define UART_DR_OE              0x00000800  // UART Overrun Error
N#define UART_DR_BE              0x00000400  // UART Break Error
N#define UART_DR_PE              0x00000200  // UART Parity Error
N#define UART_DR_FE              0x00000100  // UART Framing Error
N#define UART_DR_DATA_M          0x000000FF  // Data Transmitted or Received
N#define UART_DR_DATA_S          0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_RSR register.
N//
N//*****************************************************************************
N#define UART_RSR_OE             0x00000008  // UART Overrun Error
N#define UART_RSR_BE             0x00000004  // UART Break Error
N#define UART_RSR_PE             0x00000002  // UART Parity Error
N#define UART_RSR_FE             0x00000001  // UART Framing Error
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_ECR register.
N//
N//*****************************************************************************
N#define UART_ECR_DATA_M         0x000000FF  // Error Clear
N#define UART_ECR_DATA_S         0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_FR register.
N//
N//*****************************************************************************
N#define UART_FR_TXFE            0x00000080  // UART Transmit FIFO Empty
N#define UART_FR_RXFF            0x00000040  // UART Receive FIFO Full
N#define UART_FR_TXFF            0x00000020  // UART Transmit FIFO Full
N#define UART_FR_RXFE            0x00000010  // UART Receive FIFO Empty
N#define UART_FR_BUSY            0x00000008  // UART Busy
N#define UART_FR_CTS             0x00000001  // Clear To Send
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_ILPR register.
N//
N//*****************************************************************************
N#define UART_ILPR_ILPDVSR_M     0x000000FF  // IrDA Low-Power Divisor
N#define UART_ILPR_ILPDVSR_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_IBRD register.
N//
N//*****************************************************************************
N#define UART_IBRD_DIVINT_M      0x0000FFFF  // Integer Baud-Rate Divisor
N#define UART_IBRD_DIVINT_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_FBRD register.
N//
N//*****************************************************************************
N#define UART_FBRD_DIVFRAC_M     0x0000003F  // Fractional Baud-Rate Divisor
N#define UART_FBRD_DIVFRAC_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_LCRH register.
N//
N//*****************************************************************************
N#define UART_LCRH_SPS           0x00000080  // UART Stick Parity Select
N#define UART_LCRH_WLEN_M        0x00000060  // UART Word Length
N#define UART_LCRH_WLEN_5        0x00000000  // 5 bits (default)
N#define UART_LCRH_WLEN_6        0x00000020  // 6 bits
N#define UART_LCRH_WLEN_7        0x00000040  // 7 bits
N#define UART_LCRH_WLEN_8        0x00000060  // 8 bits
N#define UART_LCRH_FEN           0x00000010  // UART Enable FIFOs
N#define UART_LCRH_STP2          0x00000008  // UART Two Stop Bits Select
N#define UART_LCRH_EPS           0x00000004  // UART Even Parity Select
N#define UART_LCRH_PEN           0x00000002  // UART Parity Enable
N#define UART_LCRH_BRK           0x00000001  // UART Send Break
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_CTL register.
N//
N//*****************************************************************************
N#define UART_CTL_CTSEN          0x00008000  // Enable Clear To Send
N#define UART_CTL_RTSEN          0x00004000  // Enable Request to Send
N#define UART_CTL_RTS            0x00000800  // Request to Send
N#define UART_CTL_RXE            0x00000200  // UART Receive Enable
N#define UART_CTL_TXE            0x00000100  // UART Transmit Enable
N#define UART_CTL_LBE            0x00000080  // UART Loop Back Enable
N#define UART_CTL_HSE            0x00000020  // High-Speed Enable
N#define UART_CTL_EOT            0x00000010  // End of Transmission
N#define UART_CTL_SMART          0x00000008  // ISO 7816 Smart Card Support
N#define UART_CTL_SIRLP          0x00000004  // UART SIR Low-Power Mode
N#define UART_CTL_SIREN          0x00000002  // UART SIR Enable
N#define UART_CTL_UARTEN         0x00000001  // UART Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_IFLS register.
N//
N//*****************************************************************************
N#define UART_IFLS_RX_M          0x00000038  // UART Receive Interrupt FIFO
N                                            // Level Select
N#define UART_IFLS_RX1_8         0x00000000  // RX FIFO >= 1/8 full
N#define UART_IFLS_RX2_8         0x00000008  // RX FIFO >= 1/4 full
N#define UART_IFLS_RX4_8         0x00000010  // RX FIFO >= 1/2 full (default)
N#define UART_IFLS_RX6_8         0x00000018  // RX FIFO >= 3/4 full
N#define UART_IFLS_RX7_8         0x00000020  // RX FIFO >= 7/8 full
N#define UART_IFLS_TX_M          0x00000007  // UART Transmit Interrupt FIFO
N                                            // Level Select
N#define UART_IFLS_TX1_8         0x00000000  // TX FIFO <= 1/8 full
N#define UART_IFLS_TX2_8         0x00000001  // TX FIFO <= 1/4 full
N#define UART_IFLS_TX4_8         0x00000002  // TX FIFO <= 1/2 full (default)
N#define UART_IFLS_TX6_8         0x00000003  // TX FIFO <= 3/4 full
N#define UART_IFLS_TX7_8         0x00000004  // TX FIFO <= 7/8 full
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_IM register.
N//
N//*****************************************************************************
N#define UART_IM_9BITIM          0x00001000  // 9-Bit Mode Interrupt Mask
N#define UART_IM_OEIM            0x00000400  // UART Overrun Error Interrupt
N                                            // Mask
N#define UART_IM_BEIM            0x00000200  // UART Break Error Interrupt Mask
N#define UART_IM_PEIM            0x00000100  // UART Parity Error Interrupt Mask
N#define UART_IM_FEIM            0x00000080  // UART Framing Error Interrupt
N                                            // Mask
N#define UART_IM_RTIM            0x00000040  // UART Receive Time-Out Interrupt
N                                            // Mask
N#define UART_IM_TXIM            0x00000020  // UART Transmit Interrupt Mask
N#define UART_IM_RXIM            0x00000010  // UART Receive Interrupt Mask
N#define UART_IM_CTSMIM          0x00000002  // UART Clear to Send Modem
N                                            // Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_RIS register.
N//
N//*****************************************************************************
N#define UART_RIS_9BITRIS        0x00001000  // 9-Bit Mode Raw Interrupt Status
N#define UART_RIS_OERIS          0x00000400  // UART Overrun Error Raw Interrupt
N                                            // Status
N#define UART_RIS_BERIS          0x00000200  // UART Break Error Raw Interrupt
N                                            // Status
N#define UART_RIS_PERIS          0x00000100  // UART Parity Error Raw Interrupt
N                                            // Status
N#define UART_RIS_FERIS          0x00000080  // UART Framing Error Raw Interrupt
N                                            // Status
N#define UART_RIS_RTRIS          0x00000040  // UART Receive Time-Out Raw
N                                            // Interrupt Status
N#define UART_RIS_TXRIS          0x00000020  // UART Transmit Raw Interrupt
N                                            // Status
N#define UART_RIS_RXRIS          0x00000010  // UART Receive Raw Interrupt
N                                            // Status
N#define UART_RIS_CTSRIS         0x00000002  // UART Clear to Send Modem Raw
N                                            // Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_MIS register.
N//
N//*****************************************************************************
N#define UART_MIS_9BITMIS        0x00001000  // 9-Bit Mode Masked Interrupt
N                                            // Status
N#define UART_MIS_OEMIS          0x00000400  // UART Overrun Error Masked
N                                            // Interrupt Status
N#define UART_MIS_BEMIS          0x00000200  // UART Break Error Masked
N                                            // Interrupt Status
N#define UART_MIS_PEMIS          0x00000100  // UART Parity Error Masked
N                                            // Interrupt Status
N#define UART_MIS_FEMIS          0x00000080  // UART Framing Error Masked
N                                            // Interrupt Status
N#define UART_MIS_RTMIS          0x00000040  // UART Receive Time-Out Masked
N                                            // Interrupt Status
N#define UART_MIS_TXMIS          0x00000020  // UART Transmit Masked Interrupt
N                                            // Status
N#define UART_MIS_RXMIS          0x00000010  // UART Receive Masked Interrupt
N                                            // Status
N#define UART_MIS_CTSMIS         0x00000002  // UART Clear to Send Modem Masked
N                                            // Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_ICR register.
N//
N//*****************************************************************************
N#define UART_ICR_9BITIC         0x00001000  // 9-Bit Mode Interrupt Clear
N#define UART_ICR_OEIC           0x00000400  // Overrun Error Interrupt Clear
N#define UART_ICR_BEIC           0x00000200  // Break Error Interrupt Clear
N#define UART_ICR_PEIC           0x00000100  // Parity Error Interrupt Clear
N#define UART_ICR_FEIC           0x00000080  // Framing Error Interrupt Clear
N#define UART_ICR_RTIC           0x00000040  // Receive Time-Out Interrupt Clear
N#define UART_ICR_TXIC           0x00000020  // Transmit Interrupt Clear
N#define UART_ICR_RXIC           0x00000010  // Receive Interrupt Clear
N#define UART_ICR_CTSMIC         0x00000002  // UART Clear to Send Modem
N                                            // Interrupt Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_DMACTL register.
N//
N//*****************************************************************************
N#define UART_DMACTL_DMAERR      0x00000004  // DMA on Error
N#define UART_DMACTL_TXDMAE      0x00000002  // Transmit DMA Enable
N#define UART_DMACTL_RXDMAE      0x00000001  // Receive DMA Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_9BITADDR
N// register.
N//
N//*****************************************************************************
N#define UART_9BITADDR_9BITEN    0x00008000  // Enable 9-Bit Mode
N#define UART_9BITADDR_ADDR_M    0x000000FF  // Self Address for 9-Bit Mode
N#define UART_9BITADDR_ADDR_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_9BITAMASK
N// register.
N//
N//*****************************************************************************
N#define UART_9BITAMASK_MASK_M   0x000000FF  // Self Address Mask for 9-Bit Mode
N#define UART_9BITAMASK_MASK_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_PP register.
N//
N//*****************************************************************************
N#define UART_PP_NB              0x00000002  // 9-Bit Support
N#define UART_PP_SC              0x00000001  // Smart Card Support
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UART_O_CC register.
N//
N//*****************************************************************************
N#define UART_CC_CS_M            0x0000000F  // UART Baud Clock Source
N#define UART_CC_CS_SYSCLK       0x00000000  // The system clock (default)
N#define UART_CC_CS_PIOSC        0x00000005  // PIOSC
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MSA register.
N//
N//*****************************************************************************
N#define I2C_MSA_SA_M            0x000000FE  // I2C Slave Address
N#define I2C_MSA_RS              0x00000001  // Receive not send
N#define I2C_MSA_SA_S            1
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MCS register.
N//
N//*****************************************************************************
N#define I2C_MCS_CLKTO           0x00000080  // Clock Timeout Error
N#define I2C_MCS_BUSBSY          0x00000040  // Bus Busy
N#define I2C_MCS_IDLE            0x00000020  // I2C Idle
N#define I2C_MCS_ARBLST          0x00000010  // Arbitration Lost
N#define I2C_MCS_HS              0x00000010  // High-Speed Enable
N#define I2C_MCS_ACK             0x00000008  // Data Acknowledge Enable
N#define I2C_MCS_DATACK          0x00000008  // Acknowledge Data
N#define I2C_MCS_ADRACK          0x00000004  // Acknowledge Address
N#define I2C_MCS_STOP            0x00000004  // Generate STOP
N#define I2C_MCS_ERROR           0x00000002  // Error
N#define I2C_MCS_START           0x00000002  // Generate START
N#define I2C_MCS_RUN             0x00000001  // I2C Master Enable
N#define I2C_MCS_BUSY            0x00000001  // I2C Busy
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MDR register.
N//
N//*****************************************************************************
N#define I2C_MDR_DATA_M          0x000000FF  // Data Transferred
N#define I2C_MDR_DATA_S          0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MTPR register.
N//
N//*****************************************************************************
N#define I2C_MTPR_HS             0x00000080  // High-Speed Enable
N#define I2C_MTPR_TPR_M          0x0000007F  // Timer Period
N#define I2C_MTPR_TPR_S          0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MIMR register.
N//
N//*****************************************************************************
N#define I2C_MIMR_CLKIM          0x00000002  // Clock Timeout Interrupt Mask
N#define I2C_MIMR_IM             0x00000001  // Master Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MRIS register.
N//
N//*****************************************************************************
N#define I2C_MRIS_CLKRIS         0x00000002  // Clock Timeout Raw Interrupt
N                                            // Status
N#define I2C_MRIS_RIS            0x00000001  // Master Raw Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MMIS register.
N//
N//*****************************************************************************
N#define I2C_MMIS_CLKMIS         0x00000002  // Clock Timeout Masked Interrupt
N                                            // Status
N#define I2C_MMIS_MIS            0x00000001  // Masked Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MICR register.
N//
N//*****************************************************************************
N#define I2C_MICR_CLKIC          0x00000002  // Clock Timeout Interrupt Clear
N#define I2C_MICR_IC             0x00000001  // Master Interrupt Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MCR register.
N//
N//*****************************************************************************
N#define I2C_MCR_GFE             0x00000040  // I2C Glitch Filter Enable
N#define I2C_MCR_SFE             0x00000020  // I2C Slave Function Enable
N#define I2C_MCR_MFE             0x00000010  // I2C Master Function Enable
N#define I2C_MCR_LPBK            0x00000001  // I2C Loopback
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MCLKOCNT register.
N//
N//*****************************************************************************
N#define I2C_MCLKOCNT_CNTL_M     0x000000FF  // I2C Master Count
N#define I2C_MCLKOCNT_CNTL_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MBMON register.
N//
N//*****************************************************************************
N#define I2C_MBMON_SDA           0x00000002  // I2C SDA Status
N#define I2C_MBMON_SCL           0x00000001  // I2C SCL Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_MCR2 register.
N//
N//*****************************************************************************
N#define I2C_MCR2_GFPW_M         0x00000070  // I2C Glitch Filter Pulse Width
N#define I2C_MCR2_GFPW_BYPASS    0x00000000  // Bypass
N#define I2C_MCR2_GFPW_1         0x00000010  // 1 clock
N#define I2C_MCR2_GFPW_2         0x00000020  // 2 clocks
N#define I2C_MCR2_GFPW_3         0x00000030  // 3 clocks
N#define I2C_MCR2_GFPW_4         0x00000040  // 4 clocks
N#define I2C_MCR2_GFPW_8         0x00000050  // 8 clocks
N#define I2C_MCR2_GFPW_16        0x00000060  // 16 clocks
N#define I2C_MCR2_GFPW_32        0x00000070  // 32 clocks
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_SOAR register.
N//
N//*****************************************************************************
N#define I2C_SOAR_OAR_M          0x0000007F  // I2C Slave Own Address
N#define I2C_SOAR_OAR_S          0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_SCSR register.
N//
N//*****************************************************************************
N#define I2C_SCSR_OAR2SEL        0x00000008  // OAR2 Address Matched
N#define I2C_SCSR_FBR            0x00000004  // First Byte Received
N#define I2C_SCSR_TREQ           0x00000002  // Transmit Request
N#define I2C_SCSR_DA             0x00000001  // Device Active
N#define I2C_SCSR_RREQ           0x00000001  // Receive Request
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_SDR register.
N//
N//*****************************************************************************
N#define I2C_SDR_DATA_M          0x000000FF  // Data for Transfer
N#define I2C_SDR_DATA_S          0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_SIMR register.
N//
N//*****************************************************************************
N#define I2C_SIMR_STOPIM         0x00000004  // Stop Condition Interrupt Mask
N#define I2C_SIMR_STARTIM        0x00000002  // Start Condition Interrupt Mask
N#define I2C_SIMR_DATAIM         0x00000001  // Data Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_SRIS register.
N//
N//*****************************************************************************
N#define I2C_SRIS_STOPRIS        0x00000004  // Stop Condition Raw Interrupt
N                                            // Status
N#define I2C_SRIS_STARTRIS       0x00000002  // Start Condition Raw Interrupt
N                                            // Status
N#define I2C_SRIS_DATARIS        0x00000001  // Data Raw Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_SMIS register.
N//
N//*****************************************************************************
N#define I2C_SMIS_STOPMIS        0x00000004  // Stop Condition Masked Interrupt
N                                            // Status
N#define I2C_SMIS_STARTMIS       0x00000002  // Start Condition Masked Interrupt
N                                            // Status
N#define I2C_SMIS_DATAMIS        0x00000001  // Data Masked Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_SICR register.
N//
N//*****************************************************************************
N#define I2C_SICR_STOPIC         0x00000004  // Stop Condition Interrupt Clear
N#define I2C_SICR_STARTIC        0x00000002  // Start Condition Interrupt Clear
N#define I2C_SICR_DATAIC         0x00000001  // Data Interrupt Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_SOAR2 register.
N//
N//*****************************************************************************
N#define I2C_SOAR2_OAR2EN        0x00000080  // I2C Slave Own Address 2 Enable
N#define I2C_SOAR2_OAR2_M        0x0000007F  // I2C Slave Own Address 2
N#define I2C_SOAR2_OAR2_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_SACKCTL register.
N//
N//*****************************************************************************
N#define I2C_SACKCTL_ACKOVAL     0x00000002  // I2C Slave ACK Override Value
N#define I2C_SACKCTL_ACKOEN      0x00000001  // I2C Slave ACK Override Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_PP register.
N//
N//*****************************************************************************
N#define I2C_PP_HS               0x00000001  // High-Speed Capable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the I2C_O_PC register.
N//
N//*****************************************************************************
N#define I2C_PC_HS               0x00000001  // High-Speed Capable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_CTL register.
N//
N//*****************************************************************************
N#define PWM_CTL_GLOBALSYNC3     0x00000008  // Update PWM Generator 3
N#define PWM_CTL_GLOBALSYNC2     0x00000004  // Update PWM Generator 2
N#define PWM_CTL_GLOBALSYNC1     0x00000002  // Update PWM Generator 1
N#define PWM_CTL_GLOBALSYNC0     0x00000001  // Update PWM Generator 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_SYNC register.
N//
N//*****************************************************************************
N#define PWM_SYNC_SYNC3          0x00000008  // Reset Generator 3 Counter
N#define PWM_SYNC_SYNC2          0x00000004  // Reset Generator 2 Counter
N#define PWM_SYNC_SYNC1          0x00000002  // Reset Generator 1 Counter
N#define PWM_SYNC_SYNC0          0x00000001  // Reset Generator 0 Counter
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_ENABLE register.
N//
N//*****************************************************************************
N#define PWM_ENABLE_PWM7EN       0x00000080  // PWM7 Output Enable
N#define PWM_ENABLE_PWM6EN       0x00000040  // PWM6 Output Enable
N#define PWM_ENABLE_PWM5EN       0x00000020  // PWM5 Output Enable
N#define PWM_ENABLE_PWM4EN       0x00000010  // PWM4 Output Enable
N#define PWM_ENABLE_PWM3EN       0x00000008  // PWM3 Output Enable
N#define PWM_ENABLE_PWM2EN       0x00000004  // PWM2 Output Enable
N#define PWM_ENABLE_PWM1EN       0x00000002  // PWM1 Output Enable
N#define PWM_ENABLE_PWM0EN       0x00000001  // PWM0 Output Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_INVERT register.
N//
N//*****************************************************************************
N#define PWM_INVERT_PWM7INV      0x00000080  // Invert PWM7 Signal
N#define PWM_INVERT_PWM6INV      0x00000040  // Invert PWM6 Signal
N#define PWM_INVERT_PWM5INV      0x00000020  // Invert PWM5 Signal
N#define PWM_INVERT_PWM4INV      0x00000010  // Invert PWM4 Signal
N#define PWM_INVERT_PWM3INV      0x00000008  // Invert PWM3 Signal
N#define PWM_INVERT_PWM2INV      0x00000004  // Invert PWM2 Signal
N#define PWM_INVERT_PWM1INV      0x00000002  // Invert PWM1 Signal
N#define PWM_INVERT_PWM0INV      0x00000001  // Invert PWM0 Signal
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_FAULT register.
N//
N//*****************************************************************************
N#define PWM_FAULT_FAULT7        0x00000080  // PWM7 Fault
N#define PWM_FAULT_FAULT6        0x00000040  // PWM6 Fault
N#define PWM_FAULT_FAULT5        0x00000020  // PWM5 Fault
N#define PWM_FAULT_FAULT4        0x00000010  // PWM4 Fault
N#define PWM_FAULT_FAULT3        0x00000008  // PWM3 Fault
N#define PWM_FAULT_FAULT2        0x00000004  // PWM2 Fault
N#define PWM_FAULT_FAULT1        0x00000002  // PWM1 Fault
N#define PWM_FAULT_FAULT0        0x00000001  // PWM0 Fault
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_INTEN register.
N//
N//*****************************************************************************
N#define PWM_INTEN_INTFAULT1     0x00020000  // Interrupt Fault 1
N#define PWM_INTEN_INTFAULT0     0x00010000  // Interrupt Fault 0
N#define PWM_INTEN_INTPWM3       0x00000008  // PWM3 Interrupt Enable
N#define PWM_INTEN_INTPWM2       0x00000004  // PWM2 Interrupt Enable
N#define PWM_INTEN_INTPWM1       0x00000002  // PWM1 Interrupt Enable
N#define PWM_INTEN_INTPWM0       0x00000001  // PWM0 Interrupt Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_RIS register.
N//
N//*****************************************************************************
N#define PWM_RIS_INTFAULT1       0x00020000  // Interrupt Fault PWM 1
N#define PWM_RIS_INTFAULT0       0x00010000  // Interrupt Fault PWM 0
N#define PWM_RIS_INTPWM3         0x00000008  // PWM3 Interrupt Asserted
N#define PWM_RIS_INTPWM2         0x00000004  // PWM2 Interrupt Asserted
N#define PWM_RIS_INTPWM1         0x00000002  // PWM1 Interrupt Asserted
N#define PWM_RIS_INTPWM0         0x00000001  // PWM0 Interrupt Asserted
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_ISC register.
N//
N//*****************************************************************************
N#define PWM_ISC_INTFAULT1       0x00020000  // FAULT1 Interrupt Asserted
N#define PWM_ISC_INTFAULT0       0x00010000  // FAULT0 Interrupt Asserted
N#define PWM_ISC_INTPWM3         0x00000008  // PWM3 Interrupt Status
N#define PWM_ISC_INTPWM2         0x00000004  // PWM2 Interrupt Status
N#define PWM_ISC_INTPWM1         0x00000002  // PWM1 Interrupt Status
N#define PWM_ISC_INTPWM0         0x00000001  // PWM0 Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_STATUS register.
N//
N//*****************************************************************************
N#define PWM_STATUS_FAULT1       0x00000002  // Generator 1 Fault Status
N#define PWM_STATUS_FAULT0       0x00000001  // Generator 0 Fault Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_FAULTVAL register.
N//
N//*****************************************************************************
N#define PWM_FAULTVAL_PWM7       0x00000080  // PWM7 Fault Value
N#define PWM_FAULTVAL_PWM6       0x00000040  // PWM6 Fault Value
N#define PWM_FAULTVAL_PWM5       0x00000020  // PWM5 Fault Value
N#define PWM_FAULTVAL_PWM4       0x00000010  // PWM4 Fault Value
N#define PWM_FAULTVAL_PWM3       0x00000008  // PWM3 Fault Value
N#define PWM_FAULTVAL_PWM2       0x00000004  // PWM2 Fault Value
N#define PWM_FAULTVAL_PWM1       0x00000002  // PWM1 Fault Value
N#define PWM_FAULTVAL_PWM0       0x00000001  // PWM0 Fault Value
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_ENUPD register.
N//
N//*****************************************************************************
N#define PWM_ENUPD_ENUPD7_M      0x0000C000  // PWM7 Enable Update Mode
N#define PWM_ENUPD_ENUPD7_IMM    0x00000000  // Immediate
N#define PWM_ENUPD_ENUPD7_LSYNC  0x00008000  // Locally Synchronized
N#define PWM_ENUPD_ENUPD7_GSYNC  0x0000C000  // Globally Synchronized
N#define PWM_ENUPD_ENUPD6_M      0x00003000  // PWM6 Enable Update Mode
N#define PWM_ENUPD_ENUPD6_IMM    0x00000000  // Immediate
N#define PWM_ENUPD_ENUPD6_LSYNC  0x00002000  // Locally Synchronized
N#define PWM_ENUPD_ENUPD6_GSYNC  0x00003000  // Globally Synchronized
N#define PWM_ENUPD_ENUPD5_M      0x00000C00  // PWM5 Enable Update Mode
N#define PWM_ENUPD_ENUPD5_IMM    0x00000000  // Immediate
N#define PWM_ENUPD_ENUPD5_LSYNC  0x00000800  // Locally Synchronized
N#define PWM_ENUPD_ENUPD5_GSYNC  0x00000C00  // Globally Synchronized
N#define PWM_ENUPD_ENUPD4_M      0x00000300  // PWM4 Enable Update Mode
N#define PWM_ENUPD_ENUPD4_IMM    0x00000000  // Immediate
N#define PWM_ENUPD_ENUPD4_LSYNC  0x00000200  // Locally Synchronized
N#define PWM_ENUPD_ENUPD4_GSYNC  0x00000300  // Globally Synchronized
N#define PWM_ENUPD_ENUPD3_M      0x000000C0  // PWM3 Enable Update Mode
N#define PWM_ENUPD_ENUPD3_IMM    0x00000000  // Immediate
N#define PWM_ENUPD_ENUPD3_LSYNC  0x00000080  // Locally Synchronized
N#define PWM_ENUPD_ENUPD3_GSYNC  0x000000C0  // Globally Synchronized
N#define PWM_ENUPD_ENUPD2_M      0x00000030  // PWM2 Enable Update Mode
N#define PWM_ENUPD_ENUPD2_IMM    0x00000000  // Immediate
N#define PWM_ENUPD_ENUPD2_LSYNC  0x00000020  // Locally Synchronized
N#define PWM_ENUPD_ENUPD2_GSYNC  0x00000030  // Globally Synchronized
N#define PWM_ENUPD_ENUPD1_M      0x0000000C  // PWM1 Enable Update Mode
N#define PWM_ENUPD_ENUPD1_IMM    0x00000000  // Immediate
N#define PWM_ENUPD_ENUPD1_LSYNC  0x00000008  // Locally Synchronized
N#define PWM_ENUPD_ENUPD1_GSYNC  0x0000000C  // Globally Synchronized
N#define PWM_ENUPD_ENUPD0_M      0x00000003  // PWM0 Enable Update Mode
N#define PWM_ENUPD_ENUPD0_IMM    0x00000000  // Immediate
N#define PWM_ENUPD_ENUPD0_LSYNC  0x00000002  // Locally Synchronized
N#define PWM_ENUPD_ENUPD0_GSYNC  0x00000003  // Globally Synchronized
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_CTL register.
N//
N//*****************************************************************************
N#define PWM_0_CTL_LATCH         0x00040000  // Latch Fault Input
N#define PWM_0_CTL_MINFLTPER     0x00020000  // Minimum Fault Period
N#define PWM_0_CTL_FLTSRC        0x00010000  // Fault Condition Source
N#define PWM_0_CTL_DBFALLUPD_M   0x0000C000  // Specifies the update mode for
N                                            // the PWMnDBFALL register
N#define PWM_0_CTL_DBFALLUPD_I   0x00000000  // Immediate
N#define PWM_0_CTL_DBFALLUPD_LS  0x00008000  // Locally Synchronized
N#define PWM_0_CTL_DBFALLUPD_GS  0x0000C000  // Globally Synchronized
N#define PWM_0_CTL_DBRISEUPD_M   0x00003000  // PWMnDBRISE Update Mode
N#define PWM_0_CTL_DBRISEUPD_I   0x00000000  // Immediate
N#define PWM_0_CTL_DBRISEUPD_LS  0x00002000  // Locally Synchronized
N#define PWM_0_CTL_DBRISEUPD_GS  0x00003000  // Globally Synchronized
N#define PWM_0_CTL_DBCTLUPD_M    0x00000C00  // PWMnDBCTL Update Mode
N#define PWM_0_CTL_DBCTLUPD_I    0x00000000  // Immediate
N#define PWM_0_CTL_DBCTLUPD_LS   0x00000800  // Locally Synchronized
N#define PWM_0_CTL_DBCTLUPD_GS   0x00000C00  // Globally Synchronized
N#define PWM_0_CTL_GENBUPD_M     0x00000300  // PWMnGENB Update Mode
N#define PWM_0_CTL_GENBUPD_I     0x00000000  // Immediate
N#define PWM_0_CTL_GENBUPD_LS    0x00000200  // Locally Synchronized
N#define PWM_0_CTL_GENBUPD_GS    0x00000300  // Globally Synchronized
N#define PWM_0_CTL_GENAUPD_M     0x000000C0  // PWMnGENA Update Mode
N#define PWM_0_CTL_GENAUPD_I     0x00000000  // Immediate
N#define PWM_0_CTL_GENAUPD_LS    0x00000080  // Locally Synchronized
N#define PWM_0_CTL_GENAUPD_GS    0x000000C0  // Globally Synchronized
N#define PWM_0_CTL_CMPBUPD       0x00000020  // Comparator B Update Mode
N#define PWM_0_CTL_CMPAUPD       0x00000010  // Comparator A Update Mode
N#define PWM_0_CTL_LOADUPD       0x00000008  // Load Register Update Mode
N#define PWM_0_CTL_DEBUG         0x00000004  // Debug Mode
N#define PWM_0_CTL_MODE          0x00000002  // Counter Mode
N#define PWM_0_CTL_ENABLE        0x00000001  // PWM Block Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_INTEN register.
N//
N//*****************************************************************************
N#define PWM_0_INTEN_TRCMPBD     0x00002000  // Trigger for Counter=Comparator B
N                                            // Down
N#define PWM_0_INTEN_TRCMPBU     0x00001000  // Trigger for Counter=Comparator B
N                                            // Up
N#define PWM_0_INTEN_TRCMPAD     0x00000800  // Trigger for Counter=Comparator A
N                                            // Down
N#define PWM_0_INTEN_TRCMPAU     0x00000400  // Trigger for Counter=Comparator A
N                                            // Up
N#define PWM_0_INTEN_TRCNTLOAD   0x00000200  // Trigger for Counter=Load
N#define PWM_0_INTEN_TRCNTZERO   0x00000100  // Trigger for Counter=0
N#define PWM_0_INTEN_INTCMPBD    0x00000020  // Interrupt for Counter=Comparator
N                                            // B Down
N#define PWM_0_INTEN_INTCMPBU    0x00000010  // Interrupt for Counter=Comparator
N                                            // B Up
N#define PWM_0_INTEN_INTCMPAD    0x00000008  // Interrupt for Counter=Comparator
N                                            // A Down
N#define PWM_0_INTEN_INTCMPAU    0x00000004  // Interrupt for Counter=Comparator
N                                            // A Up
N#define PWM_0_INTEN_INTCNTLOAD  0x00000002  // Interrupt for Counter=Load
N#define PWM_0_INTEN_INTCNTZERO  0x00000001  // Interrupt for Counter=0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_RIS register.
N//
N//*****************************************************************************
N#define PWM_0_RIS_INTCMPBD      0x00000020  // Comparator B Down Interrupt
N                                            // Status
N#define PWM_0_RIS_INTCMPBU      0x00000010  // Comparator B Up Interrupt Status
N#define PWM_0_RIS_INTCMPAD      0x00000008  // Comparator A Down Interrupt
N                                            // Status
N#define PWM_0_RIS_INTCMPAU      0x00000004  // Comparator A Up Interrupt Status
N#define PWM_0_RIS_INTCNTLOAD    0x00000002  // Counter=Load Interrupt Status
N#define PWM_0_RIS_INTCNTZERO    0x00000001  // Counter=0 Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_ISC register.
N//
N//*****************************************************************************
N#define PWM_0_ISC_INTCMPBD      0x00000020  // Comparator B Down Interrupt
N#define PWM_0_ISC_INTCMPBU      0x00000010  // Comparator B Up Interrupt
N#define PWM_0_ISC_INTCMPAD      0x00000008  // Comparator A Down Interrupt
N#define PWM_0_ISC_INTCMPAU      0x00000004  // Comparator A Up Interrupt
N#define PWM_0_ISC_INTCNTLOAD    0x00000002  // Counter=Load Interrupt
N#define PWM_0_ISC_INTCNTZERO    0x00000001  // Counter=0 Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_LOAD register.
N//
N//*****************************************************************************
N#define PWM_0_LOAD_M            0x0000FFFF  // Counter Load Value
N#define PWM_0_LOAD_S            0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_COUNT register.
N//
N//*****************************************************************************
N#define PWM_0_COUNT_M           0x0000FFFF  // Counter Value
N#define PWM_0_COUNT_S           0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_CMPA register.
N//
N//*****************************************************************************
N#define PWM_0_CMPA_M            0x0000FFFF  // Comparator A Value
N#define PWM_0_CMPA_S            0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_CMPB register.
N//
N//*****************************************************************************
N#define PWM_0_CMPB_M            0x0000FFFF  // Comparator B Value
N#define PWM_0_CMPB_S            0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_GENA register.
N//
N//*****************************************************************************
N#define PWM_0_GENA_ACTCMPBD_M   0x00000C00  // Action for Comparator B Down
N#define PWM_0_GENA_ACTCMPBD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_0_GENA_ACTCMPBD_NONE                                                                              0x00000000  
N#define PWM_0_GENA_ACTCMPBD_INV 0x00000400  // Invert the output signal
N#define PWM_0_GENA_ACTCMPBD_ZERO                                              \
N                                0x00000800  // Set the output signal to 0
X#define PWM_0_GENA_ACTCMPBD_ZERO                                                                              0x00000800  
N#define PWM_0_GENA_ACTCMPBD_ONE 0x00000C00  // Set the output signal to 1
N#define PWM_0_GENA_ACTCMPBU_M   0x00000300  // Action for Comparator B Up
N#define PWM_0_GENA_ACTCMPBU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_0_GENA_ACTCMPBU_NONE                                                                              0x00000000  
N#define PWM_0_GENA_ACTCMPBU_INV 0x00000100  // Invert the output signal
N#define PWM_0_GENA_ACTCMPBU_ZERO                                              \
N                                0x00000200  // Set the output signal to 0
X#define PWM_0_GENA_ACTCMPBU_ZERO                                                                              0x00000200  
N#define PWM_0_GENA_ACTCMPBU_ONE 0x00000300  // Set the output signal to 1
N#define PWM_0_GENA_ACTCMPAD_M   0x000000C0  // Action for Comparator A Down
N#define PWM_0_GENA_ACTCMPAD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_0_GENA_ACTCMPAD_NONE                                                                              0x00000000  
N#define PWM_0_GENA_ACTCMPAD_INV 0x00000040  // Invert the output signal
N#define PWM_0_GENA_ACTCMPAD_ZERO                                              \
N                                0x00000080  // Set the output signal to 0
X#define PWM_0_GENA_ACTCMPAD_ZERO                                                                              0x00000080  
N#define PWM_0_GENA_ACTCMPAD_ONE 0x000000C0  // Set the output signal to 1
N#define PWM_0_GENA_ACTCMPAU_M   0x00000030  // Action for Comparator A Up
N#define PWM_0_GENA_ACTCMPAU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_0_GENA_ACTCMPAU_NONE                                                                              0x00000000  
N#define PWM_0_GENA_ACTCMPAU_INV 0x00000010  // Invert the output signal
N#define PWM_0_GENA_ACTCMPAU_ZERO                                              \
N                                0x00000020  // Set the output signal to 0
X#define PWM_0_GENA_ACTCMPAU_ZERO                                                                              0x00000020  
N#define PWM_0_GENA_ACTCMPAU_ONE 0x00000030  // Set the output signal to 1
N#define PWM_0_GENA_ACTLOAD_M    0x0000000C  // Action for Counter=Load
N#define PWM_0_GENA_ACTLOAD_NONE 0x00000000  // Do nothing
N#define PWM_0_GENA_ACTLOAD_INV  0x00000004  // Invert the output signal
N#define PWM_0_GENA_ACTLOAD_ZERO 0x00000008  // Set the output signal to 0
N#define PWM_0_GENA_ACTLOAD_ONE  0x0000000C  // Set the output signal to 1
N#define PWM_0_GENA_ACTZERO_M    0x00000003  // Action for Counter=0
N#define PWM_0_GENA_ACTZERO_NONE 0x00000000  // Do nothing
N#define PWM_0_GENA_ACTZERO_INV  0x00000001  // Invert the output signal
N#define PWM_0_GENA_ACTZERO_ZERO 0x00000002  // Set the output signal to 0
N#define PWM_0_GENA_ACTZERO_ONE  0x00000003  // Set the output signal to 1
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_GENB register.
N//
N//*****************************************************************************
N#define PWM_0_GENB_ACTCMPBD_M   0x00000C00  // Action for Comparator B Down
N#define PWM_0_GENB_ACTCMPBD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_0_GENB_ACTCMPBD_NONE                                                                              0x00000000  
N#define PWM_0_GENB_ACTCMPBD_INV 0x00000400  // Invert the output signal
N#define PWM_0_GENB_ACTCMPBD_ZERO                                              \
N                                0x00000800  // Set the output signal to 0
X#define PWM_0_GENB_ACTCMPBD_ZERO                                                                              0x00000800  
N#define PWM_0_GENB_ACTCMPBD_ONE 0x00000C00  // Set the output signal to 1
N#define PWM_0_GENB_ACTCMPBU_M   0x00000300  // Action for Comparator B Up
N#define PWM_0_GENB_ACTCMPBU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_0_GENB_ACTCMPBU_NONE                                                                              0x00000000  
N#define PWM_0_GENB_ACTCMPBU_INV 0x00000100  // Invert the output signal
N#define PWM_0_GENB_ACTCMPBU_ZERO                                              \
N                                0x00000200  // Set the output signal to 0
X#define PWM_0_GENB_ACTCMPBU_ZERO                                                                              0x00000200  
N#define PWM_0_GENB_ACTCMPBU_ONE 0x00000300  // Set the output signal to 1
N#define PWM_0_GENB_ACTCMPAD_M   0x000000C0  // Action for Comparator A Down
N#define PWM_0_GENB_ACTCMPAD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_0_GENB_ACTCMPAD_NONE                                                                              0x00000000  
N#define PWM_0_GENB_ACTCMPAD_INV 0x00000040  // Invert the output signal
N#define PWM_0_GENB_ACTCMPAD_ZERO                                              \
N                                0x00000080  // Set the output signal to 0
X#define PWM_0_GENB_ACTCMPAD_ZERO                                                                              0x00000080  
N#define PWM_0_GENB_ACTCMPAD_ONE 0x000000C0  // Set the output signal to 1
N#define PWM_0_GENB_ACTCMPAU_M   0x00000030  // Action for Comparator A Up
N#define PWM_0_GENB_ACTCMPAU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_0_GENB_ACTCMPAU_NONE                                                                              0x00000000  
N#define PWM_0_GENB_ACTCMPAU_INV 0x00000010  // Invert the output signal
N#define PWM_0_GENB_ACTCMPAU_ZERO                                              \
N                                0x00000020  // Set the output signal to 0
X#define PWM_0_GENB_ACTCMPAU_ZERO                                                                              0x00000020  
N#define PWM_0_GENB_ACTCMPAU_ONE 0x00000030  // Set the output signal to 1
N#define PWM_0_GENB_ACTLOAD_M    0x0000000C  // Action for Counter=Load
N#define PWM_0_GENB_ACTLOAD_NONE 0x00000000  // Do nothing
N#define PWM_0_GENB_ACTLOAD_INV  0x00000004  // Invert the output signal
N#define PWM_0_GENB_ACTLOAD_ZERO 0x00000008  // Set the output signal to 0
N#define PWM_0_GENB_ACTLOAD_ONE  0x0000000C  // Set the output signal to 1
N#define PWM_0_GENB_ACTZERO_M    0x00000003  // Action for Counter=0
N#define PWM_0_GENB_ACTZERO_NONE 0x00000000  // Do nothing
N#define PWM_0_GENB_ACTZERO_INV  0x00000001  // Invert the output signal
N#define PWM_0_GENB_ACTZERO_ZERO 0x00000002  // Set the output signal to 0
N#define PWM_0_GENB_ACTZERO_ONE  0x00000003  // Set the output signal to 1
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_DBCTL register.
N//
N//*****************************************************************************
N#define PWM_0_DBCTL_ENABLE      0x00000001  // Dead-Band Generator Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_DBRISE register.
N//
N//*****************************************************************************
N#define PWM_0_DBRISE_DELAY_M    0x00000FFF  // Dead-Band Rise Delay
N#define PWM_0_DBRISE_DELAY_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_DBFALL register.
N//
N//*****************************************************************************
N#define PWM_0_DBFALL_DELAY_M    0x00000FFF  // Dead-Band Fall Delay
N#define PWM_0_DBFALL_DELAY_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_FLTSRC0
N// register.
N//
N//*****************************************************************************
N#define PWM_0_FLTSRC0_FAULT1    0x00000002  // Fault1 Input
N#define PWM_0_FLTSRC0_FAULT0    0x00000001  // Fault0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_FLTSRC1
N// register.
N//
N//*****************************************************************************
N#define PWM_0_FLTSRC1_DCMP7     0x00000080  // Digital Comparator 7
N#define PWM_0_FLTSRC1_DCMP6     0x00000040  // Digital Comparator 6
N#define PWM_0_FLTSRC1_DCMP5     0x00000020  // Digital Comparator 5
N#define PWM_0_FLTSRC1_DCMP4     0x00000010  // Digital Comparator 4
N#define PWM_0_FLTSRC1_DCMP3     0x00000008  // Digital Comparator 3
N#define PWM_0_FLTSRC1_DCMP2     0x00000004  // Digital Comparator 2
N#define PWM_0_FLTSRC1_DCMP1     0x00000002  // Digital Comparator 1
N#define PWM_0_FLTSRC1_DCMP0     0x00000001  // Digital Comparator 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_MINFLTPER
N// register.
N//
N//*****************************************************************************
N#define PWM_0_MINFLTPER_M       0x0000FFFF  // Minimum Fault Period
N#define PWM_0_MINFLTPER_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_CTL register.
N//
N//*****************************************************************************
N#define PWM_1_CTL_LATCH         0x00040000  // Latch Fault Input
N#define PWM_1_CTL_MINFLTPER     0x00020000  // Minimum Fault Period
N#define PWM_1_CTL_FLTSRC        0x00010000  // Fault Condition Source
N#define PWM_1_CTL_DBFALLUPD_M   0x0000C000  // Specifies the update mode for
N                                            // the PWMnDBFALL register
N#define PWM_1_CTL_DBFALLUPD_I   0x00000000  // Immediate
N#define PWM_1_CTL_DBFALLUPD_LS  0x00008000  // Locally Synchronized
N#define PWM_1_CTL_DBFALLUPD_GS  0x0000C000  // Globally Synchronized
N#define PWM_1_CTL_DBRISEUPD_M   0x00003000  // PWMnDBRISE Update Mode
N#define PWM_1_CTL_DBRISEUPD_I   0x00000000  // Immediate
N#define PWM_1_CTL_DBRISEUPD_LS  0x00002000  // Locally Synchronized
N#define PWM_1_CTL_DBRISEUPD_GS  0x00003000  // Globally Synchronized
N#define PWM_1_CTL_DBCTLUPD_M    0x00000C00  // PWMnDBCTL Update Mode
N#define PWM_1_CTL_DBCTLUPD_I    0x00000000  // Immediate
N#define PWM_1_CTL_DBCTLUPD_LS   0x00000800  // Locally Synchronized
N#define PWM_1_CTL_DBCTLUPD_GS   0x00000C00  // Globally Synchronized
N#define PWM_1_CTL_GENBUPD_M     0x00000300  // PWMnGENB Update Mode
N#define PWM_1_CTL_GENBUPD_I     0x00000000  // Immediate
N#define PWM_1_CTL_GENBUPD_LS    0x00000200  // Locally Synchronized
N#define PWM_1_CTL_GENBUPD_GS    0x00000300  // Globally Synchronized
N#define PWM_1_CTL_GENAUPD_M     0x000000C0  // PWMnGENA Update Mode
N#define PWM_1_CTL_GENAUPD_I     0x00000000  // Immediate
N#define PWM_1_CTL_GENAUPD_LS    0x00000080  // Locally Synchronized
N#define PWM_1_CTL_GENAUPD_GS    0x000000C0  // Globally Synchronized
N#define PWM_1_CTL_CMPBUPD       0x00000020  // Comparator B Update Mode
N#define PWM_1_CTL_CMPAUPD       0x00000010  // Comparator A Update Mode
N#define PWM_1_CTL_LOADUPD       0x00000008  // Load Register Update Mode
N#define PWM_1_CTL_DEBUG         0x00000004  // Debug Mode
N#define PWM_1_CTL_MODE          0x00000002  // Counter Mode
N#define PWM_1_CTL_ENABLE        0x00000001  // PWM Block Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_INTEN register.
N//
N//*****************************************************************************
N#define PWM_1_INTEN_TRCMPBD     0x00002000  // Trigger for Counter=Comparator B
N                                            // Down
N#define PWM_1_INTEN_TRCMPBU     0x00001000  // Trigger for Counter=Comparator B
N                                            // Up
N#define PWM_1_INTEN_TRCMPAD     0x00000800  // Trigger for Counter=Comparator A
N                                            // Down
N#define PWM_1_INTEN_TRCMPAU     0x00000400  // Trigger for Counter=Comparator A
N                                            // Up
N#define PWM_1_INTEN_TRCNTLOAD   0x00000200  // Trigger for Counter=Load
N#define PWM_1_INTEN_TRCNTZERO   0x00000100  // Trigger for Counter=0
N#define PWM_1_INTEN_INTCMPBD    0x00000020  // Interrupt for Counter=Comparator
N                                            // B Down
N#define PWM_1_INTEN_INTCMPBU    0x00000010  // Interrupt for Counter=Comparator
N                                            // B Up
N#define PWM_1_INTEN_INTCMPAD    0x00000008  // Interrupt for Counter=Comparator
N                                            // A Down
N#define PWM_1_INTEN_INTCMPAU    0x00000004  // Interrupt for Counter=Comparator
N                                            // A Up
N#define PWM_1_INTEN_INTCNTLOAD  0x00000002  // Interrupt for Counter=Load
N#define PWM_1_INTEN_INTCNTZERO  0x00000001  // Interrupt for Counter=0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_RIS register.
N//
N//*****************************************************************************
N#define PWM_1_RIS_INTCMPBD      0x00000020  // Comparator B Down Interrupt
N                                            // Status
N#define PWM_1_RIS_INTCMPBU      0x00000010  // Comparator B Up Interrupt Status
N#define PWM_1_RIS_INTCMPAD      0x00000008  // Comparator A Down Interrupt
N                                            // Status
N#define PWM_1_RIS_INTCMPAU      0x00000004  // Comparator A Up Interrupt Status
N#define PWM_1_RIS_INTCNTLOAD    0x00000002  // Counter=Load Interrupt Status
N#define PWM_1_RIS_INTCNTZERO    0x00000001  // Counter=0 Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_ISC register.
N//
N//*****************************************************************************
N#define PWM_1_ISC_INTCMPBD      0x00000020  // Comparator B Down Interrupt
N#define PWM_1_ISC_INTCMPBU      0x00000010  // Comparator B Up Interrupt
N#define PWM_1_ISC_INTCMPAD      0x00000008  // Comparator A Down Interrupt
N#define PWM_1_ISC_INTCMPAU      0x00000004  // Comparator A Up Interrupt
N#define PWM_1_ISC_INTCNTLOAD    0x00000002  // Counter=Load Interrupt
N#define PWM_1_ISC_INTCNTZERO    0x00000001  // Counter=0 Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_LOAD register.
N//
N//*****************************************************************************
N#define PWM_1_LOAD_LOAD_M       0x0000FFFF  // Counter Load Value
N#define PWM_1_LOAD_LOAD_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_COUNT register.
N//
N//*****************************************************************************
N#define PWM_1_COUNT_COUNT_M     0x0000FFFF  // Counter Value
N#define PWM_1_COUNT_COUNT_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_CMPA register.
N//
N//*****************************************************************************
N#define PWM_1_CMPA_COMPA_M      0x0000FFFF  // Comparator A Value
N#define PWM_1_CMPA_COMPA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_CMPB register.
N//
N//*****************************************************************************
N#define PWM_1_CMPB_COMPB_M      0x0000FFFF  // Comparator B Value
N#define PWM_1_CMPB_COMPB_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_GENA register.
N//
N//*****************************************************************************
N#define PWM_1_GENA_ACTCMPBD_M   0x00000C00  // Action for Comparator B Down
N#define PWM_1_GENA_ACTCMPBD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_1_GENA_ACTCMPBD_NONE                                                                              0x00000000  
N#define PWM_1_GENA_ACTCMPBD_INV 0x00000400  // Invert the output signal
N#define PWM_1_GENA_ACTCMPBD_ZERO                                              \
N                                0x00000800  // Set the output signal to 0
X#define PWM_1_GENA_ACTCMPBD_ZERO                                                                              0x00000800  
N#define PWM_1_GENA_ACTCMPBD_ONE 0x00000C00  // Set the output signal to 1
N#define PWM_1_GENA_ACTCMPBU_M   0x00000300  // Action for Comparator B Up
N#define PWM_1_GENA_ACTCMPBU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_1_GENA_ACTCMPBU_NONE                                                                              0x00000000  
N#define PWM_1_GENA_ACTCMPBU_INV 0x00000100  // Invert the output signal
N#define PWM_1_GENA_ACTCMPBU_ZERO                                              \
N                                0x00000200  // Set the output signal to 0
X#define PWM_1_GENA_ACTCMPBU_ZERO                                                                              0x00000200  
N#define PWM_1_GENA_ACTCMPBU_ONE 0x00000300  // Set the output signal to 1
N#define PWM_1_GENA_ACTCMPAD_M   0x000000C0  // Action for Comparator A Down
N#define PWM_1_GENA_ACTCMPAD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_1_GENA_ACTCMPAD_NONE                                                                              0x00000000  
N#define PWM_1_GENA_ACTCMPAD_INV 0x00000040  // Invert the output signal
N#define PWM_1_GENA_ACTCMPAD_ZERO                                              \
N                                0x00000080  // Set the output signal to 0
X#define PWM_1_GENA_ACTCMPAD_ZERO                                                                              0x00000080  
N#define PWM_1_GENA_ACTCMPAD_ONE 0x000000C0  // Set the output signal to 1
N#define PWM_1_GENA_ACTCMPAU_M   0x00000030  // Action for Comparator A Up
N#define PWM_1_GENA_ACTCMPAU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_1_GENA_ACTCMPAU_NONE                                                                              0x00000000  
N#define PWM_1_GENA_ACTCMPAU_INV 0x00000010  // Invert the output signal
N#define PWM_1_GENA_ACTCMPAU_ZERO                                              \
N                                0x00000020  // Set the output signal to 0
X#define PWM_1_GENA_ACTCMPAU_ZERO                                                                              0x00000020  
N#define PWM_1_GENA_ACTCMPAU_ONE 0x00000030  // Set the output signal to 1
N#define PWM_1_GENA_ACTLOAD_M    0x0000000C  // Action for Counter=Load
N#define PWM_1_GENA_ACTLOAD_NONE 0x00000000  // Do nothing
N#define PWM_1_GENA_ACTLOAD_INV  0x00000004  // Invert the output signal
N#define PWM_1_GENA_ACTLOAD_ZERO 0x00000008  // Set the output signal to 0
N#define PWM_1_GENA_ACTLOAD_ONE  0x0000000C  // Set the output signal to 1
N#define PWM_1_GENA_ACTZERO_M    0x00000003  // Action for Counter=0
N#define PWM_1_GENA_ACTZERO_NONE 0x00000000  // Do nothing
N#define PWM_1_GENA_ACTZERO_INV  0x00000001  // Invert the output signal
N#define PWM_1_GENA_ACTZERO_ZERO 0x00000002  // Set the output signal to 0
N#define PWM_1_GENA_ACTZERO_ONE  0x00000003  // Set the output signal to 1
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_GENB register.
N//
N//*****************************************************************************
N#define PWM_1_GENB_ACTCMPBD_M   0x00000C00  // Action for Comparator B Down
N#define PWM_1_GENB_ACTCMPBD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_1_GENB_ACTCMPBD_NONE                                                                              0x00000000  
N#define PWM_1_GENB_ACTCMPBD_INV 0x00000400  // Invert the output signal
N#define PWM_1_GENB_ACTCMPBD_ZERO                                              \
N                                0x00000800  // Set the output signal to 0
X#define PWM_1_GENB_ACTCMPBD_ZERO                                                                              0x00000800  
N#define PWM_1_GENB_ACTCMPBD_ONE 0x00000C00  // Set the output signal to 1
N#define PWM_1_GENB_ACTCMPBU_M   0x00000300  // Action for Comparator B Up
N#define PWM_1_GENB_ACTCMPBU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_1_GENB_ACTCMPBU_NONE                                                                              0x00000000  
N#define PWM_1_GENB_ACTCMPBU_INV 0x00000100  // Invert the output signal
N#define PWM_1_GENB_ACTCMPBU_ZERO                                              \
N                                0x00000200  // Set the output signal to 0
X#define PWM_1_GENB_ACTCMPBU_ZERO                                                                              0x00000200  
N#define PWM_1_GENB_ACTCMPBU_ONE 0x00000300  // Set the output signal to 1
N#define PWM_1_GENB_ACTCMPAD_M   0x000000C0  // Action for Comparator A Down
N#define PWM_1_GENB_ACTCMPAD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_1_GENB_ACTCMPAD_NONE                                                                              0x00000000  
N#define PWM_1_GENB_ACTCMPAD_INV 0x00000040  // Invert the output signal
N#define PWM_1_GENB_ACTCMPAD_ZERO                                              \
N                                0x00000080  // Set the output signal to 0
X#define PWM_1_GENB_ACTCMPAD_ZERO                                                                              0x00000080  
N#define PWM_1_GENB_ACTCMPAD_ONE 0x000000C0  // Set the output signal to 1
N#define PWM_1_GENB_ACTCMPAU_M   0x00000030  // Action for Comparator A Up
N#define PWM_1_GENB_ACTCMPAU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_1_GENB_ACTCMPAU_NONE                                                                              0x00000000  
N#define PWM_1_GENB_ACTCMPAU_INV 0x00000010  // Invert the output signal
N#define PWM_1_GENB_ACTCMPAU_ZERO                                              \
N                                0x00000020  // Set the output signal to 0
X#define PWM_1_GENB_ACTCMPAU_ZERO                                                                              0x00000020  
N#define PWM_1_GENB_ACTCMPAU_ONE 0x00000030  // Set the output signal to 1
N#define PWM_1_GENB_ACTLOAD_M    0x0000000C  // Action for Counter=Load
N#define PWM_1_GENB_ACTLOAD_NONE 0x00000000  // Do nothing
N#define PWM_1_GENB_ACTLOAD_INV  0x00000004  // Invert the output signal
N#define PWM_1_GENB_ACTLOAD_ZERO 0x00000008  // Set the output signal to 0
N#define PWM_1_GENB_ACTLOAD_ONE  0x0000000C  // Set the output signal to 1
N#define PWM_1_GENB_ACTZERO_M    0x00000003  // Action for Counter=0
N#define PWM_1_GENB_ACTZERO_NONE 0x00000000  // Do nothing
N#define PWM_1_GENB_ACTZERO_INV  0x00000001  // Invert the output signal
N#define PWM_1_GENB_ACTZERO_ZERO 0x00000002  // Set the output signal to 0
N#define PWM_1_GENB_ACTZERO_ONE  0x00000003  // Set the output signal to 1
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_DBCTL register.
N//
N//*****************************************************************************
N#define PWM_1_DBCTL_ENABLE      0x00000001  // Dead-Band Generator Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_DBRISE register.
N//
N//*****************************************************************************
N#define PWM_1_DBRISE_RISEDELAY_M                                              \
N                                0x00000FFF  // Dead-Band Rise Delay
X#define PWM_1_DBRISE_RISEDELAY_M                                                                              0x00000FFF  
N#define PWM_1_DBRISE_RISEDELAY_S                                              \
N                                0
X#define PWM_1_DBRISE_RISEDELAY_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_DBFALL register.
N//
N//*****************************************************************************
N#define PWM_1_DBFALL_FALLDELAY_M                                              \
N                                0x00000FFF  // Dead-Band Fall Delay
X#define PWM_1_DBFALL_FALLDELAY_M                                                                              0x00000FFF  
N#define PWM_1_DBFALL_FALLDELAY_S                                              \
N                                0
X#define PWM_1_DBFALL_FALLDELAY_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_FLTSRC0
N// register.
N//
N//*****************************************************************************
N#define PWM_1_FLTSRC0_FAULT1    0x00000002  // Fault1 Input
N#define PWM_1_FLTSRC0_FAULT0    0x00000001  // Fault0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_FLTSRC1
N// register.
N//
N//*****************************************************************************
N#define PWM_1_FLTSRC1_DCMP7     0x00000080  // Digital Comparator 7
N#define PWM_1_FLTSRC1_DCMP6     0x00000040  // Digital Comparator 6
N#define PWM_1_FLTSRC1_DCMP5     0x00000020  // Digital Comparator 5
N#define PWM_1_FLTSRC1_DCMP4     0x00000010  // Digital Comparator 4
N#define PWM_1_FLTSRC1_DCMP3     0x00000008  // Digital Comparator 3
N#define PWM_1_FLTSRC1_DCMP2     0x00000004  // Digital Comparator 2
N#define PWM_1_FLTSRC1_DCMP1     0x00000002  // Digital Comparator 1
N#define PWM_1_FLTSRC1_DCMP0     0x00000001  // Digital Comparator 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_MINFLTPER
N// register.
N//
N//*****************************************************************************
N#define PWM_1_MINFLTPER_MFP_M   0x0000FFFF  // Minimum Fault Period
N#define PWM_1_MINFLTPER_MFP_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_CTL register.
N//
N//*****************************************************************************
N#define PWM_2_CTL_LATCH         0x00040000  // Latch Fault Input
N#define PWM_2_CTL_MINFLTPER     0x00020000  // Minimum Fault Period
N#define PWM_2_CTL_FLTSRC        0x00010000  // Fault Condition Source
N#define PWM_2_CTL_DBFALLUPD_M   0x0000C000  // Specifies the update mode for
N                                            // the PWMnDBFALL register
N#define PWM_2_CTL_DBFALLUPD_I   0x00000000  // Immediate
N#define PWM_2_CTL_DBFALLUPD_LS  0x00008000  // Locally Synchronized
N#define PWM_2_CTL_DBFALLUPD_GS  0x0000C000  // Globally Synchronized
N#define PWM_2_CTL_DBRISEUPD_M   0x00003000  // PWMnDBRISE Update Mode
N#define PWM_2_CTL_DBRISEUPD_I   0x00000000  // Immediate
N#define PWM_2_CTL_DBRISEUPD_LS  0x00002000  // Locally Synchronized
N#define PWM_2_CTL_DBRISEUPD_GS  0x00003000  // Globally Synchronized
N#define PWM_2_CTL_DBCTLUPD_M    0x00000C00  // PWMnDBCTL Update Mode
N#define PWM_2_CTL_DBCTLUPD_I    0x00000000  // Immediate
N#define PWM_2_CTL_DBCTLUPD_LS   0x00000800  // Locally Synchronized
N#define PWM_2_CTL_DBCTLUPD_GS   0x00000C00  // Globally Synchronized
N#define PWM_2_CTL_GENBUPD_M     0x00000300  // PWMnGENB Update Mode
N#define PWM_2_CTL_GENBUPD_I     0x00000000  // Immediate
N#define PWM_2_CTL_GENBUPD_LS    0x00000200  // Locally Synchronized
N#define PWM_2_CTL_GENBUPD_GS    0x00000300  // Globally Synchronized
N#define PWM_2_CTL_GENAUPD_M     0x000000C0  // PWMnGENA Update Mode
N#define PWM_2_CTL_GENAUPD_I     0x00000000  // Immediate
N#define PWM_2_CTL_GENAUPD_LS    0x00000080  // Locally Synchronized
N#define PWM_2_CTL_GENAUPD_GS    0x000000C0  // Globally Synchronized
N#define PWM_2_CTL_CMPBUPD       0x00000020  // Comparator B Update Mode
N#define PWM_2_CTL_CMPAUPD       0x00000010  // Comparator A Update Mode
N#define PWM_2_CTL_LOADUPD       0x00000008  // Load Register Update Mode
N#define PWM_2_CTL_DEBUG         0x00000004  // Debug Mode
N#define PWM_2_CTL_MODE          0x00000002  // Counter Mode
N#define PWM_2_CTL_ENABLE        0x00000001  // PWM Block Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_INTEN register.
N//
N//*****************************************************************************
N#define PWM_2_INTEN_TRCMPBD     0x00002000  // Trigger for Counter=Comparator B
N                                            // Down
N#define PWM_2_INTEN_TRCMPBU     0x00001000  // Trigger for Counter=Comparator B
N                                            // Up
N#define PWM_2_INTEN_TRCMPAD     0x00000800  // Trigger for Counter=Comparator A
N                                            // Down
N#define PWM_2_INTEN_TRCMPAU     0x00000400  // Trigger for Counter=Comparator A
N                                            // Up
N#define PWM_2_INTEN_TRCNTLOAD   0x00000200  // Trigger for Counter=Load
N#define PWM_2_INTEN_TRCNTZERO   0x00000100  // Trigger for Counter=0
N#define PWM_2_INTEN_INTCMPBD    0x00000020  // Interrupt for Counter=Comparator
N                                            // B Down
N#define PWM_2_INTEN_INTCMPBU    0x00000010  // Interrupt for Counter=Comparator
N                                            // B Up
N#define PWM_2_INTEN_INTCMPAD    0x00000008  // Interrupt for Counter=Comparator
N                                            // A Down
N#define PWM_2_INTEN_INTCMPAU    0x00000004  // Interrupt for Counter=Comparator
N                                            // A Up
N#define PWM_2_INTEN_INTCNTLOAD  0x00000002  // Interrupt for Counter=Load
N#define PWM_2_INTEN_INTCNTZERO  0x00000001  // Interrupt for Counter=0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_RIS register.
N//
N//*****************************************************************************
N#define PWM_2_RIS_INTCMPBD      0x00000020  // Comparator B Down Interrupt
N                                            // Status
N#define PWM_2_RIS_INTCMPBU      0x00000010  // Comparator B Up Interrupt Status
N#define PWM_2_RIS_INTCMPAD      0x00000008  // Comparator A Down Interrupt
N                                            // Status
N#define PWM_2_RIS_INTCMPAU      0x00000004  // Comparator A Up Interrupt Status
N#define PWM_2_RIS_INTCNTLOAD    0x00000002  // Counter=Load Interrupt Status
N#define PWM_2_RIS_INTCNTZERO    0x00000001  // Counter=0 Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_ISC register.
N//
N//*****************************************************************************
N#define PWM_2_ISC_INTCMPBD      0x00000020  // Comparator B Down Interrupt
N#define PWM_2_ISC_INTCMPBU      0x00000010  // Comparator B Up Interrupt
N#define PWM_2_ISC_INTCMPAD      0x00000008  // Comparator A Down Interrupt
N#define PWM_2_ISC_INTCMPAU      0x00000004  // Comparator A Up Interrupt
N#define PWM_2_ISC_INTCNTLOAD    0x00000002  // Counter=Load Interrupt
N#define PWM_2_ISC_INTCNTZERO    0x00000001  // Counter=0 Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_LOAD register.
N//
N//*****************************************************************************
N#define PWM_2_LOAD_LOAD_M       0x0000FFFF  // Counter Load Value
N#define PWM_2_LOAD_LOAD_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_COUNT register.
N//
N//*****************************************************************************
N#define PWM_2_COUNT_COUNT_M     0x0000FFFF  // Counter Value
N#define PWM_2_COUNT_COUNT_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_CMPA register.
N//
N//*****************************************************************************
N#define PWM_2_CMPA_COMPA_M      0x0000FFFF  // Comparator A Value
N#define PWM_2_CMPA_COMPA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_CMPB register.
N//
N//*****************************************************************************
N#define PWM_2_CMPB_COMPB_M      0x0000FFFF  // Comparator B Value
N#define PWM_2_CMPB_COMPB_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_GENA register.
N//
N//*****************************************************************************
N#define PWM_2_GENA_ACTCMPBD_M   0x00000C00  // Action for Comparator B Down
N#define PWM_2_GENA_ACTCMPBD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_2_GENA_ACTCMPBD_NONE                                                                              0x00000000  
N#define PWM_2_GENA_ACTCMPBD_INV 0x00000400  // Invert the output signal
N#define PWM_2_GENA_ACTCMPBD_ZERO                                              \
N                                0x00000800  // Set the output signal to 0
X#define PWM_2_GENA_ACTCMPBD_ZERO                                                                              0x00000800  
N#define PWM_2_GENA_ACTCMPBD_ONE 0x00000C00  // Set the output signal to 1
N#define PWM_2_GENA_ACTCMPBU_M   0x00000300  // Action for Comparator B Up
N#define PWM_2_GENA_ACTCMPBU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_2_GENA_ACTCMPBU_NONE                                                                              0x00000000  
N#define PWM_2_GENA_ACTCMPBU_INV 0x00000100  // Invert the output signal
N#define PWM_2_GENA_ACTCMPBU_ZERO                                              \
N                                0x00000200  // Set the output signal to 0
X#define PWM_2_GENA_ACTCMPBU_ZERO                                                                              0x00000200  
N#define PWM_2_GENA_ACTCMPBU_ONE 0x00000300  // Set the output signal to 1
N#define PWM_2_GENA_ACTCMPAD_M   0x000000C0  // Action for Comparator A Down
N#define PWM_2_GENA_ACTCMPAD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_2_GENA_ACTCMPAD_NONE                                                                              0x00000000  
N#define PWM_2_GENA_ACTCMPAD_INV 0x00000040  // Invert the output signal
N#define PWM_2_GENA_ACTCMPAD_ZERO                                              \
N                                0x00000080  // Set the output signal to 0
X#define PWM_2_GENA_ACTCMPAD_ZERO                                                                              0x00000080  
N#define PWM_2_GENA_ACTCMPAD_ONE 0x000000C0  // Set the output signal to 1
N#define PWM_2_GENA_ACTCMPAU_M   0x00000030  // Action for Comparator A Up
N#define PWM_2_GENA_ACTCMPAU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_2_GENA_ACTCMPAU_NONE                                                                              0x00000000  
N#define PWM_2_GENA_ACTCMPAU_INV 0x00000010  // Invert the output signal
N#define PWM_2_GENA_ACTCMPAU_ZERO                                              \
N                                0x00000020  // Set the output signal to 0
X#define PWM_2_GENA_ACTCMPAU_ZERO                                                                              0x00000020  
N#define PWM_2_GENA_ACTCMPAU_ONE 0x00000030  // Set the output signal to 1
N#define PWM_2_GENA_ACTLOAD_M    0x0000000C  // Action for Counter=Load
N#define PWM_2_GENA_ACTLOAD_NONE 0x00000000  // Do nothing
N#define PWM_2_GENA_ACTLOAD_INV  0x00000004  // Invert the output signal
N#define PWM_2_GENA_ACTLOAD_ZERO 0x00000008  // Set the output signal to 0
N#define PWM_2_GENA_ACTLOAD_ONE  0x0000000C  // Set the output signal to 1
N#define PWM_2_GENA_ACTZERO_M    0x00000003  // Action for Counter=0
N#define PWM_2_GENA_ACTZERO_NONE 0x00000000  // Do nothing
N#define PWM_2_GENA_ACTZERO_INV  0x00000001  // Invert the output signal
N#define PWM_2_GENA_ACTZERO_ZERO 0x00000002  // Set the output signal to 0
N#define PWM_2_GENA_ACTZERO_ONE  0x00000003  // Set the output signal to 1
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_GENB register.
N//
N//*****************************************************************************
N#define PWM_2_GENB_ACTCMPBD_M   0x00000C00  // Action for Comparator B Down
N#define PWM_2_GENB_ACTCMPBD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_2_GENB_ACTCMPBD_NONE                                                                              0x00000000  
N#define PWM_2_GENB_ACTCMPBD_INV 0x00000400  // Invert the output signal
N#define PWM_2_GENB_ACTCMPBD_ZERO                                              \
N                                0x00000800  // Set the output signal to 0
X#define PWM_2_GENB_ACTCMPBD_ZERO                                                                              0x00000800  
N#define PWM_2_GENB_ACTCMPBD_ONE 0x00000C00  // Set the output signal to 1
N#define PWM_2_GENB_ACTCMPBU_M   0x00000300  // Action for Comparator B Up
N#define PWM_2_GENB_ACTCMPBU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_2_GENB_ACTCMPBU_NONE                                                                              0x00000000  
N#define PWM_2_GENB_ACTCMPBU_INV 0x00000100  // Invert the output signal
N#define PWM_2_GENB_ACTCMPBU_ZERO                                              \
N                                0x00000200  // Set the output signal to 0
X#define PWM_2_GENB_ACTCMPBU_ZERO                                                                              0x00000200  
N#define PWM_2_GENB_ACTCMPBU_ONE 0x00000300  // Set the output signal to 1
N#define PWM_2_GENB_ACTCMPAD_M   0x000000C0  // Action for Comparator A Down
N#define PWM_2_GENB_ACTCMPAD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_2_GENB_ACTCMPAD_NONE                                                                              0x00000000  
N#define PWM_2_GENB_ACTCMPAD_INV 0x00000040  // Invert the output signal
N#define PWM_2_GENB_ACTCMPAD_ZERO                                              \
N                                0x00000080  // Set the output signal to 0
X#define PWM_2_GENB_ACTCMPAD_ZERO                                                                              0x00000080  
N#define PWM_2_GENB_ACTCMPAD_ONE 0x000000C0  // Set the output signal to 1
N#define PWM_2_GENB_ACTCMPAU_M   0x00000030  // Action for Comparator A Up
N#define PWM_2_GENB_ACTCMPAU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_2_GENB_ACTCMPAU_NONE                                                                              0x00000000  
N#define PWM_2_GENB_ACTCMPAU_INV 0x00000010  // Invert the output signal
N#define PWM_2_GENB_ACTCMPAU_ZERO                                              \
N                                0x00000020  // Set the output signal to 0
X#define PWM_2_GENB_ACTCMPAU_ZERO                                                                              0x00000020  
N#define PWM_2_GENB_ACTCMPAU_ONE 0x00000030  // Set the output signal to 1
N#define PWM_2_GENB_ACTLOAD_M    0x0000000C  // Action for Counter=Load
N#define PWM_2_GENB_ACTLOAD_NONE 0x00000000  // Do nothing
N#define PWM_2_GENB_ACTLOAD_INV  0x00000004  // Invert the output signal
N#define PWM_2_GENB_ACTLOAD_ZERO 0x00000008  // Set the output signal to 0
N#define PWM_2_GENB_ACTLOAD_ONE  0x0000000C  // Set the output signal to 1
N#define PWM_2_GENB_ACTZERO_M    0x00000003  // Action for Counter=0
N#define PWM_2_GENB_ACTZERO_NONE 0x00000000  // Do nothing
N#define PWM_2_GENB_ACTZERO_INV  0x00000001  // Invert the output signal
N#define PWM_2_GENB_ACTZERO_ZERO 0x00000002  // Set the output signal to 0
N#define PWM_2_GENB_ACTZERO_ONE  0x00000003  // Set the output signal to 1
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_DBCTL register.
N//
N//*****************************************************************************
N#define PWM_2_DBCTL_ENABLE      0x00000001  // Dead-Band Generator Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_DBRISE register.
N//
N//*****************************************************************************
N#define PWM_2_DBRISE_RISEDELAY_M                                              \
N                                0x00000FFF  // Dead-Band Rise Delay
X#define PWM_2_DBRISE_RISEDELAY_M                                                                              0x00000FFF  
N#define PWM_2_DBRISE_RISEDELAY_S                                              \
N                                0
X#define PWM_2_DBRISE_RISEDELAY_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_DBFALL register.
N//
N//*****************************************************************************
N#define PWM_2_DBFALL_FALLDELAY_M                                              \
N                                0x00000FFF  // Dead-Band Fall Delay
X#define PWM_2_DBFALL_FALLDELAY_M                                                                              0x00000FFF  
N#define PWM_2_DBFALL_FALLDELAY_S                                              \
N                                0
X#define PWM_2_DBFALL_FALLDELAY_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_FLTSRC0
N// register.
N//
N//*****************************************************************************
N#define PWM_2_FLTSRC0_FAULT1    0x00000002  // Fault1 Input
N#define PWM_2_FLTSRC0_FAULT0    0x00000001  // Fault0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_FLTSRC1
N// register.
N//
N//*****************************************************************************
N#define PWM_2_FLTSRC1_DCMP7     0x00000080  // Digital Comparator 7
N#define PWM_2_FLTSRC1_DCMP6     0x00000040  // Digital Comparator 6
N#define PWM_2_FLTSRC1_DCMP5     0x00000020  // Digital Comparator 5
N#define PWM_2_FLTSRC1_DCMP4     0x00000010  // Digital Comparator 4
N#define PWM_2_FLTSRC1_DCMP3     0x00000008  // Digital Comparator 3
N#define PWM_2_FLTSRC1_DCMP2     0x00000004  // Digital Comparator 2
N#define PWM_2_FLTSRC1_DCMP1     0x00000002  // Digital Comparator 1
N#define PWM_2_FLTSRC1_DCMP0     0x00000001  // Digital Comparator 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_MINFLTPER
N// register.
N//
N//*****************************************************************************
N#define PWM_2_MINFLTPER_MFP_M   0x0000FFFF  // Minimum Fault Period
N#define PWM_2_MINFLTPER_MFP_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_CTL register.
N//
N//*****************************************************************************
N#define PWM_3_CTL_LATCH         0x00040000  // Latch Fault Input
N#define PWM_3_CTL_MINFLTPER     0x00020000  // Minimum Fault Period
N#define PWM_3_CTL_FLTSRC        0x00010000  // Fault Condition Source
N#define PWM_3_CTL_DBFALLUPD_M   0x0000C000  // Specifies the update mode for
N                                            // the PWMnDBFALL register
N#define PWM_3_CTL_DBFALLUPD_I   0x00000000  // Immediate
N#define PWM_3_CTL_DBFALLUPD_LS  0x00008000  // Locally Synchronized
N#define PWM_3_CTL_DBFALLUPD_GS  0x0000C000  // Globally Synchronized
N#define PWM_3_CTL_DBRISEUPD_M   0x00003000  // PWMnDBRISE Update Mode
N#define PWM_3_CTL_DBRISEUPD_I   0x00000000  // Immediate
N#define PWM_3_CTL_DBRISEUPD_LS  0x00002000  // Locally Synchronized
N#define PWM_3_CTL_DBRISEUPD_GS  0x00003000  // Globally Synchronized
N#define PWM_3_CTL_DBCTLUPD_M    0x00000C00  // PWMnDBCTL Update Mode
N#define PWM_3_CTL_DBCTLUPD_I    0x00000000  // Immediate
N#define PWM_3_CTL_DBCTLUPD_LS   0x00000800  // Locally Synchronized
N#define PWM_3_CTL_DBCTLUPD_GS   0x00000C00  // Globally Synchronized
N#define PWM_3_CTL_GENBUPD_M     0x00000300  // PWMnGENB Update Mode
N#define PWM_3_CTL_GENBUPD_I     0x00000000  // Immediate
N#define PWM_3_CTL_GENBUPD_LS    0x00000200  // Locally Synchronized
N#define PWM_3_CTL_GENBUPD_GS    0x00000300  // Globally Synchronized
N#define PWM_3_CTL_GENAUPD_M     0x000000C0  // PWMnGENA Update Mode
N#define PWM_3_CTL_GENAUPD_I     0x00000000  // Immediate
N#define PWM_3_CTL_GENAUPD_LS    0x00000080  // Locally Synchronized
N#define PWM_3_CTL_GENAUPD_GS    0x000000C0  // Globally Synchronized
N#define PWM_3_CTL_CMPBUPD       0x00000020  // Comparator B Update Mode
N#define PWM_3_CTL_CMPAUPD       0x00000010  // Comparator A Update Mode
N#define PWM_3_CTL_LOADUPD       0x00000008  // Load Register Update Mode
N#define PWM_3_CTL_DEBUG         0x00000004  // Debug Mode
N#define PWM_3_CTL_MODE          0x00000002  // Counter Mode
N#define PWM_3_CTL_ENABLE        0x00000001  // PWM Block Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_INTEN register.
N//
N//*****************************************************************************
N#define PWM_3_INTEN_TRCMPBD     0x00002000  // Trigger for Counter=Comparator B
N                                            // Down
N#define PWM_3_INTEN_TRCMPBU     0x00001000  // Trigger for Counter=Comparator B
N                                            // Up
N#define PWM_3_INTEN_TRCMPAD     0x00000800  // Trigger for Counter=Comparator A
N                                            // Down
N#define PWM_3_INTEN_TRCMPAU     0x00000400  // Trigger for Counter=Comparator A
N                                            // Up
N#define PWM_3_INTEN_TRCNTLOAD   0x00000200  // Trigger for Counter=Load
N#define PWM_3_INTEN_TRCNTZERO   0x00000100  // Trigger for Counter=0
N#define PWM_3_INTEN_INTCMPBD    0x00000020  // Interrupt for Counter=Comparator
N                                            // B Down
N#define PWM_3_INTEN_INTCMPBU    0x00000010  // Interrupt for Counter=Comparator
N                                            // B Up
N#define PWM_3_INTEN_INTCMPAD    0x00000008  // Interrupt for Counter=Comparator
N                                            // A Down
N#define PWM_3_INTEN_INTCMPAU    0x00000004  // Interrupt for Counter=Comparator
N                                            // A Up
N#define PWM_3_INTEN_INTCNTLOAD  0x00000002  // Interrupt for Counter=Load
N#define PWM_3_INTEN_INTCNTZERO  0x00000001  // Interrupt for Counter=0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_RIS register.
N//
N//*****************************************************************************
N#define PWM_3_RIS_INTCMPBD      0x00000020  // Comparator B Down Interrupt
N                                            // Status
N#define PWM_3_RIS_INTCMPBU      0x00000010  // Comparator B Up Interrupt Status
N#define PWM_3_RIS_INTCMPAD      0x00000008  // Comparator A Down Interrupt
N                                            // Status
N#define PWM_3_RIS_INTCMPAU      0x00000004  // Comparator A Up Interrupt Status
N#define PWM_3_RIS_INTCNTLOAD    0x00000002  // Counter=Load Interrupt Status
N#define PWM_3_RIS_INTCNTZERO    0x00000001  // Counter=0 Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_ISC register.
N//
N//*****************************************************************************
N#define PWM_3_ISC_INTCMPBD      0x00000020  // Comparator B Down Interrupt
N#define PWM_3_ISC_INTCMPBU      0x00000010  // Comparator B Up Interrupt
N#define PWM_3_ISC_INTCMPAD      0x00000008  // Comparator A Down Interrupt
N#define PWM_3_ISC_INTCMPAU      0x00000004  // Comparator A Up Interrupt
N#define PWM_3_ISC_INTCNTLOAD    0x00000002  // Counter=Load Interrupt
N#define PWM_3_ISC_INTCNTZERO    0x00000001  // Counter=0 Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_LOAD register.
N//
N//*****************************************************************************
N#define PWM_3_LOAD_LOAD_M       0x0000FFFF  // Counter Load Value
N#define PWM_3_LOAD_LOAD_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_COUNT register.
N//
N//*****************************************************************************
N#define PWM_3_COUNT_COUNT_M     0x0000FFFF  // Counter Value
N#define PWM_3_COUNT_COUNT_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_CMPA register.
N//
N//*****************************************************************************
N#define PWM_3_CMPA_COMPA_M      0x0000FFFF  // Comparator A Value
N#define PWM_3_CMPA_COMPA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_CMPB register.
N//
N//*****************************************************************************
N#define PWM_3_CMPB_COMPB_M      0x0000FFFF  // Comparator B Value
N#define PWM_3_CMPB_COMPB_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_GENA register.
N//
N//*****************************************************************************
N#define PWM_3_GENA_ACTCMPBD_M   0x00000C00  // Action for Comparator B Down
N#define PWM_3_GENA_ACTCMPBD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_3_GENA_ACTCMPBD_NONE                                                                              0x00000000  
N#define PWM_3_GENA_ACTCMPBD_INV 0x00000400  // Invert the output signal
N#define PWM_3_GENA_ACTCMPBD_ZERO                                              \
N                                0x00000800  // Set the output signal to 0
X#define PWM_3_GENA_ACTCMPBD_ZERO                                                                              0x00000800  
N#define PWM_3_GENA_ACTCMPBD_ONE 0x00000C00  // Set the output signal to 1
N#define PWM_3_GENA_ACTCMPBU_M   0x00000300  // Action for Comparator B Up
N#define PWM_3_GENA_ACTCMPBU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_3_GENA_ACTCMPBU_NONE                                                                              0x00000000  
N#define PWM_3_GENA_ACTCMPBU_INV 0x00000100  // Invert the output signal
N#define PWM_3_GENA_ACTCMPBU_ZERO                                              \
N                                0x00000200  // Set the output signal to 0
X#define PWM_3_GENA_ACTCMPBU_ZERO                                                                              0x00000200  
N#define PWM_3_GENA_ACTCMPBU_ONE 0x00000300  // Set the output signal to 1
N#define PWM_3_GENA_ACTCMPAD_M   0x000000C0  // Action for Comparator A Down
N#define PWM_3_GENA_ACTCMPAD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_3_GENA_ACTCMPAD_NONE                                                                              0x00000000  
N#define PWM_3_GENA_ACTCMPAD_INV 0x00000040  // Invert the output signal
N#define PWM_3_GENA_ACTCMPAD_ZERO                                              \
N                                0x00000080  // Set the output signal to 0
X#define PWM_3_GENA_ACTCMPAD_ZERO                                                                              0x00000080  
N#define PWM_3_GENA_ACTCMPAD_ONE 0x000000C0  // Set the output signal to 1
N#define PWM_3_GENA_ACTCMPAU_M   0x00000030  // Action for Comparator A Up
N#define PWM_3_GENA_ACTCMPAU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_3_GENA_ACTCMPAU_NONE                                                                              0x00000000  
N#define PWM_3_GENA_ACTCMPAU_INV 0x00000010  // Invert the output signal
N#define PWM_3_GENA_ACTCMPAU_ZERO                                              \
N                                0x00000020  // Set the output signal to 0
X#define PWM_3_GENA_ACTCMPAU_ZERO                                                                              0x00000020  
N#define PWM_3_GENA_ACTCMPAU_ONE 0x00000030  // Set the output signal to 1
N#define PWM_3_GENA_ACTLOAD_M    0x0000000C  // Action for Counter=Load
N#define PWM_3_GENA_ACTLOAD_NONE 0x00000000  // Do nothing
N#define PWM_3_GENA_ACTLOAD_INV  0x00000004  // Invert the output signal
N#define PWM_3_GENA_ACTLOAD_ZERO 0x00000008  // Set the output signal to 0
N#define PWM_3_GENA_ACTLOAD_ONE  0x0000000C  // Set the output signal to 1
N#define PWM_3_GENA_ACTZERO_M    0x00000003  // Action for Counter=0
N#define PWM_3_GENA_ACTZERO_NONE 0x00000000  // Do nothing
N#define PWM_3_GENA_ACTZERO_INV  0x00000001  // Invert the output signal
N#define PWM_3_GENA_ACTZERO_ZERO 0x00000002  // Set the output signal to 0
N#define PWM_3_GENA_ACTZERO_ONE  0x00000003  // Set the output signal to 1
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_GENB register.
N//
N//*****************************************************************************
N#define PWM_3_GENB_ACTCMPBD_M   0x00000C00  // Action for Comparator B Down
N#define PWM_3_GENB_ACTCMPBD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_3_GENB_ACTCMPBD_NONE                                                                              0x00000000  
N#define PWM_3_GENB_ACTCMPBD_INV 0x00000400  // Invert the output signal
N#define PWM_3_GENB_ACTCMPBD_ZERO                                              \
N                                0x00000800  // Set the output signal to 0
X#define PWM_3_GENB_ACTCMPBD_ZERO                                                                              0x00000800  
N#define PWM_3_GENB_ACTCMPBD_ONE 0x00000C00  // Set the output signal to 1
N#define PWM_3_GENB_ACTCMPBU_M   0x00000300  // Action for Comparator B Up
N#define PWM_3_GENB_ACTCMPBU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_3_GENB_ACTCMPBU_NONE                                                                              0x00000000  
N#define PWM_3_GENB_ACTCMPBU_INV 0x00000100  // Invert the output signal
N#define PWM_3_GENB_ACTCMPBU_ZERO                                              \
N                                0x00000200  // Set the output signal to 0
X#define PWM_3_GENB_ACTCMPBU_ZERO                                                                              0x00000200  
N#define PWM_3_GENB_ACTCMPBU_ONE 0x00000300  // Set the output signal to 1
N#define PWM_3_GENB_ACTCMPAD_M   0x000000C0  // Action for Comparator A Down
N#define PWM_3_GENB_ACTCMPAD_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_3_GENB_ACTCMPAD_NONE                                                                              0x00000000  
N#define PWM_3_GENB_ACTCMPAD_INV 0x00000040  // Invert the output signal
N#define PWM_3_GENB_ACTCMPAD_ZERO                                              \
N                                0x00000080  // Set the output signal to 0
X#define PWM_3_GENB_ACTCMPAD_ZERO                                                                              0x00000080  
N#define PWM_3_GENB_ACTCMPAD_ONE 0x000000C0  // Set the output signal to 1
N#define PWM_3_GENB_ACTCMPAU_M   0x00000030  // Action for Comparator A Up
N#define PWM_3_GENB_ACTCMPAU_NONE                                              \
N                                0x00000000  // Do nothing
X#define PWM_3_GENB_ACTCMPAU_NONE                                                                              0x00000000  
N#define PWM_3_GENB_ACTCMPAU_INV 0x00000010  // Invert the output signal
N#define PWM_3_GENB_ACTCMPAU_ZERO                                              \
N                                0x00000020  // Set the output signal to 0
X#define PWM_3_GENB_ACTCMPAU_ZERO                                                                              0x00000020  
N#define PWM_3_GENB_ACTCMPAU_ONE 0x00000030  // Set the output signal to 1
N#define PWM_3_GENB_ACTLOAD_M    0x0000000C  // Action for Counter=Load
N#define PWM_3_GENB_ACTLOAD_NONE 0x00000000  // Do nothing
N#define PWM_3_GENB_ACTLOAD_INV  0x00000004  // Invert the output signal
N#define PWM_3_GENB_ACTLOAD_ZERO 0x00000008  // Set the output signal to 0
N#define PWM_3_GENB_ACTLOAD_ONE  0x0000000C  // Set the output signal to 1
N#define PWM_3_GENB_ACTZERO_M    0x00000003  // Action for Counter=0
N#define PWM_3_GENB_ACTZERO_NONE 0x00000000  // Do nothing
N#define PWM_3_GENB_ACTZERO_INV  0x00000001  // Invert the output signal
N#define PWM_3_GENB_ACTZERO_ZERO 0x00000002  // Set the output signal to 0
N#define PWM_3_GENB_ACTZERO_ONE  0x00000003  // Set the output signal to 1
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_DBCTL register.
N//
N//*****************************************************************************
N#define PWM_3_DBCTL_ENABLE      0x00000001  // Dead-Band Generator Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_DBRISE register.
N//
N//*****************************************************************************
N#define PWM_3_DBRISE_RISEDELAY_M                                              \
N                                0x00000FFF  // Dead-Band Rise Delay
X#define PWM_3_DBRISE_RISEDELAY_M                                                                              0x00000FFF  
N#define PWM_3_DBRISE_RISEDELAY_S                                              \
N                                0
X#define PWM_3_DBRISE_RISEDELAY_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_DBFALL register.
N//
N//*****************************************************************************
N#define PWM_3_DBFALL_FALLDELAY_M                                              \
N                                0x00000FFF  // Dead-Band Fall Delay
X#define PWM_3_DBFALL_FALLDELAY_M                                                                              0x00000FFF  
N#define PWM_3_DBFALL_FALLDELAY_S                                              \
N                                0
X#define PWM_3_DBFALL_FALLDELAY_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_FLTSRC0
N// register.
N//
N//*****************************************************************************
N#define PWM_3_FLTSRC0_FAULT1    0x00000002  // Fault1
N#define PWM_3_FLTSRC0_FAULT0    0x00000001  // Fault0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_FLTSRC1
N// register.
N//
N//*****************************************************************************
N#define PWM_3_FLTSRC1_DCMP7     0x00000080  // Digital Comparator 7
N#define PWM_3_FLTSRC1_DCMP6     0x00000040  // Digital Comparator 6
N#define PWM_3_FLTSRC1_DCMP5     0x00000020  // Digital Comparator 5
N#define PWM_3_FLTSRC1_DCMP4     0x00000010  // Digital Comparator 4
N#define PWM_3_FLTSRC1_DCMP3     0x00000008  // Digital Comparator 3
N#define PWM_3_FLTSRC1_DCMP2     0x00000004  // Digital Comparator 2
N#define PWM_3_FLTSRC1_DCMP1     0x00000002  // Digital Comparator 1
N#define PWM_3_FLTSRC1_DCMP0     0x00000001  // Digital Comparator 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_MINFLTPER
N// register.
N//
N//*****************************************************************************
N#define PWM_3_MINFLTPER_MFP_M   0x0000FFFF  // Minimum Fault Period
N#define PWM_3_MINFLTPER_MFP_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_FLTSEN register.
N//
N//*****************************************************************************
N#define PWM_0_FLTSEN_FAULT1     0x00000002  // Fault1 Sense
N#define PWM_0_FLTSEN_FAULT0     0x00000001  // Fault0 Sense
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_FLTSTAT0
N// register.
N//
N//*****************************************************************************
N#define PWM_0_FLTSTAT0_FAULT1   0x00000002  // Fault Input 1
N#define PWM_0_FLTSTAT0_FAULT0   0x00000001  // Fault Input 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_0_FLTSTAT1
N// register.
N//
N//*****************************************************************************
N#define PWM_0_FLTSTAT1_DCMP7    0x00000080  // Digital Comparator 7 Trigger
N#define PWM_0_FLTSTAT1_DCMP6    0x00000040  // Digital Comparator 6 Trigger
N#define PWM_0_FLTSTAT1_DCMP5    0x00000020  // Digital Comparator 5 Trigger
N#define PWM_0_FLTSTAT1_DCMP4    0x00000010  // Digital Comparator 4 Trigger
N#define PWM_0_FLTSTAT1_DCMP3    0x00000008  // Digital Comparator 3 Trigger
N#define PWM_0_FLTSTAT1_DCMP2    0x00000004  // Digital Comparator 2 Trigger
N#define PWM_0_FLTSTAT1_DCMP1    0x00000002  // Digital Comparator 1 Trigger
N#define PWM_0_FLTSTAT1_DCMP0    0x00000001  // Digital Comparator 0 Trigger
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_FLTSEN register.
N//
N//*****************************************************************************
N#define PWM_1_FLTSEN_FAULT1     0x00000002  // Fault1 Sense
N#define PWM_1_FLTSEN_FAULT0     0x00000001  // Fault0 Sense
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_FLTSTAT0
N// register.
N//
N//*****************************************************************************
N#define PWM_1_FLTSTAT0_FAULT1   0x00000002  // Fault Input 1
N#define PWM_1_FLTSTAT0_FAULT0   0x00000001  // Fault Input 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_1_FLTSTAT1
N// register.
N//
N//*****************************************************************************
N#define PWM_1_FLTSTAT1_DCMP7    0x00000080  // Digital Comparator 7 Trigger
N#define PWM_1_FLTSTAT1_DCMP6    0x00000040  // Digital Comparator 6 Trigger
N#define PWM_1_FLTSTAT1_DCMP5    0x00000020  // Digital Comparator 5 Trigger
N#define PWM_1_FLTSTAT1_DCMP4    0x00000010  // Digital Comparator 4 Trigger
N#define PWM_1_FLTSTAT1_DCMP3    0x00000008  // Digital Comparator 3 Trigger
N#define PWM_1_FLTSTAT1_DCMP2    0x00000004  // Digital Comparator 2 Trigger
N#define PWM_1_FLTSTAT1_DCMP1    0x00000002  // Digital Comparator 1 Trigger
N#define PWM_1_FLTSTAT1_DCMP0    0x00000001  // Digital Comparator 0 Trigger
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_FLTSTAT0
N// register.
N//
N//*****************************************************************************
N#define PWM_2_FLTSTAT0_FAULT1   0x00000002  // Fault Input 1
N#define PWM_2_FLTSTAT0_FAULT0   0x00000001  // Fault Input 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_2_FLTSTAT1
N// register.
N//
N//*****************************************************************************
N#define PWM_2_FLTSTAT1_DCMP7    0x00000080  // Digital Comparator 7 Trigger
N#define PWM_2_FLTSTAT1_DCMP6    0x00000040  // Digital Comparator 6 Trigger
N#define PWM_2_FLTSTAT1_DCMP5    0x00000020  // Digital Comparator 5 Trigger
N#define PWM_2_FLTSTAT1_DCMP4    0x00000010  // Digital Comparator 4 Trigger
N#define PWM_2_FLTSTAT1_DCMP3    0x00000008  // Digital Comparator 3 Trigger
N#define PWM_2_FLTSTAT1_DCMP2    0x00000004  // Digital Comparator 2 Trigger
N#define PWM_2_FLTSTAT1_DCMP1    0x00000002  // Digital Comparator 1 Trigger
N#define PWM_2_FLTSTAT1_DCMP0    0x00000001  // Digital Comparator 0 Trigger
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_FLTSTAT0
N// register.
N//
N//*****************************************************************************
N#define PWM_3_FLTSTAT0_FAULT1   0x00000002  // Fault Input 1
N#define PWM_3_FLTSTAT0_FAULT0   0x00000001  // Fault Input 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_3_FLTSTAT1
N// register.
N//
N//*****************************************************************************
N#define PWM_3_FLTSTAT1_DCMP7    0x00000080  // Digital Comparator 7 Trigger
N#define PWM_3_FLTSTAT1_DCMP6    0x00000040  // Digital Comparator 6 Trigger
N#define PWM_3_FLTSTAT1_DCMP5    0x00000020  // Digital Comparator 5 Trigger
N#define PWM_3_FLTSTAT1_DCMP4    0x00000010  // Digital Comparator 4 Trigger
N#define PWM_3_FLTSTAT1_DCMP3    0x00000008  // Digital Comparator 3 Trigger
N#define PWM_3_FLTSTAT1_DCMP2    0x00000004  // Digital Comparator 2 Trigger
N#define PWM_3_FLTSTAT1_DCMP1    0x00000002  // Digital Comparator 1 Trigger
N#define PWM_3_FLTSTAT1_DCMP0    0x00000001  // Digital Comparator 0 Trigger
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the PWM_O_PP register.
N//
N//*****************************************************************************
N#define PWM_PP_ONE              0x00000400  // One-Shot Mode
N#define PWM_PP_EFAULT           0x00000200  // Extended Fault
N#define PWM_PP_ESYNC            0x00000100  // Extended Synchronization
N#define PWM_PP_FCNT_M           0x000000F0  // Fault Inputs
N#define PWM_PP_GCNT_M           0x0000000F  // Generators
N#define PWM_PP_FCNT_S           4
N#define PWM_PP_GCNT_S           0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_CTL register.
N//
N//*****************************************************************************
N#define QEI_CTL_FILTCNT_M       0x000F0000  // Input Filter Prescale Count
N#define QEI_CTL_FILTEN          0x00002000  // Enable Input Filter
N#define QEI_CTL_STALLEN         0x00001000  // Stall QEI
N#define QEI_CTL_INVI            0x00000800  // Invert Index Pulse
N#define QEI_CTL_INVB            0x00000400  // Invert PhB
N#define QEI_CTL_INVA            0x00000200  // Invert PhA
N#define QEI_CTL_VELDIV_M        0x000001C0  // Predivide Velocity
N#define QEI_CTL_VELDIV_1        0x00000000  // QEI clock /1
N#define QEI_CTL_VELDIV_2        0x00000040  // QEI clock /2
N#define QEI_CTL_VELDIV_4        0x00000080  // QEI clock /4
N#define QEI_CTL_VELDIV_8        0x000000C0  // QEI clock /8
N#define QEI_CTL_VELDIV_16       0x00000100  // QEI clock /16
N#define QEI_CTL_VELDIV_32       0x00000140  // QEI clock /32
N#define QEI_CTL_VELDIV_64       0x00000180  // QEI clock /64
N#define QEI_CTL_VELDIV_128      0x000001C0  // QEI clock /128
N#define QEI_CTL_VELEN           0x00000020  // Capture Velocity
N#define QEI_CTL_RESMODE         0x00000010  // Reset Mode
N#define QEI_CTL_CAPMODE         0x00000008  // Capture Mode
N#define QEI_CTL_SIGMODE         0x00000004  // Signal Mode
N#define QEI_CTL_SWAP            0x00000002  // Swap Signals
N#define QEI_CTL_ENABLE          0x00000001  // Enable QEI
N#define QEI_CTL_FILTCNT_S       16
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_STAT register.
N//
N//*****************************************************************************
N#define QEI_STAT_DIRECTION      0x00000002  // Direction of Rotation
N#define QEI_STAT_ERROR          0x00000001  // Error Detected
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_POS register.
N//
N//*****************************************************************************
N#define QEI_POS_M               0xFFFFFFFF  // Current Position Integrator
N                                            // Value
N#define QEI_POS_S               0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_MAXPOS register.
N//
N//*****************************************************************************
N#define QEI_MAXPOS_M            0xFFFFFFFF  // Maximum Position Integrator
N                                            // Value
N#define QEI_MAXPOS_S            0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_LOAD register.
N//
N//*****************************************************************************
N#define QEI_LOAD_M              0xFFFFFFFF  // Velocity Timer Load Value
N#define QEI_LOAD_S              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_TIME register.
N//
N//*****************************************************************************
N#define QEI_TIME_M              0xFFFFFFFF  // Velocity Timer Current Value
N#define QEI_TIME_S              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_COUNT register.
N//
N//*****************************************************************************
N#define QEI_COUNT_M             0xFFFFFFFF  // Velocity Pulse Count
N#define QEI_COUNT_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_SPEED register.
N//
N//*****************************************************************************
N#define QEI_SPEED_M             0xFFFFFFFF  // Velocity
N#define QEI_SPEED_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_INTEN register.
N//
N//*****************************************************************************
N#define QEI_INTEN_ERROR         0x00000008  // Phase Error Interrupt Enable
N#define QEI_INTEN_DIR           0x00000004  // Direction Change Interrupt
N                                            // Enable
N#define QEI_INTEN_TIMER         0x00000002  // Timer Expires Interrupt Enable
N#define QEI_INTEN_INDEX         0x00000001  // Index Pulse Detected Interrupt
N                                            // Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_RIS register.
N//
N//*****************************************************************************
N#define QEI_RIS_ERROR           0x00000008  // Phase Error Detected
N#define QEI_RIS_DIR             0x00000004  // Direction Change Detected
N#define QEI_RIS_TIMER           0x00000002  // Velocity Timer Expired
N#define QEI_RIS_INDEX           0x00000001  // Index Pulse Asserted
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the QEI_O_ISC register.
N//
N//*****************************************************************************
N#define QEI_ISC_ERROR           0x00000008  // Phase Error Interrupt
N#define QEI_ISC_DIR             0x00000004  // Direction Change Interrupt
N#define QEI_ISC_TIMER           0x00000002  // Velocity Timer Expired Interrupt
N#define QEI_ISC_INDEX           0x00000001  // Index Pulse Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_CFG register.
N//
N//*****************************************************************************
N#define TIMER_CFG_M             0x00000007  // GPTM Configuration
N#define TIMER_CFG_32_BIT_TIMER  0x00000000  // 32-bit timer configuration
N#define TIMER_CFG_32_BIT_RTC    0x00000001  // 32-bit real-time clock (RTC)
N                                            // counter configuration
N#define TIMER_CFG_16_BIT        0x00000004  // 16-bit timer configuration. The
N                                            // function is controlled by bits
N                                            // 1:0 of GPTMTAMR and GPTMTBMR
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TAMR register.
N//
N//*****************************************************************************
N#define TIMER_TAMR_TAPLO        0x00000800  // GPTM Timer A PWM Legacy
N                                            // Operation
N#define TIMER_TAMR_TAMRSU       0x00000400  // GPTM Timer A Match Register
N                                            // Update
N#define TIMER_TAMR_TAPWMIE      0x00000200  // GPTM Timer A PWM Interrupt
N                                            // Enable
N#define TIMER_TAMR_TAILD        0x00000100  // GPTM Timer A Interval Load Write
N#define TIMER_TAMR_TASNAPS      0x00000080  // GPTM Timer A Snap-Shot Mode
N#define TIMER_TAMR_TAWOT        0x00000040  // GPTM Timer A Wait-on-Trigger
N#define TIMER_TAMR_TAMIE        0x00000020  // GPTM Timer A Match Interrupt
N                                            // Enable
N#define TIMER_TAMR_TACDIR       0x00000010  // GPTM Timer A Count Direction
N#define TIMER_TAMR_TAAMS        0x00000008  // GPTM Timer A Alternate Mode
N                                            // Select
N#define TIMER_TAMR_TACMR        0x00000004  // GPTM Timer A Capture Mode
N#define TIMER_TAMR_TAMR_M       0x00000003  // GPTM Timer A Mode
N#define TIMER_TAMR_TAMR_1_SHOT  0x00000001  // One-Shot Timer mode
N#define TIMER_TAMR_TAMR_PERIOD  0x00000002  // Periodic Timer mode
N#define TIMER_TAMR_TAMR_CAP     0x00000003  // Capture mode
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TBMR register.
N//
N//*****************************************************************************
N#define TIMER_TBMR_TBPLO        0x00000800  // GPTM Timer B PWM Legacy
N                                            // Operation
N#define TIMER_TBMR_TBMRSU       0x00000400  // GPTM Timer B Match Register
N                                            // Update
N#define TIMER_TBMR_TBPWMIE      0x00000200  // GPTM Timer B PWM Interrupt
N                                            // Enable
N#define TIMER_TBMR_TBILD        0x00000100  // GPTM Timer B Interval Load Write
N#define TIMER_TBMR_TBSNAPS      0x00000080  // GPTM Timer B Snap-Shot Mode
N#define TIMER_TBMR_TBWOT        0x00000040  // GPTM Timer B Wait-on-Trigger
N#define TIMER_TBMR_TBMIE        0x00000020  // GPTM Timer B Match Interrupt
N                                            // Enable
N#define TIMER_TBMR_TBCDIR       0x00000010  // GPTM Timer B Count Direction
N#define TIMER_TBMR_TBAMS        0x00000008  // GPTM Timer B Alternate Mode
N                                            // Select
N#define TIMER_TBMR_TBCMR        0x00000004  // GPTM Timer B Capture Mode
N#define TIMER_TBMR_TBMR_M       0x00000003  // GPTM Timer B Mode
N#define TIMER_TBMR_TBMR_1_SHOT  0x00000001  // One-Shot Timer mode
N#define TIMER_TBMR_TBMR_PERIOD  0x00000002  // Periodic Timer mode
N#define TIMER_TBMR_TBMR_CAP     0x00000003  // Capture mode
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_CTL register.
N//
N//*****************************************************************************
N#define TIMER_CTL_TBPWML        0x00004000  // GPTM Timer B PWM Output Level
N#define TIMER_CTL_TBOTE         0x00002000  // GPTM Timer B Output Trigger
N                                            // Enable
N#define TIMER_CTL_TBEVENT_M     0x00000C00  // GPTM Timer B Event Mode
N#define TIMER_CTL_TBEVENT_POS   0x00000000  // Positive edge
N#define TIMER_CTL_TBEVENT_NEG   0x00000400  // Negative edge
N#define TIMER_CTL_TBEVENT_BOTH  0x00000C00  // Both edges
N#define TIMER_CTL_TBSTALL       0x00000200  // GPTM Timer B Stall Enable
N#define TIMER_CTL_TBEN          0x00000100  // GPTM Timer B Enable
N#define TIMER_CTL_TAPWML        0x00000040  // GPTM Timer A PWM Output Level
N#define TIMER_CTL_TAOTE         0x00000020  // GPTM Timer A Output Trigger
N                                            // Enable
N#define TIMER_CTL_RTCEN         0x00000010  // GPTM RTC Stall Enable
N#define TIMER_CTL_TAEVENT_M     0x0000000C  // GPTM Timer A Event Mode
N#define TIMER_CTL_TAEVENT_POS   0x00000000  // Positive edge
N#define TIMER_CTL_TAEVENT_NEG   0x00000004  // Negative edge
N#define TIMER_CTL_TAEVENT_BOTH  0x0000000C  // Both edges
N#define TIMER_CTL_TASTALL       0x00000002  // GPTM Timer A Stall Enable
N#define TIMER_CTL_TAEN          0x00000001  // GPTM Timer A Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_SYNC register.
N//
N//*****************************************************************************
N#define TIMER_SYNC_SYNCWT5_M    0x00C00000  // Synchronize GPTM 32/64-Bit Timer
N                                            // 5
N#define TIMER_SYNC_SYNCWT5_NONE 0x00000000  // GPTM 32/64-Bit Timer 5 is not
N                                            // affected
N#define TIMER_SYNC_SYNCWT5_TA   0x00400000  // A timeout event for Timer A of
N                                            // GPTM 32/64-Bit Timer 5 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT5_TB   0x00800000  // A timeout event for Timer B of
N                                            // GPTM 32/64-Bit Timer 5 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT5_TATB 0x00C00000  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 32/64-Bit
N                                            // Timer 5 is triggered
N#define TIMER_SYNC_SYNCWT4_M    0x00300000  // Synchronize GPTM 32/64-Bit Timer
N                                            // 4
N#define TIMER_SYNC_SYNCWT4_NONE 0x00000000  // GPTM 32/64-Bit Timer 4 is not
N                                            // affected
N#define TIMER_SYNC_SYNCWT4_TA   0x00100000  // A timeout event for Timer A of
N                                            // GPTM 32/64-Bit Timer 4 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT4_TB   0x00200000  // A timeout event for Timer B of
N                                            // GPTM 32/64-Bit Timer 4 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT4_TATB 0x00300000  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 32/64-Bit
N                                            // Timer 4 is triggered
N#define TIMER_SYNC_SYNCWT3_M    0x000C0000  // Synchronize GPTM 32/64-Bit Timer
N                                            // 3
N#define TIMER_SYNC_SYNCWT3_NONE 0x00000000  // GPTM 32/64-Bit Timer 3 is not
N                                            // affected
N#define TIMER_SYNC_SYNCWT3_TA   0x00040000  // A timeout event for Timer A of
N                                            // GPTM 32/64-Bit Timer 3 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT3_TB   0x00080000  // A timeout event for Timer B of
N                                            // GPTM 32/64-Bit Timer 3 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT3_TATB 0x000C0000  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 32/64-Bit
N                                            // Timer 3 is triggered
N#define TIMER_SYNC_SYNCWT2_M    0x00030000  // Synchronize GPTM 32/64-Bit Timer
N                                            // 2
N#define TIMER_SYNC_SYNCWT2_NONE 0x00000000  // GPTM 32/64-Bit Timer 2 is not
N                                            // affected
N#define TIMER_SYNC_SYNCWT2_TA   0x00010000  // A timeout event for Timer A of
N                                            // GPTM 32/64-Bit Timer 2 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT2_TB   0x00020000  // A timeout event for Timer B of
N                                            // GPTM 32/64-Bit Timer 2 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT2_TATB 0x00030000  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 32/64-Bit
N                                            // Timer 2 is triggered
N#define TIMER_SYNC_SYNCWT1_M    0x0000C000  // Synchronize GPTM 32/64-Bit Timer
N                                            // 1
N#define TIMER_SYNC_SYNCWT1_NONE 0x00000000  // GPTM 32/64-Bit Timer 1 is not
N                                            // affected
N#define TIMER_SYNC_SYNCWT1_TA   0x00004000  // A timeout event for Timer A of
N                                            // GPTM 32/64-Bit Timer 1 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT1_TB   0x00008000  // A timeout event for Timer B of
N                                            // GPTM 32/64-Bit Timer 1 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT1_TATB 0x0000C000  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 32/64-Bit
N                                            // Timer 1 is triggered
N#define TIMER_SYNC_SYNCWT0_M    0x00003000  // Synchronize GPTM 32/64-Bit Timer
N                                            // 0
N#define TIMER_SYNC_SYNCWT0_NONE 0x00000000  // GPTM 32/64-Bit Timer 0 is not
N                                            // affected
N#define TIMER_SYNC_SYNCWT0_TA   0x00001000  // A timeout event for Timer A of
N                                            // GPTM 32/64-Bit Timer 0 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT0_TB   0x00002000  // A timeout event for Timer B of
N                                            // GPTM 32/64-Bit Timer 0 is
N                                            // triggered
N#define TIMER_SYNC_SYNCWT0_TATB 0x00003000  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 32/64-Bit
N                                            // Timer 0 is triggered
N#define TIMER_SYNC_SYNCT5_M     0x00000C00  // Synchronize GPTM 16/32-Bit Timer
N                                            // 5
N#define TIMER_SYNC_SYNCT5_NONE  0x00000000  // GPTM 16/32-Bit Timer 5 is not
N                                            // affected
N#define TIMER_SYNC_SYNCT5_TA    0x00000400  // A timeout event for Timer A of
N                                            // GPTM 16/32-Bit Timer 5 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT5_TB    0x00000800  // A timeout event for Timer B of
N                                            // GPTM 16/32-Bit Timer 5 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT5_TATB  0x00000C00  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 16/32-Bit
N                                            // Timer 5 is triggered
N#define TIMER_SYNC_SYNCT4_M     0x00000300  // Synchronize GPTM 16/32-Bit Timer
N                                            // 4
N#define TIMER_SYNC_SYNCT4_NONE  0x00000000  // GPTM 16/32-Bit Timer 4 is not
N                                            // affected
N#define TIMER_SYNC_SYNCT4_TA    0x00000100  // A timeout event for Timer A of
N                                            // GPTM 16/32-Bit Timer 4 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT4_TB    0x00000200  // A timeout event for Timer B of
N                                            // GPTM 16/32-Bit Timer 4 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT4_TATB  0x00000300  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 16/32-Bit
N                                            // Timer 4 is triggered
N#define TIMER_SYNC_SYNCT3_M     0x000000C0  // Synchronize GPTM 16/32-Bit Timer
N                                            // 3
N#define TIMER_SYNC_SYNCT3_NONE  0x00000000  // GPTM 16/32-Bit Timer 3 is not
N                                            // affected
N#define TIMER_SYNC_SYNCT3_TA    0x00000040  // A timeout event for Timer A of
N                                            // GPTM 16/32-Bit Timer 3 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT3_TB    0x00000080  // A timeout event for Timer B of
N                                            // GPTM 16/32-Bit Timer 3 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT3_TATB  0x000000C0  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 16/32-Bit
N                                            // Timer 3 is triggered
N#define TIMER_SYNC_SYNCT2_M     0x00000030  // Synchronize GPTM 16/32-Bit Timer
N                                            // 2
N#define TIMER_SYNC_SYNCT2_NONE  0x00000000  // GPTM 16/32-Bit Timer 2 is not
N                                            // affected
N#define TIMER_SYNC_SYNCT2_TA    0x00000010  // A timeout event for Timer A of
N                                            // GPTM 16/32-Bit Timer 2 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT2_TB    0x00000020  // A timeout event for Timer B of
N                                            // GPTM 16/32-Bit Timer 2 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT2_TATB  0x00000030  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 16/32-Bit
N                                            // Timer 2 is triggered
N#define TIMER_SYNC_SYNCT1_M     0x0000000C  // Synchronize GPTM 16/32-Bit Timer
N                                            // 1
N#define TIMER_SYNC_SYNCT1_NONE  0x00000000  // GPTM 16/32-Bit Timer 1 is not
N                                            // affected
N#define TIMER_SYNC_SYNCT1_TA    0x00000004  // A timeout event for Timer A of
N                                            // GPTM 16/32-Bit Timer 1 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT1_TB    0x00000008  // A timeout event for Timer B of
N                                            // GPTM 16/32-Bit Timer 1 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT1_TATB  0x0000000C  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 16/32-Bit
N                                            // Timer 1 is triggered
N#define TIMER_SYNC_SYNCT0_M     0x00000003  // Synchronize GPTM 16/32-Bit Timer
N                                            // 0
N#define TIMER_SYNC_SYNCT0_NONE  0x00000000  // GPTM 16/32-Bit Timer 0 is not
N                                            // affected
N#define TIMER_SYNC_SYNCT0_TA    0x00000001  // A timeout event for Timer A of
N                                            // GPTM 16/32-Bit Timer 0 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT0_TB    0x00000002  // A timeout event for Timer B of
N                                            // GPTM 16/32-Bit Timer 0 is
N                                            // triggered
N#define TIMER_SYNC_SYNCT0_TATB  0x00000003  // A timeout event for both Timer A
N                                            // and Timer B of GPTM 16/32-Bit
N                                            // Timer 0 is triggered
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_IMR register.
N//
N//*****************************************************************************
N#define TIMER_IMR_WUEIM         0x00010000  // GPTM Write Update Error
N                                            // Interrupt Mask
N#define TIMER_IMR_TBMIM         0x00000800  // GPTM Timer B Match Interrupt
N                                            // Mask
N#define TIMER_IMR_CBEIM         0x00000400  // GPTM Timer B Capture Mode Event
N                                            // Interrupt Mask
N#define TIMER_IMR_CBMIM         0x00000200  // GPTM Timer B Capture Mode Match
N                                            // Interrupt Mask
N#define TIMER_IMR_TBTOIM        0x00000100  // GPTM Timer B Time-Out Interrupt
N                                            // Mask
N#define TIMER_IMR_TAMIM         0x00000010  // GPTM Timer A Match Interrupt
N                                            // Mask
N#define TIMER_IMR_RTCIM         0x00000008  // GPTM RTC Interrupt Mask
N#define TIMER_IMR_CAEIM         0x00000004  // GPTM Timer A Capture Mode Event
N                                            // Interrupt Mask
N#define TIMER_IMR_CAMIM         0x00000002  // GPTM Timer A Capture Mode Match
N                                            // Interrupt Mask
N#define TIMER_IMR_TATOIM        0x00000001  // GPTM Timer A Time-Out Interrupt
N                                            // Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_RIS register.
N//
N//*****************************************************************************
N#define TIMER_RIS_WUERIS        0x00010000  // GPTM Write Update Error Raw
N                                            // Interrupt
N#define TIMER_RIS_TBMRIS        0x00000800  // GPTM Timer B Match Raw Interrupt
N#define TIMER_RIS_CBERIS        0x00000400  // GPTM Timer B Capture Mode Event
N                                            // Raw Interrupt
N#define TIMER_RIS_CBMRIS        0x00000200  // GPTM Timer B Capture Mode Match
N                                            // Raw Interrupt
N#define TIMER_RIS_TBTORIS       0x00000100  // GPTM Timer B Time-Out Raw
N                                            // Interrupt
N#define TIMER_RIS_TAMRIS        0x00000010  // GPTM Timer A Match Raw Interrupt
N#define TIMER_RIS_RTCRIS        0x00000008  // GPTM RTC Raw Interrupt
N#define TIMER_RIS_CAERIS        0x00000004  // GPTM Timer A Capture Mode Event
N                                            // Raw Interrupt
N#define TIMER_RIS_CAMRIS        0x00000002  // GPTM Timer A Capture Mode Match
N                                            // Raw Interrupt
N#define TIMER_RIS_TATORIS       0x00000001  // GPTM Timer A Time-Out Raw
N                                            // Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_MIS register.
N//
N//*****************************************************************************
N#define TIMER_MIS_WUEMIS        0x00010000  // GPTM Write Update Error Masked
N                                            // Interrupt
N#define TIMER_MIS_TBMMIS        0x00000800  // GPTM Timer B Match Masked
N                                            // Interrupt
N#define TIMER_MIS_CBEMIS        0x00000400  // GPTM Timer B Capture Mode Event
N                                            // Masked Interrupt
N#define TIMER_MIS_CBMMIS        0x00000200  // GPTM Timer B Capture Mode Match
N                                            // Masked Interrupt
N#define TIMER_MIS_TBTOMIS       0x00000100  // GPTM Timer B Time-Out Masked
N                                            // Interrupt
N#define TIMER_MIS_TAMMIS        0x00000010  // GPTM Timer A Match Masked
N                                            // Interrupt
N#define TIMER_MIS_RTCMIS        0x00000008  // GPTM RTC Masked Interrupt
N#define TIMER_MIS_CAEMIS        0x00000004  // GPTM Timer A Capture Mode Event
N                                            // Masked Interrupt
N#define TIMER_MIS_CAMMIS        0x00000002  // GPTM Timer A Capture Mode Match
N                                            // Masked Interrupt
N#define TIMER_MIS_TATOMIS       0x00000001  // GPTM Timer A Time-Out Masked
N                                            // Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_ICR register.
N//
N//*****************************************************************************
N#define TIMER_ICR_WUECINT       0x00010000  // 32/64-Bit GPTM Write Update
N                                            // Error Interrupt Clear
N#define TIMER_ICR_TBMCINT       0x00000800  // GPTM Timer B Match Interrupt
N                                            // Clear
N#define TIMER_ICR_CBECINT       0x00000400  // GPTM Timer B Capture Mode Event
N                                            // Interrupt Clear
N#define TIMER_ICR_CBMCINT       0x00000200  // GPTM Timer B Capture Mode Match
N                                            // Interrupt Clear
N#define TIMER_ICR_TBTOCINT      0x00000100  // GPTM Timer B Time-Out Interrupt
N                                            // Clear
N#define TIMER_ICR_TAMCINT       0x00000010  // GPTM Timer A Match Interrupt
N                                            // Clear
N#define TIMER_ICR_RTCCINT       0x00000008  // GPTM RTC Interrupt Clear
N#define TIMER_ICR_CAECINT       0x00000004  // GPTM Timer A Capture Mode Event
N                                            // Interrupt Clear
N#define TIMER_ICR_CAMCINT       0x00000002  // GPTM Timer A Capture Mode Match
N                                            // Interrupt Clear
N#define TIMER_ICR_TATOCINT      0x00000001  // GPTM Timer A Time-Out Raw
N                                            // Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TAILR register.
N//
N//*****************************************************************************
N#define TIMER_TAILR_M           0xFFFFFFFF  // GPTM Timer A Interval Load
N                                            // Register
N#define TIMER_TAILR_S           0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TBILR register.
N//
N//*****************************************************************************
N#define TIMER_TBILR_M           0xFFFFFFFF  // GPTM Timer B Interval Load
N                                            // Register
N#define TIMER_TBILR_S           0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TAMATCHR
N// register.
N//
N//*****************************************************************************
N#define TIMER_TAMATCHR_TAMR_M   0xFFFFFFFF  // GPTM Timer A Match Register
N#define TIMER_TAMATCHR_TAMR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TBMATCHR
N// register.
N//
N//*****************************************************************************
N#define TIMER_TBMATCHR_TBMR_M   0xFFFFFFFF  // GPTM Timer B Match Register
N#define TIMER_TBMATCHR_TBMR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TAPR register.
N//
N//*****************************************************************************
N#define TIMER_TAPR_TAPSRH_M     0x0000FF00  // GPTM Timer A Prescale High Byte
N#define TIMER_TAPR_TAPSR_M      0x000000FF  // GPTM Timer A Prescale
N#define TIMER_TAPR_TAPSRH_S     8
N#define TIMER_TAPR_TAPSR_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TBPR register.
N//
N//*****************************************************************************
N#define TIMER_TBPR_TBPSRH_M     0x0000FF00  // GPTM Timer B Prescale High Byte
N#define TIMER_TBPR_TBPSR_M      0x000000FF  // GPTM Timer B Prescale
N#define TIMER_TBPR_TBPSRH_S     8
N#define TIMER_TBPR_TBPSR_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TAPMR register.
N//
N//*****************************************************************************
N#define TIMER_TAPMR_TAPSMRH_M   0x0000FF00  // GPTM Timer A Prescale Match High
N                                            // Byte
N#define TIMER_TAPMR_TAPSMR_M    0x000000FF  // GPTM TimerA Prescale Match
N#define TIMER_TAPMR_TAPSMRH_S   8
N#define TIMER_TAPMR_TAPSMR_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TBPMR register.
N//
N//*****************************************************************************
N#define TIMER_TBPMR_TBPSMRH_M   0x0000FF00  // GPTM Timer B Prescale Match High
N                                            // Byte
N#define TIMER_TBPMR_TBPSMR_M    0x000000FF  // GPTM TimerB Prescale Match
N#define TIMER_TBPMR_TBPSMRH_S   8
N#define TIMER_TBPMR_TBPSMR_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TAR register.
N//
N//*****************************************************************************
N#define TIMER_TAR_M             0xFFFFFFFF  // GPTM Timer A Register
N#define TIMER_TAR_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TBR register.
N//
N//*****************************************************************************
N#define TIMER_TBR_M             0xFFFFFFFF  // GPTM Timer B Register
N#define TIMER_TBR_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TAV register.
N//
N//*****************************************************************************
N#define TIMER_TAV_M             0xFFFFFFFF  // GPTM Timer A Value
N#define TIMER_TAV_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TBV register.
N//
N//*****************************************************************************
N#define TIMER_TBV_M             0xFFFFFFFF  // GPTM Timer B Value
N#define TIMER_TBV_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_RTCPD register.
N//
N//*****************************************************************************
N#define TIMER_RTCPD_RTCPD_M     0x0000FFFF  // RTC Predivide Counter Value
N#define TIMER_RTCPD_RTCPD_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TAPS register.
N//
N//*****************************************************************************
N#define TIMER_TAPS_PSS_M        0x0000FFFF  // GPTM Timer A Prescaler Snapshot
N#define TIMER_TAPS_PSS_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TBPS register.
N//
N//*****************************************************************************
N#define TIMER_TBPS_PSS_M        0x0000FFFF  // GPTM Timer A Prescaler Value
N#define TIMER_TBPS_PSS_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TAPV register.
N//
N//*****************************************************************************
N#define TIMER_TAPV_PSV_M        0x0000FFFF  // GPTM Timer A Prescaler Value
N#define TIMER_TAPV_PSV_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_TBPV register.
N//
N//*****************************************************************************
N#define TIMER_TBPV_PSV_M        0x0000FFFF  // GPTM Timer B Prescaler Value
N#define TIMER_TBPV_PSV_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the TIMER_O_PP register.
N//
N//*****************************************************************************
N#define TIMER_PP_SIZE_M         0x0000000F  // Count Size
N#define TIMER_PP_SIZE_16        0x00000000  // Timer A and Timer B counters are
N                                            // 16 bits each with an 8-bit
N                                            // prescale counter
N#define TIMER_PP_SIZE_32        0x00000001  // Timer A and Timer B counters are
N                                            // 32 bits each with a 16-bit
N                                            // prescale counter
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_ACTSS register.
N//
N//*****************************************************************************
N#define ADC_ACTSS_BUSY          0x00010000  // ADC Busy
N#define ADC_ACTSS_ASEN3         0x00000008  // ADC SS3 Enable
N#define ADC_ACTSS_ASEN2         0x00000004  // ADC SS2 Enable
N#define ADC_ACTSS_ASEN1         0x00000002  // ADC SS1 Enable
N#define ADC_ACTSS_ASEN0         0x00000001  // ADC SS0 Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_RIS register.
N//
N//*****************************************************************************
N#define ADC_RIS_INRDC           0x00010000  // Digital Comparator Raw Interrupt
N                                            // Status
N#define ADC_RIS_INR3            0x00000008  // SS3 Raw Interrupt Status
N#define ADC_RIS_INR2            0x00000004  // SS2 Raw Interrupt Status
N#define ADC_RIS_INR1            0x00000002  // SS1 Raw Interrupt Status
N#define ADC_RIS_INR0            0x00000001  // SS0 Raw Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_IM register.
N//
N//*****************************************************************************
N#define ADC_IM_DCONSS3          0x00080000  // Digital Comparator Interrupt on
N                                            // SS3
N#define ADC_IM_DCONSS2          0x00040000  // Digital Comparator Interrupt on
N                                            // SS2
N#define ADC_IM_DCONSS1          0x00020000  // Digital Comparator Interrupt on
N                                            // SS1
N#define ADC_IM_DCONSS0          0x00010000  // Digital Comparator Interrupt on
N                                            // SS0
N#define ADC_IM_MASK3            0x00000008  // SS3 Interrupt Mask
N#define ADC_IM_MASK2            0x00000004  // SS2 Interrupt Mask
N#define ADC_IM_MASK1            0x00000002  // SS1 Interrupt Mask
N#define ADC_IM_MASK0            0x00000001  // SS0 Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_ISC register.
N//
N//*****************************************************************************
N#define ADC_ISC_DCINSS3         0x00080000  // Digital Comparator Interrupt
N                                            // Status on SS3
N#define ADC_ISC_DCINSS2         0x00040000  // Digital Comparator Interrupt
N                                            // Status on SS2
N#define ADC_ISC_DCINSS1         0x00020000  // Digital Comparator Interrupt
N                                            // Status on SS1
N#define ADC_ISC_DCINSS0         0x00010000  // Digital Comparator Interrupt
N                                            // Status on SS0
N#define ADC_ISC_IN3             0x00000008  // SS3 Interrupt Status and Clear
N#define ADC_ISC_IN2             0x00000004  // SS2 Interrupt Status and Clear
N#define ADC_ISC_IN1             0x00000002  // SS1 Interrupt Status and Clear
N#define ADC_ISC_IN0             0x00000001  // SS0 Interrupt Status and Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_OSTAT register.
N//
N//*****************************************************************************
N#define ADC_OSTAT_OV3           0x00000008  // SS3 FIFO Overflow
N#define ADC_OSTAT_OV2           0x00000004  // SS2 FIFO Overflow
N#define ADC_OSTAT_OV1           0x00000002  // SS1 FIFO Overflow
N#define ADC_OSTAT_OV0           0x00000001  // SS0 FIFO Overflow
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_EMUX register.
N//
N//*****************************************************************************
N#define ADC_EMUX_EM3_M          0x0000F000  // SS3 Trigger Select
N#define ADC_EMUX_EM3_PROCESSOR  0x00000000  // Processor (default)
N#define ADC_EMUX_EM3_COMP0      0x00001000  // Analog Comparator 0
N#define ADC_EMUX_EM3_COMP1      0x00002000  // Analog Comparator 1
N#define ADC_EMUX_EM3_EXTERNAL   0x00004000  // External (GPIO PB4)
N#define ADC_EMUX_EM3_TIMER      0x00005000  // Timer
N#define ADC_EMUX_EM3_PWM0       0x00006000  // PWM0
N#define ADC_EMUX_EM3_PWM1       0x00007000  // PWM1
N#define ADC_EMUX_EM3_PWM2       0x00008000  // PWM2
N#define ADC_EMUX_EM3_PWM3       0x00009000  // PWM3
N#define ADC_EMUX_EM3_ALWAYS     0x0000F000  // Always (continuously sample)
N#define ADC_EMUX_EM2_M          0x00000F00  // SS2 Trigger Select
N#define ADC_EMUX_EM2_PROCESSOR  0x00000000  // Processor (default)
N#define ADC_EMUX_EM2_COMP0      0x00000100  // Analog Comparator 0
N#define ADC_EMUX_EM2_COMP1      0x00000200  // Analog Comparator 1
N#define ADC_EMUX_EM2_EXTERNAL   0x00000400  // External (GPIO PB4)
N#define ADC_EMUX_EM2_TIMER      0x00000500  // Timer
N#define ADC_EMUX_EM2_PWM0       0x00000600  // PWM0
N#define ADC_EMUX_EM2_PWM1       0x00000700  // PWM1
N#define ADC_EMUX_EM2_PWM2       0x00000800  // PWM2
N#define ADC_EMUX_EM2_PWM3       0x00000900  // PWM3
N#define ADC_EMUX_EM2_ALWAYS     0x00000F00  // Always (continuously sample)
N#define ADC_EMUX_EM1_M          0x000000F0  // SS1 Trigger Select
N#define ADC_EMUX_EM1_PROCESSOR  0x00000000  // Processor (default)
N#define ADC_EMUX_EM1_COMP0      0x00000010  // Analog Comparator 0
N#define ADC_EMUX_EM1_COMP1      0x00000020  // Analog Comparator 1
N#define ADC_EMUX_EM1_EXTERNAL   0x00000040  // External (GPIO PB4)
N#define ADC_EMUX_EM1_TIMER      0x00000050  // Timer
N#define ADC_EMUX_EM1_PWM0       0x00000060  // PWM0
N#define ADC_EMUX_EM1_PWM1       0x00000070  // PWM1
N#define ADC_EMUX_EM1_PWM2       0x00000080  // PWM2
N#define ADC_EMUX_EM1_PWM3       0x00000090  // PWM3
N#define ADC_EMUX_EM1_ALWAYS     0x000000F0  // Always (continuously sample)
N#define ADC_EMUX_EM0_M          0x0000000F  // SS0 Trigger Select
N#define ADC_EMUX_EM0_PROCESSOR  0x00000000  // Processor (default)
N#define ADC_EMUX_EM0_COMP0      0x00000001  // Analog Comparator 0
N#define ADC_EMUX_EM0_COMP1      0x00000002  // Analog Comparator 1
N#define ADC_EMUX_EM0_EXTERNAL   0x00000004  // External (GPIO PB4)
N#define ADC_EMUX_EM0_TIMER      0x00000005  // Timer
N#define ADC_EMUX_EM0_PWM0       0x00000006  // PWM0
N#define ADC_EMUX_EM0_PWM1       0x00000007  // PWM1
N#define ADC_EMUX_EM0_PWM2       0x00000008  // PWM2
N#define ADC_EMUX_EM0_PWM3       0x00000009  // PWM3
N#define ADC_EMUX_EM0_ALWAYS     0x0000000F  // Always (continuously sample)
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_USTAT register.
N//
N//*****************************************************************************
N#define ADC_USTAT_UV3           0x00000008  // SS3 FIFO Underflow
N#define ADC_USTAT_UV2           0x00000004  // SS2 FIFO Underflow
N#define ADC_USTAT_UV1           0x00000002  // SS1 FIFO Underflow
N#define ADC_USTAT_UV0           0x00000001  // SS0 FIFO Underflow
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_TSSEL register.
N//
N//*****************************************************************************
N#define ADC_TSSEL_PS3_M         0x30000000  // PWM Unit Select
N#define ADC_TSSEL_PS3_0         0x00000000  // PWM Unit 0
N#define ADC_TSSEL_PS3_1         0x10000000  // PWM Unit 1
N#define ADC_TSSEL_PS2_M         0x00300000  // PWM Unit Select
N#define ADC_TSSEL_PS2_0         0x00000000  // PWM Unit 0
N#define ADC_TSSEL_PS2_1         0x00100000  // PWM Unit 1
N#define ADC_TSSEL_PS1_M         0x00003000  // PWM Unit Select
N#define ADC_TSSEL_PS1_0         0x00000000  // PWM Unit 0
N#define ADC_TSSEL_PS1_1         0x00001000  // PWM Unit 1
N#define ADC_TSSEL_PS0_M         0x00000030  // PWM Unit Select
N#define ADC_TSSEL_PS0_0         0x00000000  // PWM Unit 0
N#define ADC_TSSEL_PS0_1         0x00000010  // PWM Unit 1
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSPRI register.
N//
N//*****************************************************************************
N#define ADC_SSPRI_SS3_M         0x00003000  // SS3 Priority
N#define ADC_SSPRI_SS2_M         0x00000300  // SS2 Priority
N#define ADC_SSPRI_SS1_M         0x00000030  // SS1 Priority
N#define ADC_SSPRI_SS0_M         0x00000003  // SS0 Priority
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SPC register.
N//
N//*****************************************************************************
N#define ADC_SPC_PHASE_M         0x0000000F  // Phase Difference
N#define ADC_SPC_PHASE_0         0x00000000  // ADC sample lags by 0.0
N#define ADC_SPC_PHASE_22_5      0x00000001  // ADC sample lags by 22.5
N#define ADC_SPC_PHASE_45        0x00000002  // ADC sample lags by 45.0
N#define ADC_SPC_PHASE_67_5      0x00000003  // ADC sample lags by 67.5
N#define ADC_SPC_PHASE_90        0x00000004  // ADC sample lags by 90.0
N#define ADC_SPC_PHASE_112_5     0x00000005  // ADC sample lags by 112.5
N#define ADC_SPC_PHASE_135       0x00000006  // ADC sample lags by 135.0
N#define ADC_SPC_PHASE_157_5     0x00000007  // ADC sample lags by 157.5
N#define ADC_SPC_PHASE_180       0x00000008  // ADC sample lags by 180.0
N#define ADC_SPC_PHASE_202_5     0x00000009  // ADC sample lags by 202.5
N#define ADC_SPC_PHASE_225       0x0000000A  // ADC sample lags by 225.0
N#define ADC_SPC_PHASE_247_5     0x0000000B  // ADC sample lags by 247.5
N#define ADC_SPC_PHASE_270       0x0000000C  // ADC sample lags by 270.0
N#define ADC_SPC_PHASE_292_5     0x0000000D  // ADC sample lags by 292.5
N#define ADC_SPC_PHASE_315       0x0000000E  // ADC sample lags by 315.0
N#define ADC_SPC_PHASE_337_5     0x0000000F  // ADC sample lags by 337.5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_PSSI register.
N//
N//*****************************************************************************
N#define ADC_PSSI_GSYNC          0x80000000  // Global Synchronize
N#define ADC_PSSI_SYNCWAIT       0x08000000  // Synchronize Wait
N#define ADC_PSSI_SS3            0x00000008  // SS3 Initiate
N#define ADC_PSSI_SS2            0x00000004  // SS2 Initiate
N#define ADC_PSSI_SS1            0x00000002  // SS1 Initiate
N#define ADC_PSSI_SS0            0x00000001  // SS0 Initiate
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SAC register.
N//
N//*****************************************************************************
N#define ADC_SAC_AVG_M           0x00000007  // Hardware Averaging Control
N#define ADC_SAC_AVG_OFF         0x00000000  // No hardware oversampling
N#define ADC_SAC_AVG_2X          0x00000001  // 2x hardware oversampling
N#define ADC_SAC_AVG_4X          0x00000002  // 4x hardware oversampling
N#define ADC_SAC_AVG_8X          0x00000003  // 8x hardware oversampling
N#define ADC_SAC_AVG_16X         0x00000004  // 16x hardware oversampling
N#define ADC_SAC_AVG_32X         0x00000005  // 32x hardware oversampling
N#define ADC_SAC_AVG_64X         0x00000006  // 64x hardware oversampling
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCISC register.
N//
N//*****************************************************************************
N#define ADC_DCISC_DCINT7        0x00000080  // Digital Comparator 7 Interrupt
N                                            // Status and Clear
N#define ADC_DCISC_DCINT6        0x00000040  // Digital Comparator 6 Interrupt
N                                            // Status and Clear
N#define ADC_DCISC_DCINT5        0x00000020  // Digital Comparator 5 Interrupt
N                                            // Status and Clear
N#define ADC_DCISC_DCINT4        0x00000010  // Digital Comparator 4 Interrupt
N                                            // Status and Clear
N#define ADC_DCISC_DCINT3        0x00000008  // Digital Comparator 3 Interrupt
N                                            // Status and Clear
N#define ADC_DCISC_DCINT2        0x00000004  // Digital Comparator 2 Interrupt
N                                            // Status and Clear
N#define ADC_DCISC_DCINT1        0x00000002  // Digital Comparator 1 Interrupt
N                                            // Status and Clear
N#define ADC_DCISC_DCINT0        0x00000001  // Digital Comparator 0 Interrupt
N                                            // Status and Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_CTL register.
N//
N//*****************************************************************************
N#define ADC_CTL_DITHER          0x00000040  // Dither Mode Enable
N#define ADC_CTL_VREF_M          0x00000003  // Voltage Reference Select
N#define ADC_CTL_VREF_INTERNAL   0x00000000  // The internal reference as the
N                                            // voltage reference
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSMUX0 register.
N//
N//*****************************************************************************
N#define ADC_SSMUX0_MUX7_M       0xF0000000  // 8th Sample Input Select
N#define ADC_SSMUX0_MUX6_M       0x0F000000  // 7th Sample Input Select
N#define ADC_SSMUX0_MUX5_M       0x00F00000  // 6th Sample Input Select
N#define ADC_SSMUX0_MUX4_M       0x000F0000  // 5th Sample Input Select
N#define ADC_SSMUX0_MUX3_M       0x0000F000  // 4th Sample Input Select
N#define ADC_SSMUX0_MUX2_M       0x00000F00  // 3rd Sample Input Select
N#define ADC_SSMUX0_MUX1_M       0x000000F0  // 2nd Sample Input Select
N#define ADC_SSMUX0_MUX0_M       0x0000000F  // 1st Sample Input Select
N#define ADC_SSMUX0_MUX7_S       28
N#define ADC_SSMUX0_MUX6_S       24
N#define ADC_SSMUX0_MUX5_S       20
N#define ADC_SSMUX0_MUX4_S       16
N#define ADC_SSMUX0_MUX3_S       12
N#define ADC_SSMUX0_MUX2_S       8
N#define ADC_SSMUX0_MUX1_S       4
N#define ADC_SSMUX0_MUX0_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSCTL0 register.
N//
N//*****************************************************************************
N#define ADC_SSCTL0_TS7          0x80000000  // 8th Sample Temp Sensor Select
N#define ADC_SSCTL0_IE7          0x40000000  // 8th Sample Interrupt Enable
N#define ADC_SSCTL0_END7         0x20000000  // 8th Sample is End of Sequence
N#define ADC_SSCTL0_D7           0x10000000  // 8th Sample Diff Input Select
N#define ADC_SSCTL0_TS6          0x08000000  // 7th Sample Temp Sensor Select
N#define ADC_SSCTL0_IE6          0x04000000  // 7th Sample Interrupt Enable
N#define ADC_SSCTL0_END6         0x02000000  // 7th Sample is End of Sequence
N#define ADC_SSCTL0_D6           0x01000000  // 7th Sample Diff Input Select
N#define ADC_SSCTL0_TS5          0x00800000  // 6th Sample Temp Sensor Select
N#define ADC_SSCTL0_IE5          0x00400000  // 6th Sample Interrupt Enable
N#define ADC_SSCTL0_END5         0x00200000  // 6th Sample is End of Sequence
N#define ADC_SSCTL0_D5           0x00100000  // 6th Sample Diff Input Select
N#define ADC_SSCTL0_TS4          0x00080000  // 5th Sample Temp Sensor Select
N#define ADC_SSCTL0_IE4          0x00040000  // 5th Sample Interrupt Enable
N#define ADC_SSCTL0_END4         0x00020000  // 5th Sample is End of Sequence
N#define ADC_SSCTL0_D4           0x00010000  // 5th Sample Diff Input Select
N#define ADC_SSCTL0_TS3          0x00008000  // 4th Sample Temp Sensor Select
N#define ADC_SSCTL0_IE3          0x00004000  // 4th Sample Interrupt Enable
N#define ADC_SSCTL0_END3         0x00002000  // 4th Sample is End of Sequence
N#define ADC_SSCTL0_D3           0x00001000  // 4th Sample Diff Input Select
N#define ADC_SSCTL0_TS2          0x00000800  // 3rd Sample Temp Sensor Select
N#define ADC_SSCTL0_IE2          0x00000400  // 3rd Sample Interrupt Enable
N#define ADC_SSCTL0_END2         0x00000200  // 3rd Sample is End of Sequence
N#define ADC_SSCTL0_D2           0x00000100  // 3rd Sample Diff Input Select
N#define ADC_SSCTL0_TS1          0x00000080  // 2nd Sample Temp Sensor Select
N#define ADC_SSCTL0_IE1          0x00000040  // 2nd Sample Interrupt Enable
N#define ADC_SSCTL0_END1         0x00000020  // 2nd Sample is End of Sequence
N#define ADC_SSCTL0_D1           0x00000010  // 2nd Sample Diff Input Select
N#define ADC_SSCTL0_TS0          0x00000008  // 1st Sample Temp Sensor Select
N#define ADC_SSCTL0_IE0          0x00000004  // 1st Sample Interrupt Enable
N#define ADC_SSCTL0_END0         0x00000002  // 1st Sample is End of Sequence
N#define ADC_SSCTL0_D0           0x00000001  // 1st Sample Diff Input Select
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSFIFO0 register.
N//
N//*****************************************************************************
N#define ADC_SSFIFO0_DATA_M      0x00000FFF  // Conversion Result Data
N#define ADC_SSFIFO0_DATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSFSTAT0 register.
N//
N//*****************************************************************************
N#define ADC_SSFSTAT0_FULL       0x00001000  // FIFO Full
N#define ADC_SSFSTAT0_EMPTY      0x00000100  // FIFO Empty
N#define ADC_SSFSTAT0_HPTR_M     0x000000F0  // FIFO Head Pointer
N#define ADC_SSFSTAT0_TPTR_M     0x0000000F  // FIFO Tail Pointer
N#define ADC_SSFSTAT0_HPTR_S     4
N#define ADC_SSFSTAT0_TPTR_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSOP0 register.
N//
N//*****************************************************************************
N#define ADC_SSOP0_S7DCOP        0x10000000  // Sample 7 Digital Comparator
N                                            // Operation
N#define ADC_SSOP0_S6DCOP        0x01000000  // Sample 6 Digital Comparator
N                                            // Operation
N#define ADC_SSOP0_S5DCOP        0x00100000  // Sample 5 Digital Comparator
N                                            // Operation
N#define ADC_SSOP0_S4DCOP        0x00010000  // Sample 4 Digital Comparator
N                                            // Operation
N#define ADC_SSOP0_S3DCOP        0x00001000  // Sample 3 Digital Comparator
N                                            // Operation
N#define ADC_SSOP0_S2DCOP        0x00000100  // Sample 2 Digital Comparator
N                                            // Operation
N#define ADC_SSOP0_S1DCOP        0x00000010  // Sample 1 Digital Comparator
N                                            // Operation
N#define ADC_SSOP0_S0DCOP        0x00000001  // Sample 0 Digital Comparator
N                                            // Operation
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSDC0 register.
N//
N//*****************************************************************************
N#define ADC_SSDC0_S7DCSEL_M     0xF0000000  // Sample 7 Digital Comparator
N                                            // Select
N#define ADC_SSDC0_S6DCSEL_M     0x0F000000  // Sample 6 Digital Comparator
N                                            // Select
N#define ADC_SSDC0_S5DCSEL_M     0x00F00000  // Sample 5 Digital Comparator
N                                            // Select
N#define ADC_SSDC0_S4DCSEL_M     0x000F0000  // Sample 4 Digital Comparator
N                                            // Select
N#define ADC_SSDC0_S3DCSEL_M     0x0000F000  // Sample 3 Digital Comparator
N                                            // Select
N#define ADC_SSDC0_S2DCSEL_M     0x00000F00  // Sample 2 Digital Comparator
N                                            // Select
N#define ADC_SSDC0_S1DCSEL_M     0x000000F0  // Sample 1 Digital Comparator
N                                            // Select
N#define ADC_SSDC0_S0DCSEL_M     0x0000000F  // Sample 0 Digital Comparator
N                                            // Select
N#define ADC_SSDC0_S6DCSEL_S     24
N#define ADC_SSDC0_S5DCSEL_S     20
N#define ADC_SSDC0_S4DCSEL_S     16
N#define ADC_SSDC0_S3DCSEL_S     12
N#define ADC_SSDC0_S2DCSEL_S     8
N#define ADC_SSDC0_S1DCSEL_S     4
N#define ADC_SSDC0_S0DCSEL_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSMUX1 register.
N//
N//*****************************************************************************
N#define ADC_SSMUX1_MUX3_M       0x0000F000  // 4th Sample Input Select
N#define ADC_SSMUX1_MUX2_M       0x00000F00  // 3rd Sample Input Select
N#define ADC_SSMUX1_MUX1_M       0x000000F0  // 2nd Sample Input Select
N#define ADC_SSMUX1_MUX0_M       0x0000000F  // 1st Sample Input Select
N#define ADC_SSMUX1_MUX3_S       12
N#define ADC_SSMUX1_MUX2_S       8
N#define ADC_SSMUX1_MUX1_S       4
N#define ADC_SSMUX1_MUX0_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSCTL1 register.
N//
N//*****************************************************************************
N#define ADC_SSCTL1_TS3          0x00008000  // 4th Sample Temp Sensor Select
N#define ADC_SSCTL1_IE3          0x00004000  // 4th Sample Interrupt Enable
N#define ADC_SSCTL1_END3         0x00002000  // 4th Sample is End of Sequence
N#define ADC_SSCTL1_D3           0x00001000  // 4th Sample Diff Input Select
N#define ADC_SSCTL1_TS2          0x00000800  // 3rd Sample Temp Sensor Select
N#define ADC_SSCTL1_IE2          0x00000400  // 3rd Sample Interrupt Enable
N#define ADC_SSCTL1_END2         0x00000200  // 3rd Sample is End of Sequence
N#define ADC_SSCTL1_D2           0x00000100  // 3rd Sample Diff Input Select
N#define ADC_SSCTL1_TS1          0x00000080  // 2nd Sample Temp Sensor Select
N#define ADC_SSCTL1_IE1          0x00000040  // 2nd Sample Interrupt Enable
N#define ADC_SSCTL1_END1         0x00000020  // 2nd Sample is End of Sequence
N#define ADC_SSCTL1_D1           0x00000010  // 2nd Sample Diff Input Select
N#define ADC_SSCTL1_TS0          0x00000008  // 1st Sample Temp Sensor Select
N#define ADC_SSCTL1_IE0          0x00000004  // 1st Sample Interrupt Enable
N#define ADC_SSCTL1_END0         0x00000002  // 1st Sample is End of Sequence
N#define ADC_SSCTL1_D0           0x00000001  // 1st Sample Diff Input Select
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSFIFO1 register.
N//
N//*****************************************************************************
N#define ADC_SSFIFO1_DATA_M      0x00000FFF  // Conversion Result Data
N#define ADC_SSFIFO1_DATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSFSTAT1 register.
N//
N//*****************************************************************************
N#define ADC_SSFSTAT1_FULL       0x00001000  // FIFO Full
N#define ADC_SSFSTAT1_EMPTY      0x00000100  // FIFO Empty
N#define ADC_SSFSTAT1_HPTR_M     0x000000F0  // FIFO Head Pointer
N#define ADC_SSFSTAT1_TPTR_M     0x0000000F  // FIFO Tail Pointer
N#define ADC_SSFSTAT1_HPTR_S     4
N#define ADC_SSFSTAT1_TPTR_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSOP1 register.
N//
N//*****************************************************************************
N#define ADC_SSOP1_S3DCOP        0x00001000  // Sample 3 Digital Comparator
N                                            // Operation
N#define ADC_SSOP1_S2DCOP        0x00000100  // Sample 2 Digital Comparator
N                                            // Operation
N#define ADC_SSOP1_S1DCOP        0x00000010  // Sample 1 Digital Comparator
N                                            // Operation
N#define ADC_SSOP1_S0DCOP        0x00000001  // Sample 0 Digital Comparator
N                                            // Operation
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSDC1 register.
N//
N//*****************************************************************************
N#define ADC_SSDC1_S3DCSEL_M     0x0000F000  // Sample 3 Digital Comparator
N                                            // Select
N#define ADC_SSDC1_S2DCSEL_M     0x00000F00  // Sample 2 Digital Comparator
N                                            // Select
N#define ADC_SSDC1_S1DCSEL_M     0x000000F0  // Sample 1 Digital Comparator
N                                            // Select
N#define ADC_SSDC1_S0DCSEL_M     0x0000000F  // Sample 0 Digital Comparator
N                                            // Select
N#define ADC_SSDC1_S2DCSEL_S     8
N#define ADC_SSDC1_S1DCSEL_S     4
N#define ADC_SSDC1_S0DCSEL_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSMUX2 register.
N//
N//*****************************************************************************
N#define ADC_SSMUX2_MUX3_M       0x0000F000  // 4th Sample Input Select
N#define ADC_SSMUX2_MUX2_M       0x00000F00  // 3rd Sample Input Select
N#define ADC_SSMUX2_MUX1_M       0x000000F0  // 2nd Sample Input Select
N#define ADC_SSMUX2_MUX0_M       0x0000000F  // 1st Sample Input Select
N#define ADC_SSMUX2_MUX3_S       12
N#define ADC_SSMUX2_MUX2_S       8
N#define ADC_SSMUX2_MUX1_S       4
N#define ADC_SSMUX2_MUX0_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSCTL2 register.
N//
N//*****************************************************************************
N#define ADC_SSCTL2_TS3          0x00008000  // 4th Sample Temp Sensor Select
N#define ADC_SSCTL2_IE3          0x00004000  // 4th Sample Interrupt Enable
N#define ADC_SSCTL2_END3         0x00002000  // 4th Sample is End of Sequence
N#define ADC_SSCTL2_D3           0x00001000  // 4th Sample Diff Input Select
N#define ADC_SSCTL2_TS2          0x00000800  // 3rd Sample Temp Sensor Select
N#define ADC_SSCTL2_IE2          0x00000400  // 3rd Sample Interrupt Enable
N#define ADC_SSCTL2_END2         0x00000200  // 3rd Sample is End of Sequence
N#define ADC_SSCTL2_D2           0x00000100  // 3rd Sample Diff Input Select
N#define ADC_SSCTL2_TS1          0x00000080  // 2nd Sample Temp Sensor Select
N#define ADC_SSCTL2_IE1          0x00000040  // 2nd Sample Interrupt Enable
N#define ADC_SSCTL2_END1         0x00000020  // 2nd Sample is End of Sequence
N#define ADC_SSCTL2_D1           0x00000010  // 2nd Sample Diff Input Select
N#define ADC_SSCTL2_TS0          0x00000008  // 1st Sample Temp Sensor Select
N#define ADC_SSCTL2_IE0          0x00000004  // 1st Sample Interrupt Enable
N#define ADC_SSCTL2_END0         0x00000002  // 1st Sample is End of Sequence
N#define ADC_SSCTL2_D0           0x00000001  // 1st Sample Diff Input Select
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSFIFO2 register.
N//
N//*****************************************************************************
N#define ADC_SSFIFO2_DATA_M      0x00000FFF  // Conversion Result Data
N#define ADC_SSFIFO2_DATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSFSTAT2 register.
N//
N//*****************************************************************************
N#define ADC_SSFSTAT2_FULL       0x00001000  // FIFO Full
N#define ADC_SSFSTAT2_EMPTY      0x00000100  // FIFO Empty
N#define ADC_SSFSTAT2_HPTR_M     0x000000F0  // FIFO Head Pointer
N#define ADC_SSFSTAT2_TPTR_M     0x0000000F  // FIFO Tail Pointer
N#define ADC_SSFSTAT2_HPTR_S     4
N#define ADC_SSFSTAT2_TPTR_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSOP2 register.
N//
N//*****************************************************************************
N#define ADC_SSOP2_S3DCOP        0x00001000  // Sample 3 Digital Comparator
N                                            // Operation
N#define ADC_SSOP2_S2DCOP        0x00000100  // Sample 2 Digital Comparator
N                                            // Operation
N#define ADC_SSOP2_S1DCOP        0x00000010  // Sample 1 Digital Comparator
N                                            // Operation
N#define ADC_SSOP2_S0DCOP        0x00000001  // Sample 0 Digital Comparator
N                                            // Operation
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSDC2 register.
N//
N//*****************************************************************************
N#define ADC_SSDC2_S3DCSEL_M     0x0000F000  // Sample 3 Digital Comparator
N                                            // Select
N#define ADC_SSDC2_S2DCSEL_M     0x00000F00  // Sample 2 Digital Comparator
N                                            // Select
N#define ADC_SSDC2_S1DCSEL_M     0x000000F0  // Sample 1 Digital Comparator
N                                            // Select
N#define ADC_SSDC2_S0DCSEL_M     0x0000000F  // Sample 0 Digital Comparator
N                                            // Select
N#define ADC_SSDC2_S2DCSEL_S     8
N#define ADC_SSDC2_S1DCSEL_S     4
N#define ADC_SSDC2_S0DCSEL_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSMUX3 register.
N//
N//*****************************************************************************
N#define ADC_SSMUX3_MUX0_M       0x0000000F  // 1st Sample Input Select
N#define ADC_SSMUX3_MUX0_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSCTL3 register.
N//
N//*****************************************************************************
N#define ADC_SSCTL3_TS0          0x00000008  // 1st Sample Temp Sensor Select
N#define ADC_SSCTL3_IE0          0x00000004  // 1st Sample Interrupt Enable
N#define ADC_SSCTL3_END0         0x00000002  // 1st Sample is End of Sequence
N#define ADC_SSCTL3_D0           0x00000001  // 1st Sample Diff Input Select
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSFIFO3 register.
N//
N//*****************************************************************************
N#define ADC_SSFIFO3_DATA_M      0x00000FFF  // Conversion Result Data
N#define ADC_SSFIFO3_DATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSFSTAT3 register.
N//
N//*****************************************************************************
N#define ADC_SSFSTAT3_FULL       0x00001000  // FIFO Full
N#define ADC_SSFSTAT3_EMPTY      0x00000100  // FIFO Empty
N#define ADC_SSFSTAT3_HPTR_M     0x000000F0  // FIFO Head Pointer
N#define ADC_SSFSTAT3_TPTR_M     0x0000000F  // FIFO Tail Pointer
N#define ADC_SSFSTAT3_HPTR_S     4
N#define ADC_SSFSTAT3_TPTR_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSOP3 register.
N//
N//*****************************************************************************
N#define ADC_SSOP3_S0DCOP        0x00000001  // Sample 0 Digital Comparator
N                                            // Operation
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_SSDC3 register.
N//
N//*****************************************************************************
N#define ADC_SSDC3_S0DCSEL_M     0x0000000F  // Sample 0 Digital Comparator
N                                            // Select
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCRIC register.
N//
N//*****************************************************************************
N#define ADC_DCRIC_DCTRIG7       0x00800000  // Digital Comparator Trigger 7
N#define ADC_DCRIC_DCTRIG6       0x00400000  // Digital Comparator Trigger 6
N#define ADC_DCRIC_DCTRIG5       0x00200000  // Digital Comparator Trigger 5
N#define ADC_DCRIC_DCTRIG4       0x00100000  // Digital Comparator Trigger 4
N#define ADC_DCRIC_DCTRIG3       0x00080000  // Digital Comparator Trigger 3
N#define ADC_DCRIC_DCTRIG2       0x00040000  // Digital Comparator Trigger 2
N#define ADC_DCRIC_DCTRIG1       0x00020000  // Digital Comparator Trigger 1
N#define ADC_DCRIC_DCTRIG0       0x00010000  // Digital Comparator Trigger 0
N#define ADC_DCRIC_DCINT7        0x00000080  // Digital Comparator Interrupt 7
N#define ADC_DCRIC_DCINT6        0x00000040  // Digital Comparator Interrupt 6
N#define ADC_DCRIC_DCINT5        0x00000020  // Digital Comparator Interrupt 5
N#define ADC_DCRIC_DCINT4        0x00000010  // Digital Comparator Interrupt 4
N#define ADC_DCRIC_DCINT3        0x00000008  // Digital Comparator Interrupt 3
N#define ADC_DCRIC_DCINT2        0x00000004  // Digital Comparator Interrupt 2
N#define ADC_DCRIC_DCINT1        0x00000002  // Digital Comparator Interrupt 1
N#define ADC_DCRIC_DCINT0        0x00000001  // Digital Comparator Interrupt 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCTL0 register.
N//
N//*****************************************************************************
N#define ADC_DCCTL0_CTE          0x00001000  // Comparison Trigger Enable
N#define ADC_DCCTL0_CTC_M        0x00000C00  // Comparison Trigger Condition
N#define ADC_DCCTL0_CTC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL0_CTC_MID      0x00000400  // Mid Band
N#define ADC_DCCTL0_CTC_HIGH     0x00000C00  // High Band
N#define ADC_DCCTL0_CTM_M        0x00000300  // Comparison Trigger Mode
N#define ADC_DCCTL0_CTM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL0_CTM_ONCE     0x00000100  // Once
N#define ADC_DCCTL0_CTM_HALWAYS  0x00000200  // Hysteresis Always
N#define ADC_DCCTL0_CTM_HONCE    0x00000300  // Hysteresis Once
N#define ADC_DCCTL0_CIE          0x00000010  // Comparison Interrupt Enable
N#define ADC_DCCTL0_CIC_M        0x0000000C  // Comparison Interrupt Condition
N#define ADC_DCCTL0_CIC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL0_CIC_MID      0x00000004  // Mid Band
N#define ADC_DCCTL0_CIC_HIGH     0x0000000C  // High Band
N#define ADC_DCCTL0_CIM_M        0x00000003  // Comparison Interrupt Mode
N#define ADC_DCCTL0_CIM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL0_CIM_ONCE     0x00000001  // Once
N#define ADC_DCCTL0_CIM_HALWAYS  0x00000002  // Hysteresis Always
N#define ADC_DCCTL0_CIM_HONCE    0x00000003  // Hysteresis Once
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCTL1 register.
N//
N//*****************************************************************************
N#define ADC_DCCTL1_CTE          0x00001000  // Comparison Trigger Enable
N#define ADC_DCCTL1_CTC_M        0x00000C00  // Comparison Trigger Condition
N#define ADC_DCCTL1_CTC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL1_CTC_MID      0x00000400  // Mid Band
N#define ADC_DCCTL1_CTC_HIGH     0x00000C00  // High Band
N#define ADC_DCCTL1_CTM_M        0x00000300  // Comparison Trigger Mode
N#define ADC_DCCTL1_CTM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL1_CTM_ONCE     0x00000100  // Once
N#define ADC_DCCTL1_CTM_HALWAYS  0x00000200  // Hysteresis Always
N#define ADC_DCCTL1_CTM_HONCE    0x00000300  // Hysteresis Once
N#define ADC_DCCTL1_CIE          0x00000010  // Comparison Interrupt Enable
N#define ADC_DCCTL1_CIC_M        0x0000000C  // Comparison Interrupt Condition
N#define ADC_DCCTL1_CIC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL1_CIC_MID      0x00000004  // Mid Band
N#define ADC_DCCTL1_CIC_HIGH     0x0000000C  // High Band
N#define ADC_DCCTL1_CIM_M        0x00000003  // Comparison Interrupt Mode
N#define ADC_DCCTL1_CIM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL1_CIM_ONCE     0x00000001  // Once
N#define ADC_DCCTL1_CIM_HALWAYS  0x00000002  // Hysteresis Always
N#define ADC_DCCTL1_CIM_HONCE    0x00000003  // Hysteresis Once
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCTL2 register.
N//
N//*****************************************************************************
N#define ADC_DCCTL2_CTE          0x00001000  // Comparison Trigger Enable
N#define ADC_DCCTL2_CTC_M        0x00000C00  // Comparison Trigger Condition
N#define ADC_DCCTL2_CTC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL2_CTC_MID      0x00000400  // Mid Band
N#define ADC_DCCTL2_CTC_HIGH     0x00000C00  // High Band
N#define ADC_DCCTL2_CTM_M        0x00000300  // Comparison Trigger Mode
N#define ADC_DCCTL2_CTM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL2_CTM_ONCE     0x00000100  // Once
N#define ADC_DCCTL2_CTM_HALWAYS  0x00000200  // Hysteresis Always
N#define ADC_DCCTL2_CTM_HONCE    0x00000300  // Hysteresis Once
N#define ADC_DCCTL2_CIE          0x00000010  // Comparison Interrupt Enable
N#define ADC_DCCTL2_CIC_M        0x0000000C  // Comparison Interrupt Condition
N#define ADC_DCCTL2_CIC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL2_CIC_MID      0x00000004  // Mid Band
N#define ADC_DCCTL2_CIC_HIGH     0x0000000C  // High Band
N#define ADC_DCCTL2_CIM_M        0x00000003  // Comparison Interrupt Mode
N#define ADC_DCCTL2_CIM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL2_CIM_ONCE     0x00000001  // Once
N#define ADC_DCCTL2_CIM_HALWAYS  0x00000002  // Hysteresis Always
N#define ADC_DCCTL2_CIM_HONCE    0x00000003  // Hysteresis Once
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCTL3 register.
N//
N//*****************************************************************************
N#define ADC_DCCTL3_CTE          0x00001000  // Comparison Trigger Enable
N#define ADC_DCCTL3_CTC_M        0x00000C00  // Comparison Trigger Condition
N#define ADC_DCCTL3_CTC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL3_CTC_MID      0x00000400  // Mid Band
N#define ADC_DCCTL3_CTC_HIGH     0x00000C00  // High Band
N#define ADC_DCCTL3_CTM_M        0x00000300  // Comparison Trigger Mode
N#define ADC_DCCTL3_CTM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL3_CTM_ONCE     0x00000100  // Once
N#define ADC_DCCTL3_CTM_HALWAYS  0x00000200  // Hysteresis Always
N#define ADC_DCCTL3_CTM_HONCE    0x00000300  // Hysteresis Once
N#define ADC_DCCTL3_CIE          0x00000010  // Comparison Interrupt Enable
N#define ADC_DCCTL3_CIC_M        0x0000000C  // Comparison Interrupt Condition
N#define ADC_DCCTL3_CIC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL3_CIC_MID      0x00000004  // Mid Band
N#define ADC_DCCTL3_CIC_HIGH     0x0000000C  // High Band
N#define ADC_DCCTL3_CIM_M        0x00000003  // Comparison Interrupt Mode
N#define ADC_DCCTL3_CIM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL3_CIM_ONCE     0x00000001  // Once
N#define ADC_DCCTL3_CIM_HALWAYS  0x00000002  // Hysteresis Always
N#define ADC_DCCTL3_CIM_HONCE    0x00000003  // Hysteresis Once
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCTL4 register.
N//
N//*****************************************************************************
N#define ADC_DCCTL4_CTE          0x00001000  // Comparison Trigger Enable
N#define ADC_DCCTL4_CTC_M        0x00000C00  // Comparison Trigger Condition
N#define ADC_DCCTL4_CTC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL4_CTC_MID      0x00000400  // Mid Band
N#define ADC_DCCTL4_CTC_HIGH     0x00000C00  // High Band
N#define ADC_DCCTL4_CTM_M        0x00000300  // Comparison Trigger Mode
N#define ADC_DCCTL4_CTM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL4_CTM_ONCE     0x00000100  // Once
N#define ADC_DCCTL4_CTM_HALWAYS  0x00000200  // Hysteresis Always
N#define ADC_DCCTL4_CTM_HONCE    0x00000300  // Hysteresis Once
N#define ADC_DCCTL4_CIE          0x00000010  // Comparison Interrupt Enable
N#define ADC_DCCTL4_CIC_M        0x0000000C  // Comparison Interrupt Condition
N#define ADC_DCCTL4_CIC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL4_CIC_MID      0x00000004  // Mid Band
N#define ADC_DCCTL4_CIC_HIGH     0x0000000C  // High Band
N#define ADC_DCCTL4_CIM_M        0x00000003  // Comparison Interrupt Mode
N#define ADC_DCCTL4_CIM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL4_CIM_ONCE     0x00000001  // Once
N#define ADC_DCCTL4_CIM_HALWAYS  0x00000002  // Hysteresis Always
N#define ADC_DCCTL4_CIM_HONCE    0x00000003  // Hysteresis Once
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCTL5 register.
N//
N//*****************************************************************************
N#define ADC_DCCTL5_CTE          0x00001000  // Comparison Trigger Enable
N#define ADC_DCCTL5_CTC_M        0x00000C00  // Comparison Trigger Condition
N#define ADC_DCCTL5_CTC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL5_CTC_MID      0x00000400  // Mid Band
N#define ADC_DCCTL5_CTC_HIGH     0x00000C00  // High Band
N#define ADC_DCCTL5_CTM_M        0x00000300  // Comparison Trigger Mode
N#define ADC_DCCTL5_CTM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL5_CTM_ONCE     0x00000100  // Once
N#define ADC_DCCTL5_CTM_HALWAYS  0x00000200  // Hysteresis Always
N#define ADC_DCCTL5_CTM_HONCE    0x00000300  // Hysteresis Once
N#define ADC_DCCTL5_CIE          0x00000010  // Comparison Interrupt Enable
N#define ADC_DCCTL5_CIC_M        0x0000000C  // Comparison Interrupt Condition
N#define ADC_DCCTL5_CIC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL5_CIC_MID      0x00000004  // Mid Band
N#define ADC_DCCTL5_CIC_HIGH     0x0000000C  // High Band
N#define ADC_DCCTL5_CIM_M        0x00000003  // Comparison Interrupt Mode
N#define ADC_DCCTL5_CIM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL5_CIM_ONCE     0x00000001  // Once
N#define ADC_DCCTL5_CIM_HALWAYS  0x00000002  // Hysteresis Always
N#define ADC_DCCTL5_CIM_HONCE    0x00000003  // Hysteresis Once
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCTL6 register.
N//
N//*****************************************************************************
N#define ADC_DCCTL6_CTE          0x00001000  // Comparison Trigger Enable
N#define ADC_DCCTL6_CTC_M        0x00000C00  // Comparison Trigger Condition
N#define ADC_DCCTL6_CTC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL6_CTC_MID      0x00000400  // Mid Band
N#define ADC_DCCTL6_CTC_HIGH     0x00000C00  // High Band
N#define ADC_DCCTL6_CTM_M        0x00000300  // Comparison Trigger Mode
N#define ADC_DCCTL6_CTM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL6_CTM_ONCE     0x00000100  // Once
N#define ADC_DCCTL6_CTM_HALWAYS  0x00000200  // Hysteresis Always
N#define ADC_DCCTL6_CTM_HONCE    0x00000300  // Hysteresis Once
N#define ADC_DCCTL6_CIE          0x00000010  // Comparison Interrupt Enable
N#define ADC_DCCTL6_CIC_M        0x0000000C  // Comparison Interrupt Condition
N#define ADC_DCCTL6_CIC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL6_CIC_MID      0x00000004  // Mid Band
N#define ADC_DCCTL6_CIC_HIGH     0x0000000C  // High Band
N#define ADC_DCCTL6_CIM_M        0x00000003  // Comparison Interrupt Mode
N#define ADC_DCCTL6_CIM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL6_CIM_ONCE     0x00000001  // Once
N#define ADC_DCCTL6_CIM_HALWAYS  0x00000002  // Hysteresis Always
N#define ADC_DCCTL6_CIM_HONCE    0x00000003  // Hysteresis Once
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCTL7 register.
N//
N//*****************************************************************************
N#define ADC_DCCTL7_CTE          0x00001000  // Comparison Trigger Enable
N#define ADC_DCCTL7_CTC_M        0x00000C00  // Comparison Trigger Condition
N#define ADC_DCCTL7_CTC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL7_CTC_MID      0x00000400  // Mid Band
N#define ADC_DCCTL7_CTC_HIGH     0x00000C00  // High Band
N#define ADC_DCCTL7_CTM_M        0x00000300  // Comparison Trigger Mode
N#define ADC_DCCTL7_CTM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL7_CTM_ONCE     0x00000100  // Once
N#define ADC_DCCTL7_CTM_HALWAYS  0x00000200  // Hysteresis Always
N#define ADC_DCCTL7_CTM_HONCE    0x00000300  // Hysteresis Once
N#define ADC_DCCTL7_CIE          0x00000010  // Comparison Interrupt Enable
N#define ADC_DCCTL7_CIC_M        0x0000000C  // Comparison Interrupt Condition
N#define ADC_DCCTL7_CIC_LOW      0x00000000  // Low Band
N#define ADC_DCCTL7_CIC_MID      0x00000004  // Mid Band
N#define ADC_DCCTL7_CIC_HIGH     0x0000000C  // High Band
N#define ADC_DCCTL7_CIM_M        0x00000003  // Comparison Interrupt Mode
N#define ADC_DCCTL7_CIM_ALWAYS   0x00000000  // Always
N#define ADC_DCCTL7_CIM_ONCE     0x00000001  // Once
N#define ADC_DCCTL7_CIM_HALWAYS  0x00000002  // Hysteresis Always
N#define ADC_DCCTL7_CIM_HONCE    0x00000003  // Hysteresis Once
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCMP0 register.
N//
N//*****************************************************************************
N#define ADC_DCCMP0_COMP1_M      0x0FFF0000  // Compare 1
N#define ADC_DCCMP0_COMP0_M      0x00000FFF  // Compare 0
N#define ADC_DCCMP0_COMP1_S      16
N#define ADC_DCCMP0_COMP0_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCMP1 register.
N//
N//*****************************************************************************
N#define ADC_DCCMP1_COMP1_M      0x0FFF0000  // Compare 1
N#define ADC_DCCMP1_COMP0_M      0x00000FFF  // Compare 0
N#define ADC_DCCMP1_COMP1_S      16
N#define ADC_DCCMP1_COMP0_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCMP2 register.
N//
N//*****************************************************************************
N#define ADC_DCCMP2_COMP1_M      0x0FFF0000  // Compare 1
N#define ADC_DCCMP2_COMP0_M      0x00000FFF  // Compare 0
N#define ADC_DCCMP2_COMP1_S      16
N#define ADC_DCCMP2_COMP0_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCMP3 register.
N//
N//*****************************************************************************
N#define ADC_DCCMP3_COMP1_M      0x0FFF0000  // Compare 1
N#define ADC_DCCMP3_COMP0_M      0x00000FFF  // Compare 0
N#define ADC_DCCMP3_COMP1_S      16
N#define ADC_DCCMP3_COMP0_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCMP4 register.
N//
N//*****************************************************************************
N#define ADC_DCCMP4_COMP1_M      0x0FFF0000  // Compare 1
N#define ADC_DCCMP4_COMP0_M      0x00000FFF  // Compare 0
N#define ADC_DCCMP4_COMP1_S      16
N#define ADC_DCCMP4_COMP0_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCMP5 register.
N//
N//*****************************************************************************
N#define ADC_DCCMP5_COMP1_M      0x0FFF0000  // Compare 1
N#define ADC_DCCMP5_COMP0_M      0x00000FFF  // Compare 0
N#define ADC_DCCMP5_COMP1_S      16
N#define ADC_DCCMP5_COMP0_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCMP6 register.
N//
N//*****************************************************************************
N#define ADC_DCCMP6_COMP1_M      0x0FFF0000  // Compare 1
N#define ADC_DCCMP6_COMP0_M      0x00000FFF  // Compare 0
N#define ADC_DCCMP6_COMP1_S      16
N#define ADC_DCCMP6_COMP0_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_DCCMP7 register.
N//
N//*****************************************************************************
N#define ADC_DCCMP7_COMP1_M      0x0FFF0000  // Compare 1
N#define ADC_DCCMP7_COMP0_M      0x00000FFF  // Compare 0
N#define ADC_DCCMP7_COMP1_S      16
N#define ADC_DCCMP7_COMP0_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_PP register.
N//
N//*****************************************************************************
N#define ADC_PP_TS               0x00800000  // Temperature Sensor
N#define ADC_PP_RSL_M            0x007C0000  // Resolution
N#define ADC_PP_TYPE_M           0x00030000  // ADC Architecture
N#define ADC_PP_TYPE_SAR         0x00000000  // SAR
N#define ADC_PP_DC_M             0x0000FC00  // Digital Comparator Count
N#define ADC_PP_CH_M             0x000003F0  // ADC Channel Count
N#define ADC_PP_MSR_M            0x0000000F  // Maximum ADC Sample Rate
N#define ADC_PP_MSR_125K         0x00000001  // 125 ksps
N#define ADC_PP_MSR_250K         0x00000003  // 250 ksps
N#define ADC_PP_MSR_500K         0x00000005  // 500 ksps
N#define ADC_PP_MSR_1M           0x00000007  // 1 Msps
N#define ADC_PP_RSL_S            18
N#define ADC_PP_DC_S             10
N#define ADC_PP_CH_S             4
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_PC register.
N//
N//*****************************************************************************
N#define ADC_PC_SR_M             0x0000000F  // ADC Sample Rate
N#define ADC_PC_SR_125K          0x00000001  // 125 ksps
N#define ADC_PC_SR_250K          0x00000003  // 250 ksps
N#define ADC_PC_SR_500K          0x00000005  // 500 ksps
N#define ADC_PC_SR_1M            0x00000007  // 1 Msps
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the ADC_O_CC register.
N//
N//*****************************************************************************
N#define ADC_CC_CS_M             0x0000000F  // ADC Clock Source
N#define ADC_CC_CS_SYSPLL        0x00000000  // Either the system clock (if the
N                                            // PLL bypass is in effect) or the
N                                            // 16 MHz clock derived from PLL /
N                                            // 25 (default)
N#define ADC_CC_CS_PIOSC         0x00000001  // PIOSC
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the COMP_O_ACMIS register.
N//
N//*****************************************************************************
N#define COMP_ACMIS_IN1          0x00000002  // Comparator 1 Masked Interrupt
N                                            // Status
N#define COMP_ACMIS_IN0          0x00000001  // Comparator 0 Masked Interrupt
N                                            // Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the COMP_O_ACRIS register.
N//
N//*****************************************************************************
N#define COMP_ACRIS_IN1          0x00000002  // Comparator 1 Interrupt Status
N#define COMP_ACRIS_IN0          0x00000001  // Comparator 0 Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the COMP_O_ACINTEN register.
N//
N//*****************************************************************************
N#define COMP_ACINTEN_IN1        0x00000002  // Comparator 1 Interrupt Enable
N#define COMP_ACINTEN_IN0        0x00000001  // Comparator 0 Interrupt Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the COMP_O_ACREFCTL
N// register.
N//
N//*****************************************************************************
N#define COMP_ACREFCTL_EN        0x00000200  // Resistor Ladder Enable
N#define COMP_ACREFCTL_RNG       0x00000100  // Resistor Ladder Range
N#define COMP_ACREFCTL_VREF_M    0x0000000F  // Resistor Ladder Voltage Ref
N#define COMP_ACREFCTL_VREF_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the COMP_O_ACSTAT0 register.
N//
N//*****************************************************************************
N#define COMP_ACSTAT0_OVAL       0x00000002  // Comparator Output Value
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the COMP_O_ACCTL0 register.
N//
N//*****************************************************************************
N#define COMP_ACCTL0_TOEN        0x00000800  // Trigger Output Enable
N#define COMP_ACCTL0_ASRCP_M     0x00000600  // Analog Source Positive
N#define COMP_ACCTL0_ASRCP_PIN   0x00000000  // Pin value of Cn+
N#define COMP_ACCTL0_ASRCP_PIN0  0x00000200  // Pin value of C0+
N#define COMP_ACCTL0_ASRCP_REF   0x00000400  // Internal voltage reference
N#define COMP_ACCTL0_TSLVAL      0x00000080  // Trigger Sense Level Value
N#define COMP_ACCTL0_TSEN_M      0x00000060  // Trigger Sense
N#define COMP_ACCTL0_TSEN_LEVEL  0x00000000  // Level sense, see TSLVAL
N#define COMP_ACCTL0_TSEN_FALL   0x00000020  // Falling edge
N#define COMP_ACCTL0_TSEN_RISE   0x00000040  // Rising edge
N#define COMP_ACCTL0_TSEN_BOTH   0x00000060  // Either edge
N#define COMP_ACCTL0_ISLVAL      0x00000010  // Interrupt Sense Level Value
N#define COMP_ACCTL0_ISEN_M      0x0000000C  // Interrupt Sense
N#define COMP_ACCTL0_ISEN_LEVEL  0x00000000  // Level sense, see ISLVAL
N#define COMP_ACCTL0_ISEN_FALL   0x00000004  // Falling edge
N#define COMP_ACCTL0_ISEN_RISE   0x00000008  // Rising edge
N#define COMP_ACCTL0_ISEN_BOTH   0x0000000C  // Either edge
N#define COMP_ACCTL0_CINV        0x00000002  // Comparator Output Invert
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the COMP_O_ACSTAT1 register.
N//
N//*****************************************************************************
N#define COMP_ACSTAT1_OVAL       0x00000002  // Comparator Output Value
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the COMP_O_ACCTL1 register.
N//
N//*****************************************************************************
N#define COMP_ACCTL1_TOEN        0x00000800  // Trigger Output Enable
N#define COMP_ACCTL1_ASRCP_M     0x00000600  // Analog Source Positive
N#define COMP_ACCTL1_ASRCP_PIN   0x00000000  // Pin value of Cn+
N#define COMP_ACCTL1_ASRCP_PIN0  0x00000200  // Pin value of C0+
N#define COMP_ACCTL1_ASRCP_REF   0x00000400  // Internal voltage reference
N                                            // (VIREF)
N#define COMP_ACCTL1_TSLVAL      0x00000080  // Trigger Sense Level Value
N#define COMP_ACCTL1_TSEN_M      0x00000060  // Trigger Sense
N#define COMP_ACCTL1_TSEN_LEVEL  0x00000000  // Level sense, see TSLVAL
N#define COMP_ACCTL1_TSEN_FALL   0x00000020  // Falling edge
N#define COMP_ACCTL1_TSEN_RISE   0x00000040  // Rising edge
N#define COMP_ACCTL1_TSEN_BOTH   0x00000060  // Either edge
N#define COMP_ACCTL1_ISLVAL      0x00000010  // Interrupt Sense Level Value
N#define COMP_ACCTL1_ISEN_M      0x0000000C  // Interrupt Sense
N#define COMP_ACCTL1_ISEN_LEVEL  0x00000000  // Level sense, see ISLVAL
N#define COMP_ACCTL1_ISEN_FALL   0x00000004  // Falling edge
N#define COMP_ACCTL1_ISEN_RISE   0x00000008  // Rising edge
N#define COMP_ACCTL1_ISEN_BOTH   0x0000000C  // Either edge
N#define COMP_ACCTL1_CINV        0x00000002  // Comparator Output Invert
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the COMP_O_PP register.
N//
N//*****************************************************************************
N#define COMP_PP_C1O             0x00020000  // Comparator Output 1 Present
N#define COMP_PP_C0O             0x00010000  // Comparator Output 0 Present
N#define COMP_PP_CMP1            0x00000002  // Comparator 1 Present
N#define COMP_PP_CMP0            0x00000001  // Comparator 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_CTL register.
N//
N//*****************************************************************************
N#define CAN_CTL_TEST            0x00000080  // Test Mode Enable
N#define CAN_CTL_CCE             0x00000040  // Configuration Change Enable
N#define CAN_CTL_DAR             0x00000020  // Disable Automatic-Retransmission
N#define CAN_CTL_EIE             0x00000008  // Error Interrupt Enable
N#define CAN_CTL_SIE             0x00000004  // Status Interrupt Enable
N#define CAN_CTL_IE              0x00000002  // CAN Interrupt Enable
N#define CAN_CTL_INIT            0x00000001  // Initialization
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_STS register.
N//
N//*****************************************************************************
N#define CAN_STS_BOFF            0x00000080  // Bus-Off Status
N#define CAN_STS_EWARN           0x00000040  // Warning Status
N#define CAN_STS_EPASS           0x00000020  // Error Passive
N#define CAN_STS_RXOK            0x00000010  // Received a Message Successfully
N#define CAN_STS_TXOK            0x00000008  // Transmitted a Message
N                                            // Successfully
N#define CAN_STS_LEC_M           0x00000007  // Last Error Code
N#define CAN_STS_LEC_NONE        0x00000000  // No Error
N#define CAN_STS_LEC_STUFF       0x00000001  // Stuff Error
N#define CAN_STS_LEC_FORM        0x00000002  // Format Error
N#define CAN_STS_LEC_ACK         0x00000003  // ACK Error
N#define CAN_STS_LEC_BIT1        0x00000004  // Bit 1 Error
N#define CAN_STS_LEC_BIT0        0x00000005  // Bit 0 Error
N#define CAN_STS_LEC_CRC         0x00000006  // CRC Error
N#define CAN_STS_LEC_NOEVENT     0x00000007  // No Event
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_ERR register.
N//
N//*****************************************************************************
N#define CAN_ERR_RP              0x00008000  // Received Error Passive
N#define CAN_ERR_REC_M           0x00007F00  // Receive Error Counter
N#define CAN_ERR_TEC_M           0x000000FF  // Transmit Error Counter
N#define CAN_ERR_REC_S           8
N#define CAN_ERR_TEC_S           0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_BIT register.
N//
N//*****************************************************************************
N#define CAN_BIT_TSEG2_M         0x00007000  // Time Segment after Sample Point
N#define CAN_BIT_TSEG1_M         0x00000F00  // Time Segment Before Sample Point
N#define CAN_BIT_SJW_M           0x000000C0  // (Re)Synchronization Jump Width
N#define CAN_BIT_BRP_M           0x0000003F  // Baud Rate Prescaler
N#define CAN_BIT_TSEG2_S         12
N#define CAN_BIT_TSEG1_S         8
N#define CAN_BIT_SJW_S           6
N#define CAN_BIT_BRP_S           0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_INT register.
N//
N//*****************************************************************************
N#define CAN_INT_INTID_M         0x0000FFFF  // Interrupt Identifier
N#define CAN_INT_INTID_NONE      0x00000000  // No interrupt pending
N#define CAN_INT_INTID_STATUS    0x00008000  // Status Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_TST register.
N//
N//*****************************************************************************
N#define CAN_TST_RX              0x00000080  // Receive Observation
N#define CAN_TST_TX_M            0x00000060  // Transmit Control
N#define CAN_TST_TX_CANCTL       0x00000000  // CAN Module Control
N#define CAN_TST_TX_SAMPLE       0x00000020  // Sample Point
N#define CAN_TST_TX_DOMINANT     0x00000040  // Driven Low
N#define CAN_TST_TX_RECESSIVE    0x00000060  // Driven High
N#define CAN_TST_LBACK           0x00000010  // Loopback Mode
N#define CAN_TST_SILENT          0x00000008  // Silent Mode
N#define CAN_TST_BASIC           0x00000004  // Basic Mode
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_BRPE register.
N//
N//*****************************************************************************
N#define CAN_BRPE_BRPE_M         0x0000000F  // Baud Rate Prescaler Extension
N#define CAN_BRPE_BRPE_S         0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1CRQ register.
N//
N//*****************************************************************************
N#define CAN_IF1CRQ_BUSY         0x00008000  // Busy Flag
N#define CAN_IF1CRQ_MNUM_M       0x0000003F  // Message Number
N#define CAN_IF1CRQ_MNUM_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1CMSK register.
N//
N//*****************************************************************************
N#define CAN_IF1CMSK_WRNRD       0x00000080  // Write, Not Read
N#define CAN_IF1CMSK_MASK        0x00000040  // Access Mask Bits
N#define CAN_IF1CMSK_ARB         0x00000020  // Access Arbitration Bits
N#define CAN_IF1CMSK_CONTROL     0x00000010  // Access Control Bits
N#define CAN_IF1CMSK_CLRINTPND   0x00000008  // Clear Interrupt Pending Bit
N#define CAN_IF1CMSK_NEWDAT      0x00000004  // Access New Data
N#define CAN_IF1CMSK_TXRQST      0x00000004  // Access Transmission Request
N#define CAN_IF1CMSK_DATAA       0x00000002  // Access Data Byte 0 to 3
N#define CAN_IF1CMSK_DATAB       0x00000001  // Access Data Byte 4 to 7
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1MSK1 register.
N//
N//*****************************************************************************
N#define CAN_IF1MSK1_IDMSK_M     0x0000FFFF  // Identifier Mask
N#define CAN_IF1MSK1_IDMSK_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1MSK2 register.
N//
N//*****************************************************************************
N#define CAN_IF1MSK2_MXTD        0x00008000  // Mask Extended Identifier
N#define CAN_IF1MSK2_MDIR        0x00004000  // Mask Message Direction
N#define CAN_IF1MSK2_IDMSK_M     0x00001FFF  // Identifier Mask
N#define CAN_IF1MSK2_IDMSK_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1ARB1 register.
N//
N//*****************************************************************************
N#define CAN_IF1ARB1_ID_M        0x0000FFFF  // Message Identifier
N#define CAN_IF1ARB1_ID_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1ARB2 register.
N//
N//*****************************************************************************
N#define CAN_IF1ARB2_MSGVAL      0x00008000  // Message Valid
N#define CAN_IF1ARB2_XTD         0x00004000  // Extended Identifier
N#define CAN_IF1ARB2_DIR         0x00002000  // Message Direction
N#define CAN_IF1ARB2_ID_M        0x00001FFF  // Message Identifier
N#define CAN_IF1ARB2_ID_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1MCTL register.
N//
N//*****************************************************************************
N#define CAN_IF1MCTL_NEWDAT      0x00008000  // New Data
N#define CAN_IF1MCTL_MSGLST      0x00004000  // Message Lost
N#define CAN_IF1MCTL_INTPND      0x00002000  // Interrupt Pending
N#define CAN_IF1MCTL_UMASK       0x00001000  // Use Acceptance Mask
N#define CAN_IF1MCTL_TXIE        0x00000800  // Transmit Interrupt Enable
N#define CAN_IF1MCTL_RXIE        0x00000400  // Receive Interrupt Enable
N#define CAN_IF1MCTL_RMTEN       0x00000200  // Remote Enable
N#define CAN_IF1MCTL_TXRQST      0x00000100  // Transmit Request
N#define CAN_IF1MCTL_EOB         0x00000080  // End of Buffer
N#define CAN_IF1MCTL_DLC_M       0x0000000F  // Data Length Code
N#define CAN_IF1MCTL_DLC_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1DA1 register.
N//
N//*****************************************************************************
N#define CAN_IF1DA1_DATA_M       0x0000FFFF  // Data
N#define CAN_IF1DA1_DATA_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1DA2 register.
N//
N//*****************************************************************************
N#define CAN_IF1DA2_DATA_M       0x0000FFFF  // Data
N#define CAN_IF1DA2_DATA_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1DB1 register.
N//
N//*****************************************************************************
N#define CAN_IF1DB1_DATA_M       0x0000FFFF  // Data
N#define CAN_IF1DB1_DATA_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF1DB2 register.
N//
N//*****************************************************************************
N#define CAN_IF1DB2_DATA_M       0x0000FFFF  // Data
N#define CAN_IF1DB2_DATA_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2CRQ register.
N//
N//*****************************************************************************
N#define CAN_IF2CRQ_BUSY         0x00008000  // Busy Flag
N#define CAN_IF2CRQ_MNUM_M       0x0000003F  // Message Number
N#define CAN_IF2CRQ_MNUM_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2CMSK register.
N//
N//*****************************************************************************
N#define CAN_IF2CMSK_WRNRD       0x00000080  // Write, Not Read
N#define CAN_IF2CMSK_MASK        0x00000040  // Access Mask Bits
N#define CAN_IF2CMSK_ARB         0x00000020  // Access Arbitration Bits
N#define CAN_IF2CMSK_CONTROL     0x00000010  // Access Control Bits
N#define CAN_IF2CMSK_CLRINTPND   0x00000008  // Clear Interrupt Pending Bit
N#define CAN_IF2CMSK_NEWDAT      0x00000004  // Access New Data
N#define CAN_IF2CMSK_TXRQST      0x00000004  // Access Transmission Request
N#define CAN_IF2CMSK_DATAA       0x00000002  // Access Data Byte 0 to 3
N#define CAN_IF2CMSK_DATAB       0x00000001  // Access Data Byte 4 to 7
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2MSK1 register.
N//
N//*****************************************************************************
N#define CAN_IF2MSK1_IDMSK_M     0x0000FFFF  // Identifier Mask
N#define CAN_IF2MSK1_IDMSK_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2MSK2 register.
N//
N//*****************************************************************************
N#define CAN_IF2MSK2_MXTD        0x00008000  // Mask Extended Identifier
N#define CAN_IF2MSK2_MDIR        0x00004000  // Mask Message Direction
N#define CAN_IF2MSK2_IDMSK_M     0x00001FFF  // Identifier Mask
N#define CAN_IF2MSK2_IDMSK_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2ARB1 register.
N//
N//*****************************************************************************
N#define CAN_IF2ARB1_ID_M        0x0000FFFF  // Message Identifier
N#define CAN_IF2ARB1_ID_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2ARB2 register.
N//
N//*****************************************************************************
N#define CAN_IF2ARB2_MSGVAL      0x00008000  // Message Valid
N#define CAN_IF2ARB2_XTD         0x00004000  // Extended Identifier
N#define CAN_IF2ARB2_DIR         0x00002000  // Message Direction
N#define CAN_IF2ARB2_ID_M        0x00001FFF  // Message Identifier
N#define CAN_IF2ARB2_ID_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2MCTL register.
N//
N//*****************************************************************************
N#define CAN_IF2MCTL_NEWDAT      0x00008000  // New Data
N#define CAN_IF2MCTL_MSGLST      0x00004000  // Message Lost
N#define CAN_IF2MCTL_INTPND      0x00002000  // Interrupt Pending
N#define CAN_IF2MCTL_UMASK       0x00001000  // Use Acceptance Mask
N#define CAN_IF2MCTL_TXIE        0x00000800  // Transmit Interrupt Enable
N#define CAN_IF2MCTL_RXIE        0x00000400  // Receive Interrupt Enable
N#define CAN_IF2MCTL_RMTEN       0x00000200  // Remote Enable
N#define CAN_IF2MCTL_TXRQST      0x00000100  // Transmit Request
N#define CAN_IF2MCTL_EOB         0x00000080  // End of Buffer
N#define CAN_IF2MCTL_DLC_M       0x0000000F  // Data Length Code
N#define CAN_IF2MCTL_DLC_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2DA1 register.
N//
N//*****************************************************************************
N#define CAN_IF2DA1_DATA_M       0x0000FFFF  // Data
N#define CAN_IF2DA1_DATA_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2DA2 register.
N//
N//*****************************************************************************
N#define CAN_IF2DA2_DATA_M       0x0000FFFF  // Data
N#define CAN_IF2DA2_DATA_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2DB1 register.
N//
N//*****************************************************************************
N#define CAN_IF2DB1_DATA_M       0x0000FFFF  // Data
N#define CAN_IF2DB1_DATA_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_IF2DB2 register.
N//
N//*****************************************************************************
N#define CAN_IF2DB2_DATA_M       0x0000FFFF  // Data
N#define CAN_IF2DB2_DATA_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_TXRQ1 register.
N//
N//*****************************************************************************
N#define CAN_TXRQ1_TXRQST_M      0x0000FFFF  // Transmission Request Bits
N#define CAN_TXRQ1_TXRQST_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_TXRQ2 register.
N//
N//*****************************************************************************
N#define CAN_TXRQ2_TXRQST_M      0x0000FFFF  // Transmission Request Bits
N#define CAN_TXRQ2_TXRQST_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_NWDA1 register.
N//
N//*****************************************************************************
N#define CAN_NWDA1_NEWDAT_M      0x0000FFFF  // New Data Bits
N#define CAN_NWDA1_NEWDAT_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_NWDA2 register.
N//
N//*****************************************************************************
N#define CAN_NWDA2_NEWDAT_M      0x0000FFFF  // New Data Bits
N#define CAN_NWDA2_NEWDAT_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_MSG1INT register.
N//
N//*****************************************************************************
N#define CAN_MSG1INT_INTPND_M    0x0000FFFF  // Interrupt Pending Bits
N#define CAN_MSG1INT_INTPND_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_MSG2INT register.
N//
N//*****************************************************************************
N#define CAN_MSG2INT_INTPND_M    0x0000FFFF  // Interrupt Pending Bits
N#define CAN_MSG2INT_INTPND_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_MSG1VAL register.
N//
N//*****************************************************************************
N#define CAN_MSG1VAL_MSGVAL_M    0x0000FFFF  // Message Valid Bits
N#define CAN_MSG1VAL_MSGVAL_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the CAN_O_MSG2VAL register.
N//
N//*****************************************************************************
N#define CAN_MSG2VAL_MSGVAL_M    0x0000FFFF  // Message Valid Bits
N#define CAN_MSG2VAL_MSGVAL_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FADDR register.
N//
N//*****************************************************************************
N#define USB_FADDR_M             0x0000007F  // Function Address
N#define USB_FADDR_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_POWER register.
N//
N//*****************************************************************************
N#define USB_POWER_ISOUP         0x00000080  // Isochronous Update
N#define USB_POWER_SOFTCONN      0x00000040  // Soft Connect/Disconnect
N#define USB_POWER_RESET         0x00000008  // RESET Signaling
N#define USB_POWER_RESUME        0x00000004  // RESUME Signaling
N#define USB_POWER_SUSPEND       0x00000002  // SUSPEND Mode
N#define USB_POWER_PWRDNPHY      0x00000001  // Power Down PHY
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXIS register.
N//
N//*****************************************************************************
N#define USB_TXIS_EP7            0x00000080  // TX Endpoint 7 Interrupt
N#define USB_TXIS_EP6            0x00000040  // TX Endpoint 6 Interrupt
N#define USB_TXIS_EP5            0x00000020  // TX Endpoint 5 Interrupt
N#define USB_TXIS_EP4            0x00000010  // TX Endpoint 4 Interrupt
N#define USB_TXIS_EP3            0x00000008  // TX Endpoint 3 Interrupt
N#define USB_TXIS_EP2            0x00000004  // TX Endpoint 2 Interrupt
N#define USB_TXIS_EP1            0x00000002  // TX Endpoint 1 Interrupt
N#define USB_TXIS_EP0            0x00000001  // TX and RX Endpoint 0 Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXIS register.
N//
N//*****************************************************************************
N#define USB_RXIS_EP7            0x00000080  // RX Endpoint 7 Interrupt
N#define USB_RXIS_EP6            0x00000040  // RX Endpoint 6 Interrupt
N#define USB_RXIS_EP5            0x00000020  // RX Endpoint 5 Interrupt
N#define USB_RXIS_EP4            0x00000010  // RX Endpoint 4 Interrupt
N#define USB_RXIS_EP3            0x00000008  // RX Endpoint 3 Interrupt
N#define USB_RXIS_EP2            0x00000004  // RX Endpoint 2 Interrupt
N#define USB_RXIS_EP1            0x00000002  // RX Endpoint 1 Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXIE register.
N//
N//*****************************************************************************
N#define USB_TXIE_EP7            0x00000080  // TX Endpoint 7 Interrupt Enable
N#define USB_TXIE_EP6            0x00000040  // TX Endpoint 6 Interrupt Enable
N#define USB_TXIE_EP5            0x00000020  // TX Endpoint 5 Interrupt Enable
N#define USB_TXIE_EP4            0x00000010  // TX Endpoint 4 Interrupt Enable
N#define USB_TXIE_EP3            0x00000008  // TX Endpoint 3 Interrupt Enable
N#define USB_TXIE_EP2            0x00000004  // TX Endpoint 2 Interrupt Enable
N#define USB_TXIE_EP1            0x00000002  // TX Endpoint 1 Interrupt Enable
N#define USB_TXIE_EP0            0x00000001  // TX and RX Endpoint 0 Interrupt
N                                            // Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXIE register.
N//
N//*****************************************************************************
N#define USB_RXIE_EP7            0x00000080  // RX Endpoint 7 Interrupt Enable
N#define USB_RXIE_EP6            0x00000040  // RX Endpoint 6 Interrupt Enable
N#define USB_RXIE_EP5            0x00000020  // RX Endpoint 5 Interrupt Enable
N#define USB_RXIE_EP4            0x00000010  // RX Endpoint 4 Interrupt Enable
N#define USB_RXIE_EP3            0x00000008  // RX Endpoint 3 Interrupt Enable
N#define USB_RXIE_EP2            0x00000004  // RX Endpoint 2 Interrupt Enable
N#define USB_RXIE_EP1            0x00000002  // RX Endpoint 1 Interrupt Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_IS register.
N//
N//*****************************************************************************
N#define USB_IS_VBUSERR          0x00000080  // VBUS Error
N#define USB_IS_SESREQ           0x00000040  // SESSION REQUEST
N#define USB_IS_DISCON           0x00000020  // Session Disconnect
N#define USB_IS_CONN             0x00000010  // Session Connect
N#define USB_IS_SOF              0x00000008  // Start of Frame
N#define USB_IS_BABBLE           0x00000004  // Babble Detected
N#define USB_IS_RESET            0x00000004  // RESET Signaling Detected
N#define USB_IS_RESUME           0x00000002  // RESUME Signaling Detected
N#define USB_IS_SUSPEND          0x00000001  // SUSPEND Signaling Detected
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_IE register.
N//
N//*****************************************************************************
N#define USB_IE_VBUSERR          0x00000080  // Enable VBUS Error Interrupt
N#define USB_IE_SESREQ           0x00000040  // Enable Session Request
N#define USB_IE_DISCON           0x00000020  // Enable Disconnect Interrupt
N#define USB_IE_CONN             0x00000010  // Enable Connect Interrupt
N#define USB_IE_SOF              0x00000008  // Enable Start-of-Frame Interrupt
N#define USB_IE_BABBLE           0x00000004  // Enable Babble Interrupt
N#define USB_IE_RESET            0x00000004  // Enable RESET Interrupt
N#define USB_IE_RESUME           0x00000002  // Enable RESUME Interrupt
N#define USB_IE_SUSPND           0x00000001  // Enable SUSPEND Interrupt
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FRAME register.
N//
N//*****************************************************************************
N#define USB_FRAME_M             0x000007FF  // Frame Number
N#define USB_FRAME_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_EPIDX register.
N//
N//*****************************************************************************
N#define USB_EPIDX_EPIDX_M       0x0000000F  // Endpoint Index
N#define USB_EPIDX_EPIDX_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TEST register.
N//
N//*****************************************************************************
N#define USB_TEST_FORCEH         0x00000080  // Force Host Mode
N#define USB_TEST_FIFOACC        0x00000040  // FIFO Access
N#define USB_TEST_FORCEFS        0x00000020  // Force Full-Speed Mode
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FIFO0 register.
N//
N//*****************************************************************************
N#define USB_FIFO0_EPDATA_M      0xFFFFFFFF  // Endpoint Data
N#define USB_FIFO0_EPDATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FIFO1 register.
N//
N//*****************************************************************************
N#define USB_FIFO1_EPDATA_M      0xFFFFFFFF  // Endpoint Data
N#define USB_FIFO1_EPDATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FIFO2 register.
N//
N//*****************************************************************************
N#define USB_FIFO2_EPDATA_M      0xFFFFFFFF  // Endpoint Data
N#define USB_FIFO2_EPDATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FIFO3 register.
N//
N//*****************************************************************************
N#define USB_FIFO3_EPDATA_M      0xFFFFFFFF  // Endpoint Data
N#define USB_FIFO3_EPDATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FIFO4 register.
N//
N//*****************************************************************************
N#define USB_FIFO4_EPDATA_M      0xFFFFFFFF  // Endpoint Data
N#define USB_FIFO4_EPDATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FIFO5 register.
N//
N//*****************************************************************************
N#define USB_FIFO5_EPDATA_M      0xFFFFFFFF  // Endpoint Data
N#define USB_FIFO5_EPDATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FIFO6 register.
N//
N//*****************************************************************************
N#define USB_FIFO6_EPDATA_M      0xFFFFFFFF  // Endpoint Data
N#define USB_FIFO6_EPDATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FIFO7 register.
N//
N//*****************************************************************************
N#define USB_FIFO7_EPDATA_M      0xFFFFFFFF  // Endpoint Data
N#define USB_FIFO7_EPDATA_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_DEVCTL register.
N//
N//*****************************************************************************
N#define USB_DEVCTL_DEV          0x00000080  // Device Mode
N#define USB_DEVCTL_FSDEV        0x00000040  // Full-Speed Device Detected
N#define USB_DEVCTL_LSDEV        0x00000020  // Low-Speed Device Detected
N#define USB_DEVCTL_VBUS_M       0x00000018  // VBUS Level
N#define USB_DEVCTL_VBUS_NONE    0x00000000  // Below SessionEnd
N#define USB_DEVCTL_VBUS_SEND    0x00000008  // Above SessionEnd, below AValid
N#define USB_DEVCTL_VBUS_AVALID  0x00000010  // Above AValid, below VBUSValid
N#define USB_DEVCTL_VBUS_VALID   0x00000018  // Above VBUSValid
N#define USB_DEVCTL_HOST         0x00000004  // Host Mode
N#define USB_DEVCTL_HOSTREQ      0x00000002  // Host Request
N#define USB_DEVCTL_SESSION      0x00000001  // Session Start/End
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXFIFOSZ register.
N//
N//*****************************************************************************
N#define USB_TXFIFOSZ_DPB        0x00000010  // Double Packet Buffer Support
N#define USB_TXFIFOSZ_SIZE_M     0x0000000F  // Max Packet Size
N#define USB_TXFIFOSZ_SIZE_8     0x00000000  // 8
N#define USB_TXFIFOSZ_SIZE_16    0x00000001  // 16
N#define USB_TXFIFOSZ_SIZE_32    0x00000002  // 32
N#define USB_TXFIFOSZ_SIZE_64    0x00000003  // 64
N#define USB_TXFIFOSZ_SIZE_128   0x00000004  // 128
N#define USB_TXFIFOSZ_SIZE_256   0x00000005  // 256
N#define USB_TXFIFOSZ_SIZE_512   0x00000006  // 512
N#define USB_TXFIFOSZ_SIZE_1024  0x00000007  // 1024
N#define USB_TXFIFOSZ_SIZE_2048  0x00000008  // 2048
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXFIFOSZ register.
N//
N//*****************************************************************************
N#define USB_RXFIFOSZ_DPB        0x00000010  // Double Packet Buffer Support
N#define USB_RXFIFOSZ_SIZE_M     0x0000000F  // Max Packet Size
N#define USB_RXFIFOSZ_SIZE_8     0x00000000  // 8
N#define USB_RXFIFOSZ_SIZE_16    0x00000001  // 16
N#define USB_RXFIFOSZ_SIZE_32    0x00000002  // 32
N#define USB_RXFIFOSZ_SIZE_64    0x00000003  // 64
N#define USB_RXFIFOSZ_SIZE_128   0x00000004  // 128
N#define USB_RXFIFOSZ_SIZE_256   0x00000005  // 256
N#define USB_RXFIFOSZ_SIZE_512   0x00000006  // 512
N#define USB_RXFIFOSZ_SIZE_1024  0x00000007  // 1024
N#define USB_RXFIFOSZ_SIZE_2048  0x00000008  // 2048
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXFIFOADD
N// register.
N//
N//*****************************************************************************
N#define USB_TXFIFOADD_ADDR_M    0x000001FF  // Transmit/Receive Start Address
N#define USB_TXFIFOADD_ADDR_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXFIFOADD
N// register.
N//
N//*****************************************************************************
N#define USB_RXFIFOADD_ADDR_M    0x000001FF  // Transmit/Receive Start Address
N#define USB_RXFIFOADD_ADDR_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_CONTIM register.
N//
N//*****************************************************************************
N#define USB_CONTIM_WTCON_M      0x000000F0  // Connect Wait
N#define USB_CONTIM_WTID_M       0x0000000F  // Wait ID
N#define USB_CONTIM_WTCON_S      4
N#define USB_CONTIM_WTID_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_VPLEN register.
N//
N//*****************************************************************************
N#define USB_VPLEN_VPLEN_M       0x000000FF  // VBUS Pulse Length
N#define USB_VPLEN_VPLEN_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_FSEOF register.
N//
N//*****************************************************************************
N#define USB_FSEOF_FSEOFG_M      0x000000FF  // Full-Speed End-of-Frame Gap
N#define USB_FSEOF_FSEOFG_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_LSEOF register.
N//
N//*****************************************************************************
N#define USB_LSEOF_LSEOFG_M      0x000000FF  // Low-Speed End-of-Frame Gap
N#define USB_LSEOF_LSEOFG_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXFUNCADDR0
N// register.
N//
N//*****************************************************************************
N#define USB_TXFUNCADDR0_ADDR_M  0x0000007F  // Device Address
N#define USB_TXFUNCADDR0_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBADDR0
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBADDR0_ADDR_M   0x0000007F  // Hub Address
N#define USB_TXHUBADDR0_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBPORT0
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBPORT0_PORT_M   0x0000007F  // Hub Port
N#define USB_TXHUBPORT0_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXFUNCADDR1
N// register.
N//
N//*****************************************************************************
N#define USB_TXFUNCADDR1_ADDR_M  0x0000007F  // Device Address
N#define USB_TXFUNCADDR1_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBADDR1
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBADDR1_ADDR_M   0x0000007F  // Hub Address
N#define USB_TXHUBADDR1_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBPORT1
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBPORT1_PORT_M   0x0000007F  // Hub Port
N#define USB_TXHUBPORT1_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXFUNCADDR1
N// register.
N//
N//*****************************************************************************
N#define USB_RXFUNCADDR1_ADDR_M  0x0000007F  // Device Address
N#define USB_RXFUNCADDR1_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBADDR1
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBADDR1_ADDR_M   0x0000007F  // Hub Address
N#define USB_RXHUBADDR1_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBPORT1
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBPORT1_PORT_M   0x0000007F  // Hub Port
N#define USB_RXHUBPORT1_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXFUNCADDR2
N// register.
N//
N//*****************************************************************************
N#define USB_TXFUNCADDR2_ADDR_M  0x0000007F  // Device Address
N#define USB_TXFUNCADDR2_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBADDR2
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBADDR2_ADDR_M   0x0000007F  // Hub Address
N#define USB_TXHUBADDR2_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBPORT2
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBPORT2_PORT_M   0x0000007F  // Hub Port
N#define USB_TXHUBPORT2_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXFUNCADDR2
N// register.
N//
N//*****************************************************************************
N#define USB_RXFUNCADDR2_ADDR_M  0x0000007F  // Device Address
N#define USB_RXFUNCADDR2_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBADDR2
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBADDR2_ADDR_M   0x0000007F  // Hub Address
N#define USB_RXHUBADDR2_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBPORT2
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBPORT2_PORT_M   0x0000007F  // Hub Port
N#define USB_RXHUBPORT2_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXFUNCADDR3
N// register.
N//
N//*****************************************************************************
N#define USB_TXFUNCADDR3_ADDR_M  0x0000007F  // Device Address
N#define USB_TXFUNCADDR3_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBADDR3
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBADDR3_ADDR_M   0x0000007F  // Hub Address
N#define USB_TXHUBADDR3_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBPORT3
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBPORT3_PORT_M   0x0000007F  // Hub Port
N#define USB_TXHUBPORT3_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXFUNCADDR3
N// register.
N//
N//*****************************************************************************
N#define USB_RXFUNCADDR3_ADDR_M  0x0000007F  // Device Address
N#define USB_RXFUNCADDR3_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBADDR3
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBADDR3_ADDR_M   0x0000007F  // Hub Address
N#define USB_RXHUBADDR3_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBPORT3
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBPORT3_PORT_M   0x0000007F  // Hub Port
N#define USB_RXHUBPORT3_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXFUNCADDR4
N// register.
N//
N//*****************************************************************************
N#define USB_TXFUNCADDR4_ADDR_M  0x0000007F  // Device Address
N#define USB_TXFUNCADDR4_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBADDR4
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBADDR4_ADDR_M   0x0000007F  // Hub Address
N#define USB_TXHUBADDR4_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBPORT4
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBPORT4_PORT_M   0x0000007F  // Hub Port
N#define USB_TXHUBPORT4_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXFUNCADDR4
N// register.
N//
N//*****************************************************************************
N#define USB_RXFUNCADDR4_ADDR_M  0x0000007F  // Device Address
N#define USB_RXFUNCADDR4_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBADDR4
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBADDR4_ADDR_M   0x0000007F  // Hub Address
N#define USB_RXHUBADDR4_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBPORT4
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBPORT4_PORT_M   0x0000007F  // Hub Port
N#define USB_RXHUBPORT4_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXFUNCADDR5
N// register.
N//
N//*****************************************************************************
N#define USB_TXFUNCADDR5_ADDR_M  0x0000007F  // Device Address
N#define USB_TXFUNCADDR5_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBADDR5
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBADDR5_ADDR_M   0x0000007F  // Hub Address
N#define USB_TXHUBADDR5_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBPORT5
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBPORT5_PORT_M   0x0000007F  // Hub Port
N#define USB_TXHUBPORT5_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXFUNCADDR5
N// register.
N//
N//*****************************************************************************
N#define USB_RXFUNCADDR5_ADDR_M  0x0000007F  // Device Address
N#define USB_RXFUNCADDR5_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBADDR5
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBADDR5_ADDR_M   0x0000007F  // Hub Address
N#define USB_RXHUBADDR5_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBPORT5
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBPORT5_PORT_M   0x0000007F  // Hub Port
N#define USB_RXHUBPORT5_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXFUNCADDR6
N// register.
N//
N//*****************************************************************************
N#define USB_TXFUNCADDR6_ADDR_M  0x0000007F  // Device Address
N#define USB_TXFUNCADDR6_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBADDR6
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBADDR6_ADDR_M   0x0000007F  // Hub Address
N#define USB_TXHUBADDR6_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBPORT6
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBPORT6_PORT_M   0x0000007F  // Hub Port
N#define USB_TXHUBPORT6_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXFUNCADDR6
N// register.
N//
N//*****************************************************************************
N#define USB_RXFUNCADDR6_ADDR_M  0x0000007F  // Device Address
N#define USB_RXFUNCADDR6_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBADDR6
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBADDR6_ADDR_M   0x0000007F  // Hub Address
N#define USB_RXHUBADDR6_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBPORT6
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBPORT6_PORT_M   0x0000007F  // Hub Port
N#define USB_RXHUBPORT6_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXFUNCADDR7
N// register.
N//
N//*****************************************************************************
N#define USB_TXFUNCADDR7_ADDR_M  0x0000007F  // Device Address
N#define USB_TXFUNCADDR7_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBADDR7
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBADDR7_ADDR_M   0x0000007F  // Hub Address
N#define USB_TXHUBADDR7_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXHUBPORT7
N// register.
N//
N//*****************************************************************************
N#define USB_TXHUBPORT7_PORT_M   0x0000007F  // Hub Port
N#define USB_TXHUBPORT7_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXFUNCADDR7
N// register.
N//
N//*****************************************************************************
N#define USB_RXFUNCADDR7_ADDR_M  0x0000007F  // Device Address
N#define USB_RXFUNCADDR7_ADDR_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBADDR7
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBADDR7_ADDR_M   0x0000007F  // Hub Address
N#define USB_RXHUBADDR7_ADDR_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXHUBPORT7
N// register.
N//
N//*****************************************************************************
N#define USB_RXHUBPORT7_PORT_M   0x0000007F  // Hub Port
N#define USB_RXHUBPORT7_PORT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_CSRL0 register.
N//
N//*****************************************************************************
N#define USB_CSRL0_NAKTO         0x00000080  // NAK Timeout
N#define USB_CSRL0_SETENDC       0x00000080  // Setup End Clear
N#define USB_CSRL0_STATUS        0x00000040  // STATUS Packet
N#define USB_CSRL0_RXRDYC        0x00000040  // RXRDY Clear
N#define USB_CSRL0_REQPKT        0x00000020  // Request Packet
N#define USB_CSRL0_STALL         0x00000020  // Send Stall
N#define USB_CSRL0_SETEND        0x00000010  // Setup End
N#define USB_CSRL0_ERROR         0x00000010  // Error
N#define USB_CSRL0_DATAEND       0x00000008  // Data End
N#define USB_CSRL0_SETUP         0x00000008  // Setup Packet
N#define USB_CSRL0_STALLED       0x00000004  // Endpoint Stalled
N#define USB_CSRL0_TXRDY         0x00000002  // Transmit Packet Ready
N#define USB_CSRL0_RXRDY         0x00000001  // Receive Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_CSRH0 register.
N//
N//*****************************************************************************
N#define USB_CSRH0_DTWE          0x00000004  // Data Toggle Write Enable
N#define USB_CSRH0_DT            0x00000002  // Data Toggle
N#define USB_CSRH0_FLUSH         0x00000001  // Flush FIFO
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_COUNT0 register.
N//
N//*****************************************************************************
N#define USB_COUNT0_COUNT_M      0x0000007F  // FIFO Count
N#define USB_COUNT0_COUNT_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TYPE0 register.
N//
N//*****************************************************************************
N#define USB_TYPE0_SPEED_M       0x000000C0  // Operating Speed
N#define USB_TYPE0_SPEED_FULL    0x00000080  // Full
N#define USB_TYPE0_SPEED_LOW     0x000000C0  // Low
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_NAKLMT register.
N//
N//*****************************************************************************
N#define USB_NAKLMT_NAKLMT_M     0x0000001F  // EP0 NAK Limit
N#define USB_NAKLMT_NAKLMT_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXMAXP1 register.
N//
N//*****************************************************************************
N#define USB_TXMAXP1_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_TXMAXP1_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRL1 register.
N//
N//*****************************************************************************
N#define USB_TXCSRL1_NAKTO       0x00000080  // NAK Timeout
N#define USB_TXCSRL1_CLRDT       0x00000040  // Clear Data Toggle
N#define USB_TXCSRL1_STALLED     0x00000020  // Endpoint Stalled
N#define USB_TXCSRL1_STALL       0x00000010  // Send STALL
N#define USB_TXCSRL1_SETUP       0x00000010  // Setup Packet
N#define USB_TXCSRL1_FLUSH       0x00000008  // Flush FIFO
N#define USB_TXCSRL1_ERROR       0x00000004  // Error
N#define USB_TXCSRL1_UNDRN       0x00000004  // Underrun
N#define USB_TXCSRL1_FIFONE      0x00000002  // FIFO Not Empty
N#define USB_TXCSRL1_TXRDY       0x00000001  // Transmit Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRH1 register.
N//
N//*****************************************************************************
N#define USB_TXCSRH1_AUTOSET     0x00000080  // Auto Set
N#define USB_TXCSRH1_ISO         0x00000040  // Isochronous Transfers
N#define USB_TXCSRH1_MODE        0x00000020  // Mode
N#define USB_TXCSRH1_DMAEN       0x00000010  // DMA Request Enable
N#define USB_TXCSRH1_FDT         0x00000008  // Force Data Toggle
N#define USB_TXCSRH1_DMAMOD      0x00000004  // DMA Request Mode
N#define USB_TXCSRH1_DTWE        0x00000002  // Data Toggle Write Enable
N#define USB_TXCSRH1_DT          0x00000001  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXMAXP1 register.
N//
N//*****************************************************************************
N#define USB_RXMAXP1_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_RXMAXP1_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRL1 register.
N//
N//*****************************************************************************
N#define USB_RXCSRL1_CLRDT       0x00000080  // Clear Data Toggle
N#define USB_RXCSRL1_STALLED     0x00000040  // Endpoint Stalled
N#define USB_RXCSRL1_STALL       0x00000020  // Send STALL
N#define USB_RXCSRL1_REQPKT      0x00000020  // Request Packet
N#define USB_RXCSRL1_FLUSH       0x00000010  // Flush FIFO
N#define USB_RXCSRL1_DATAERR     0x00000008  // Data Error
N#define USB_RXCSRL1_NAKTO       0x00000008  // NAK Timeout
N#define USB_RXCSRL1_OVER        0x00000004  // Overrun
N#define USB_RXCSRL1_ERROR       0x00000004  // Error
N#define USB_RXCSRL1_FULL        0x00000002  // FIFO Full
N#define USB_RXCSRL1_RXRDY       0x00000001  // Receive Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRH1 register.
N//
N//*****************************************************************************
N#define USB_RXCSRH1_AUTOCL      0x00000080  // Auto Clear
N#define USB_RXCSRH1_AUTORQ      0x00000040  // Auto Request
N#define USB_RXCSRH1_ISO         0x00000040  // Isochronous Transfers
N#define USB_RXCSRH1_DMAEN       0x00000020  // DMA Request Enable
N#define USB_RXCSRH1_DISNYET     0x00000010  // Disable NYET
N#define USB_RXCSRH1_PIDERR      0x00000010  // PID Error
N#define USB_RXCSRH1_DMAMOD      0x00000008  // DMA Request Mode
N#define USB_RXCSRH1_DTWE        0x00000004  // Data Toggle Write Enable
N#define USB_RXCSRH1_DT          0x00000002  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCOUNT1 register.
N//
N//*****************************************************************************
N#define USB_RXCOUNT1_COUNT_M    0x00001FFF  // Receive Packet Count
N#define USB_RXCOUNT1_COUNT_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXTYPE1 register.
N//
N//*****************************************************************************
N#define USB_TXTYPE1_SPEED_M     0x000000C0  // Operating Speed
N#define USB_TXTYPE1_SPEED_DFLT  0x00000000  // Default
N#define USB_TXTYPE1_SPEED_FULL  0x00000080  // Full
N#define USB_TXTYPE1_SPEED_LOW   0x000000C0  // Low
N#define USB_TXTYPE1_PROTO_M     0x00000030  // Protocol
N#define USB_TXTYPE1_PROTO_CTRL  0x00000000  // Control
N#define USB_TXTYPE1_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_TXTYPE1_PROTO_BULK  0x00000020  // Bulk
N#define USB_TXTYPE1_PROTO_INT   0x00000030  // Interrupt
N#define USB_TXTYPE1_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_TXTYPE1_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXINTERVAL1
N// register.
N//
N//*****************************************************************************
N#define USB_TXINTERVAL1_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_TXINTERVAL1_NAKLMT_M                                                                              0x000000FF  
N#define USB_TXINTERVAL1_TXPOLL_M                                              \
N                                0x000000FF  // TX Polling
X#define USB_TXINTERVAL1_TXPOLL_M                                                                              0x000000FF  
N#define USB_TXINTERVAL1_TXPOLL_S                                              \
N                                0
X#define USB_TXINTERVAL1_TXPOLL_S                                                                              0
N#define USB_TXINTERVAL1_NAKLMT_S                                              \
N                                0
X#define USB_TXINTERVAL1_NAKLMT_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXTYPE1 register.
N//
N//*****************************************************************************
N#define USB_RXTYPE1_SPEED_M     0x000000C0  // Operating Speed
N#define USB_RXTYPE1_SPEED_DFLT  0x00000000  // Default
N#define USB_RXTYPE1_SPEED_FULL  0x00000080  // Full
N#define USB_RXTYPE1_SPEED_LOW   0x000000C0  // Low
N#define USB_RXTYPE1_PROTO_M     0x00000030  // Protocol
N#define USB_RXTYPE1_PROTO_CTRL  0x00000000  // Control
N#define USB_RXTYPE1_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_RXTYPE1_PROTO_BULK  0x00000020  // Bulk
N#define USB_RXTYPE1_PROTO_INT   0x00000030  // Interrupt
N#define USB_RXTYPE1_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_RXTYPE1_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXINTERVAL1
N// register.
N//
N//*****************************************************************************
N#define USB_RXINTERVAL1_TXPOLL_M                                              \
N                                0x000000FF  // RX Polling
X#define USB_RXINTERVAL1_TXPOLL_M                                                                              0x000000FF  
N#define USB_RXINTERVAL1_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_RXINTERVAL1_NAKLMT_M                                                                              0x000000FF  
N#define USB_RXINTERVAL1_TXPOLL_S                                              \
N                                0
X#define USB_RXINTERVAL1_TXPOLL_S                                                                              0
N#define USB_RXINTERVAL1_NAKLMT_S                                              \
N                                0
X#define USB_RXINTERVAL1_NAKLMT_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXMAXP2 register.
N//
N//*****************************************************************************
N#define USB_TXMAXP2_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_TXMAXP2_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRL2 register.
N//
N//*****************************************************************************
N#define USB_TXCSRL2_NAKTO       0x00000080  // NAK Timeout
N#define USB_TXCSRL2_CLRDT       0x00000040  // Clear Data Toggle
N#define USB_TXCSRL2_STALLED     0x00000020  // Endpoint Stalled
N#define USB_TXCSRL2_SETUP       0x00000010  // Setup Packet
N#define USB_TXCSRL2_STALL       0x00000010  // Send STALL
N#define USB_TXCSRL2_FLUSH       0x00000008  // Flush FIFO
N#define USB_TXCSRL2_ERROR       0x00000004  // Error
N#define USB_TXCSRL2_UNDRN       0x00000004  // Underrun
N#define USB_TXCSRL2_FIFONE      0x00000002  // FIFO Not Empty
N#define USB_TXCSRL2_TXRDY       0x00000001  // Transmit Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRH2 register.
N//
N//*****************************************************************************
N#define USB_TXCSRH2_AUTOSET     0x00000080  // Auto Set
N#define USB_TXCSRH2_ISO         0x00000040  // Isochronous Transfers
N#define USB_TXCSRH2_MODE        0x00000020  // Mode
N#define USB_TXCSRH2_DMAEN       0x00000010  // DMA Request Enable
N#define USB_TXCSRH2_FDT         0x00000008  // Force Data Toggle
N#define USB_TXCSRH2_DMAMOD      0x00000004  // DMA Request Mode
N#define USB_TXCSRH2_DTWE        0x00000002  // Data Toggle Write Enable
N#define USB_TXCSRH2_DT          0x00000001  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXMAXP2 register.
N//
N//*****************************************************************************
N#define USB_RXMAXP2_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_RXMAXP2_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRL2 register.
N//
N//*****************************************************************************
N#define USB_RXCSRL2_CLRDT       0x00000080  // Clear Data Toggle
N#define USB_RXCSRL2_STALLED     0x00000040  // Endpoint Stalled
N#define USB_RXCSRL2_REQPKT      0x00000020  // Request Packet
N#define USB_RXCSRL2_STALL       0x00000020  // Send STALL
N#define USB_RXCSRL2_FLUSH       0x00000010  // Flush FIFO
N#define USB_RXCSRL2_DATAERR     0x00000008  // Data Error
N#define USB_RXCSRL2_NAKTO       0x00000008  // NAK Timeout
N#define USB_RXCSRL2_ERROR       0x00000004  // Error
N#define USB_RXCSRL2_OVER        0x00000004  // Overrun
N#define USB_RXCSRL2_FULL        0x00000002  // FIFO Full
N#define USB_RXCSRL2_RXRDY       0x00000001  // Receive Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRH2 register.
N//
N//*****************************************************************************
N#define USB_RXCSRH2_AUTOCL      0x00000080  // Auto Clear
N#define USB_RXCSRH2_AUTORQ      0x00000040  // Auto Request
N#define USB_RXCSRH2_ISO         0x00000040  // Isochronous Transfers
N#define USB_RXCSRH2_DMAEN       0x00000020  // DMA Request Enable
N#define USB_RXCSRH2_DISNYET     0x00000010  // Disable NYET
N#define USB_RXCSRH2_PIDERR      0x00000010  // PID Error
N#define USB_RXCSRH2_DMAMOD      0x00000008  // DMA Request Mode
N#define USB_RXCSRH2_DTWE        0x00000004  // Data Toggle Write Enable
N#define USB_RXCSRH2_DT          0x00000002  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCOUNT2 register.
N//
N//*****************************************************************************
N#define USB_RXCOUNT2_COUNT_M    0x00001FFF  // Receive Packet Count
N#define USB_RXCOUNT2_COUNT_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXTYPE2 register.
N//
N//*****************************************************************************
N#define USB_TXTYPE2_SPEED_M     0x000000C0  // Operating Speed
N#define USB_TXTYPE2_SPEED_DFLT  0x00000000  // Default
N#define USB_TXTYPE2_SPEED_FULL  0x00000080  // Full
N#define USB_TXTYPE2_SPEED_LOW   0x000000C0  // Low
N#define USB_TXTYPE2_PROTO_M     0x00000030  // Protocol
N#define USB_TXTYPE2_PROTO_CTRL  0x00000000  // Control
N#define USB_TXTYPE2_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_TXTYPE2_PROTO_BULK  0x00000020  // Bulk
N#define USB_TXTYPE2_PROTO_INT   0x00000030  // Interrupt
N#define USB_TXTYPE2_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_TXTYPE2_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXINTERVAL2
N// register.
N//
N//*****************************************************************************
N#define USB_TXINTERVAL2_TXPOLL_M                                              \
N                                0x000000FF  // TX Polling
X#define USB_TXINTERVAL2_TXPOLL_M                                                                              0x000000FF  
N#define USB_TXINTERVAL2_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_TXINTERVAL2_NAKLMT_M                                                                              0x000000FF  
N#define USB_TXINTERVAL2_NAKLMT_S                                              \
N                                0
X#define USB_TXINTERVAL2_NAKLMT_S                                                                              0
N#define USB_TXINTERVAL2_TXPOLL_S                                              \
N                                0
X#define USB_TXINTERVAL2_TXPOLL_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXTYPE2 register.
N//
N//*****************************************************************************
N#define USB_RXTYPE2_SPEED_M     0x000000C0  // Operating Speed
N#define USB_RXTYPE2_SPEED_DFLT  0x00000000  // Default
N#define USB_RXTYPE2_SPEED_FULL  0x00000080  // Full
N#define USB_RXTYPE2_SPEED_LOW   0x000000C0  // Low
N#define USB_RXTYPE2_PROTO_M     0x00000030  // Protocol
N#define USB_RXTYPE2_PROTO_CTRL  0x00000000  // Control
N#define USB_RXTYPE2_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_RXTYPE2_PROTO_BULK  0x00000020  // Bulk
N#define USB_RXTYPE2_PROTO_INT   0x00000030  // Interrupt
N#define USB_RXTYPE2_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_RXTYPE2_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXINTERVAL2
N// register.
N//
N//*****************************************************************************
N#define USB_RXINTERVAL2_TXPOLL_M                                              \
N                                0x000000FF  // RX Polling
X#define USB_RXINTERVAL2_TXPOLL_M                                                                              0x000000FF  
N#define USB_RXINTERVAL2_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_RXINTERVAL2_NAKLMT_M                                                                              0x000000FF  
N#define USB_RXINTERVAL2_TXPOLL_S                                              \
N                                0
X#define USB_RXINTERVAL2_TXPOLL_S                                                                              0
N#define USB_RXINTERVAL2_NAKLMT_S                                              \
N                                0
X#define USB_RXINTERVAL2_NAKLMT_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXMAXP3 register.
N//
N//*****************************************************************************
N#define USB_TXMAXP3_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_TXMAXP3_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRL3 register.
N//
N//*****************************************************************************
N#define USB_TXCSRL3_NAKTO       0x00000080  // NAK Timeout
N#define USB_TXCSRL3_CLRDT       0x00000040  // Clear Data Toggle
N#define USB_TXCSRL3_STALLED     0x00000020  // Endpoint Stalled
N#define USB_TXCSRL3_SETUP       0x00000010  // Setup Packet
N#define USB_TXCSRL3_STALL       0x00000010  // Send STALL
N#define USB_TXCSRL3_FLUSH       0x00000008  // Flush FIFO
N#define USB_TXCSRL3_ERROR       0x00000004  // Error
N#define USB_TXCSRL3_UNDRN       0x00000004  // Underrun
N#define USB_TXCSRL3_FIFONE      0x00000002  // FIFO Not Empty
N#define USB_TXCSRL3_TXRDY       0x00000001  // Transmit Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRH3 register.
N//
N//*****************************************************************************
N#define USB_TXCSRH3_AUTOSET     0x00000080  // Auto Set
N#define USB_TXCSRH3_ISO         0x00000040  // Isochronous Transfers
N#define USB_TXCSRH3_MODE        0x00000020  // Mode
N#define USB_TXCSRH3_DMAEN       0x00000010  // DMA Request Enable
N#define USB_TXCSRH3_FDT         0x00000008  // Force Data Toggle
N#define USB_TXCSRH3_DMAMOD      0x00000004  // DMA Request Mode
N#define USB_TXCSRH3_DTWE        0x00000002  // Data Toggle Write Enable
N#define USB_TXCSRH3_DT          0x00000001  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXMAXP3 register.
N//
N//*****************************************************************************
N#define USB_RXMAXP3_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_RXMAXP3_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRL3 register.
N//
N//*****************************************************************************
N#define USB_RXCSRL3_CLRDT       0x00000080  // Clear Data Toggle
N#define USB_RXCSRL3_STALLED     0x00000040  // Endpoint Stalled
N#define USB_RXCSRL3_STALL       0x00000020  // Send STALL
N#define USB_RXCSRL3_REQPKT      0x00000020  // Request Packet
N#define USB_RXCSRL3_FLUSH       0x00000010  // Flush FIFO
N#define USB_RXCSRL3_DATAERR     0x00000008  // Data Error
N#define USB_RXCSRL3_NAKTO       0x00000008  // NAK Timeout
N#define USB_RXCSRL3_ERROR       0x00000004  // Error
N#define USB_RXCSRL3_OVER        0x00000004  // Overrun
N#define USB_RXCSRL3_FULL        0x00000002  // FIFO Full
N#define USB_RXCSRL3_RXRDY       0x00000001  // Receive Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRH3 register.
N//
N//*****************************************************************************
N#define USB_RXCSRH3_AUTOCL      0x00000080  // Auto Clear
N#define USB_RXCSRH3_AUTORQ      0x00000040  // Auto Request
N#define USB_RXCSRH3_ISO         0x00000040  // Isochronous Transfers
N#define USB_RXCSRH3_DMAEN       0x00000020  // DMA Request Enable
N#define USB_RXCSRH3_DISNYET     0x00000010  // Disable NYET
N#define USB_RXCSRH3_PIDERR      0x00000010  // PID Error
N#define USB_RXCSRH3_DMAMOD      0x00000008  // DMA Request Mode
N#define USB_RXCSRH3_DTWE        0x00000004  // Data Toggle Write Enable
N#define USB_RXCSRH3_DT          0x00000002  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCOUNT3 register.
N//
N//*****************************************************************************
N#define USB_RXCOUNT3_COUNT_M    0x00001FFF  // Receive Packet Count
N#define USB_RXCOUNT3_COUNT_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXTYPE3 register.
N//
N//*****************************************************************************
N#define USB_TXTYPE3_SPEED_M     0x000000C0  // Operating Speed
N#define USB_TXTYPE3_SPEED_DFLT  0x00000000  // Default
N#define USB_TXTYPE3_SPEED_FULL  0x00000080  // Full
N#define USB_TXTYPE3_SPEED_LOW   0x000000C0  // Low
N#define USB_TXTYPE3_PROTO_M     0x00000030  // Protocol
N#define USB_TXTYPE3_PROTO_CTRL  0x00000000  // Control
N#define USB_TXTYPE3_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_TXTYPE3_PROTO_BULK  0x00000020  // Bulk
N#define USB_TXTYPE3_PROTO_INT   0x00000030  // Interrupt
N#define USB_TXTYPE3_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_TXTYPE3_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXINTERVAL3
N// register.
N//
N//*****************************************************************************
N#define USB_TXINTERVAL3_TXPOLL_M                                              \
N                                0x000000FF  // TX Polling
X#define USB_TXINTERVAL3_TXPOLL_M                                                                              0x000000FF  
N#define USB_TXINTERVAL3_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_TXINTERVAL3_NAKLMT_M                                                                              0x000000FF  
N#define USB_TXINTERVAL3_TXPOLL_S                                              \
N                                0
X#define USB_TXINTERVAL3_TXPOLL_S                                                                              0
N#define USB_TXINTERVAL3_NAKLMT_S                                              \
N                                0
X#define USB_TXINTERVAL3_NAKLMT_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXTYPE3 register.
N//
N//*****************************************************************************
N#define USB_RXTYPE3_SPEED_M     0x000000C0  // Operating Speed
N#define USB_RXTYPE3_SPEED_DFLT  0x00000000  // Default
N#define USB_RXTYPE3_SPEED_FULL  0x00000080  // Full
N#define USB_RXTYPE3_SPEED_LOW   0x000000C0  // Low
N#define USB_RXTYPE3_PROTO_M     0x00000030  // Protocol
N#define USB_RXTYPE3_PROTO_CTRL  0x00000000  // Control
N#define USB_RXTYPE3_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_RXTYPE3_PROTO_BULK  0x00000020  // Bulk
N#define USB_RXTYPE3_PROTO_INT   0x00000030  // Interrupt
N#define USB_RXTYPE3_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_RXTYPE3_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXINTERVAL3
N// register.
N//
N//*****************************************************************************
N#define USB_RXINTERVAL3_TXPOLL_M                                              \
N                                0x000000FF  // RX Polling
X#define USB_RXINTERVAL3_TXPOLL_M                                                                              0x000000FF  
N#define USB_RXINTERVAL3_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_RXINTERVAL3_NAKLMT_M                                                                              0x000000FF  
N#define USB_RXINTERVAL3_TXPOLL_S                                              \
N                                0
X#define USB_RXINTERVAL3_TXPOLL_S                                                                              0
N#define USB_RXINTERVAL3_NAKLMT_S                                              \
N                                0
X#define USB_RXINTERVAL3_NAKLMT_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXMAXP4 register.
N//
N//*****************************************************************************
N#define USB_TXMAXP4_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_TXMAXP4_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRL4 register.
N//
N//*****************************************************************************
N#define USB_TXCSRL4_NAKTO       0x00000080  // NAK Timeout
N#define USB_TXCSRL4_CLRDT       0x00000040  // Clear Data Toggle
N#define USB_TXCSRL4_STALLED     0x00000020  // Endpoint Stalled
N#define USB_TXCSRL4_SETUP       0x00000010  // Setup Packet
N#define USB_TXCSRL4_STALL       0x00000010  // Send STALL
N#define USB_TXCSRL4_FLUSH       0x00000008  // Flush FIFO
N#define USB_TXCSRL4_ERROR       0x00000004  // Error
N#define USB_TXCSRL4_UNDRN       0x00000004  // Underrun
N#define USB_TXCSRL4_FIFONE      0x00000002  // FIFO Not Empty
N#define USB_TXCSRL4_TXRDY       0x00000001  // Transmit Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRH4 register.
N//
N//*****************************************************************************
N#define USB_TXCSRH4_AUTOSET     0x00000080  // Auto Set
N#define USB_TXCSRH4_ISO         0x00000040  // Isochronous Transfers
N#define USB_TXCSRH4_MODE        0x00000020  // Mode
N#define USB_TXCSRH4_DMAEN       0x00000010  // DMA Request Enable
N#define USB_TXCSRH4_FDT         0x00000008  // Force Data Toggle
N#define USB_TXCSRH4_DMAMOD      0x00000004  // DMA Request Mode
N#define USB_TXCSRH4_DTWE        0x00000002  // Data Toggle Write Enable
N#define USB_TXCSRH4_DT          0x00000001  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXMAXP4 register.
N//
N//*****************************************************************************
N#define USB_RXMAXP4_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_RXMAXP4_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRL4 register.
N//
N//*****************************************************************************
N#define USB_RXCSRL4_CLRDT       0x00000080  // Clear Data Toggle
N#define USB_RXCSRL4_STALLED     0x00000040  // Endpoint Stalled
N#define USB_RXCSRL4_STALL       0x00000020  // Send STALL
N#define USB_RXCSRL4_REQPKT      0x00000020  // Request Packet
N#define USB_RXCSRL4_FLUSH       0x00000010  // Flush FIFO
N#define USB_RXCSRL4_NAKTO       0x00000008  // NAK Timeout
N#define USB_RXCSRL4_DATAERR     0x00000008  // Data Error
N#define USB_RXCSRL4_OVER        0x00000004  // Overrun
N#define USB_RXCSRL4_ERROR       0x00000004  // Error
N#define USB_RXCSRL4_FULL        0x00000002  // FIFO Full
N#define USB_RXCSRL4_RXRDY       0x00000001  // Receive Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRH4 register.
N//
N//*****************************************************************************
N#define USB_RXCSRH4_AUTOCL      0x00000080  // Auto Clear
N#define USB_RXCSRH4_AUTORQ      0x00000040  // Auto Request
N#define USB_RXCSRH4_ISO         0x00000040  // Isochronous Transfers
N#define USB_RXCSRH4_DMAEN       0x00000020  // DMA Request Enable
N#define USB_RXCSRH4_DISNYET     0x00000010  // Disable NYET
N#define USB_RXCSRH4_PIDERR      0x00000010  // PID Error
N#define USB_RXCSRH4_DMAMOD      0x00000008  // DMA Request Mode
N#define USB_RXCSRH4_DTWE        0x00000004  // Data Toggle Write Enable
N#define USB_RXCSRH4_DT          0x00000002  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCOUNT4 register.
N//
N//*****************************************************************************
N#define USB_RXCOUNT4_COUNT_M    0x00001FFF  // Receive Packet Count
N#define USB_RXCOUNT4_COUNT_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXTYPE4 register.
N//
N//*****************************************************************************
N#define USB_TXTYPE4_SPEED_M     0x000000C0  // Operating Speed
N#define USB_TXTYPE4_SPEED_DFLT  0x00000000  // Default
N#define USB_TXTYPE4_SPEED_FULL  0x00000080  // Full
N#define USB_TXTYPE4_SPEED_LOW   0x000000C0  // Low
N#define USB_TXTYPE4_PROTO_M     0x00000030  // Protocol
N#define USB_TXTYPE4_PROTO_CTRL  0x00000000  // Control
N#define USB_TXTYPE4_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_TXTYPE4_PROTO_BULK  0x00000020  // Bulk
N#define USB_TXTYPE4_PROTO_INT   0x00000030  // Interrupt
N#define USB_TXTYPE4_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_TXTYPE4_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXINTERVAL4
N// register.
N//
N//*****************************************************************************
N#define USB_TXINTERVAL4_TXPOLL_M                                              \
N                                0x000000FF  // TX Polling
X#define USB_TXINTERVAL4_TXPOLL_M                                                                              0x000000FF  
N#define USB_TXINTERVAL4_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_TXINTERVAL4_NAKLMT_M                                                                              0x000000FF  
N#define USB_TXINTERVAL4_NAKLMT_S                                              \
N                                0
X#define USB_TXINTERVAL4_NAKLMT_S                                                                              0
N#define USB_TXINTERVAL4_TXPOLL_S                                              \
N                                0
X#define USB_TXINTERVAL4_TXPOLL_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXTYPE4 register.
N//
N//*****************************************************************************
N#define USB_RXTYPE4_SPEED_M     0x000000C0  // Operating Speed
N#define USB_RXTYPE4_SPEED_DFLT  0x00000000  // Default
N#define USB_RXTYPE4_SPEED_FULL  0x00000080  // Full
N#define USB_RXTYPE4_SPEED_LOW   0x000000C0  // Low
N#define USB_RXTYPE4_PROTO_M     0x00000030  // Protocol
N#define USB_RXTYPE4_PROTO_CTRL  0x00000000  // Control
N#define USB_RXTYPE4_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_RXTYPE4_PROTO_BULK  0x00000020  // Bulk
N#define USB_RXTYPE4_PROTO_INT   0x00000030  // Interrupt
N#define USB_RXTYPE4_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_RXTYPE4_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXINTERVAL4
N// register.
N//
N//*****************************************************************************
N#define USB_RXINTERVAL4_TXPOLL_M                                              \
N                                0x000000FF  // RX Polling
X#define USB_RXINTERVAL4_TXPOLL_M                                                                              0x000000FF  
N#define USB_RXINTERVAL4_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_RXINTERVAL4_NAKLMT_M                                                                              0x000000FF  
N#define USB_RXINTERVAL4_NAKLMT_S                                              \
N                                0
X#define USB_RXINTERVAL4_NAKLMT_S                                                                              0
N#define USB_RXINTERVAL4_TXPOLL_S                                              \
N                                0
X#define USB_RXINTERVAL4_TXPOLL_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXMAXP5 register.
N//
N//*****************************************************************************
N#define USB_TXMAXP5_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_TXMAXP5_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRL5 register.
N//
N//*****************************************************************************
N#define USB_TXCSRL5_NAKTO       0x00000080  // NAK Timeout
N#define USB_TXCSRL5_CLRDT       0x00000040  // Clear Data Toggle
N#define USB_TXCSRL5_STALLED     0x00000020  // Endpoint Stalled
N#define USB_TXCSRL5_SETUP       0x00000010  // Setup Packet
N#define USB_TXCSRL5_STALL       0x00000010  // Send STALL
N#define USB_TXCSRL5_FLUSH       0x00000008  // Flush FIFO
N#define USB_TXCSRL5_ERROR       0x00000004  // Error
N#define USB_TXCSRL5_UNDRN       0x00000004  // Underrun
N#define USB_TXCSRL5_FIFONE      0x00000002  // FIFO Not Empty
N#define USB_TXCSRL5_TXRDY       0x00000001  // Transmit Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRH5 register.
N//
N//*****************************************************************************
N#define USB_TXCSRH5_AUTOSET     0x00000080  // Auto Set
N#define USB_TXCSRH5_ISO         0x00000040  // Isochronous Transfers
N#define USB_TXCSRH5_MODE        0x00000020  // Mode
N#define USB_TXCSRH5_DMAEN       0x00000010  // DMA Request Enable
N#define USB_TXCSRH5_FDT         0x00000008  // Force Data Toggle
N#define USB_TXCSRH5_DMAMOD      0x00000004  // DMA Request Mode
N#define USB_TXCSRH5_DTWE        0x00000002  // Data Toggle Write Enable
N#define USB_TXCSRH5_DT          0x00000001  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXMAXP5 register.
N//
N//*****************************************************************************
N#define USB_RXMAXP5_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_RXMAXP5_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRL5 register.
N//
N//*****************************************************************************
N#define USB_RXCSRL5_CLRDT       0x00000080  // Clear Data Toggle
N#define USB_RXCSRL5_STALLED     0x00000040  // Endpoint Stalled
N#define USB_RXCSRL5_STALL       0x00000020  // Send STALL
N#define USB_RXCSRL5_REQPKT      0x00000020  // Request Packet
N#define USB_RXCSRL5_FLUSH       0x00000010  // Flush FIFO
N#define USB_RXCSRL5_NAKTO       0x00000008  // NAK Timeout
N#define USB_RXCSRL5_DATAERR     0x00000008  // Data Error
N#define USB_RXCSRL5_ERROR       0x00000004  // Error
N#define USB_RXCSRL5_OVER        0x00000004  // Overrun
N#define USB_RXCSRL5_FULL        0x00000002  // FIFO Full
N#define USB_RXCSRL5_RXRDY       0x00000001  // Receive Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRH5 register.
N//
N//*****************************************************************************
N#define USB_RXCSRH5_AUTOCL      0x00000080  // Auto Clear
N#define USB_RXCSRH5_AUTORQ      0x00000040  // Auto Request
N#define USB_RXCSRH5_ISO         0x00000040  // Isochronous Transfers
N#define USB_RXCSRH5_DMAEN       0x00000020  // DMA Request Enable
N#define USB_RXCSRH5_DISNYET     0x00000010  // Disable NYET
N#define USB_RXCSRH5_PIDERR      0x00000010  // PID Error
N#define USB_RXCSRH5_DMAMOD      0x00000008  // DMA Request Mode
N#define USB_RXCSRH5_DTWE        0x00000004  // Data Toggle Write Enable
N#define USB_RXCSRH5_DT          0x00000002  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCOUNT5 register.
N//
N//*****************************************************************************
N#define USB_RXCOUNT5_COUNT_M    0x00001FFF  // Receive Packet Count
N#define USB_RXCOUNT5_COUNT_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXTYPE5 register.
N//
N//*****************************************************************************
N#define USB_TXTYPE5_SPEED_M     0x000000C0  // Operating Speed
N#define USB_TXTYPE5_SPEED_DFLT  0x00000000  // Default
N#define USB_TXTYPE5_SPEED_FULL  0x00000080  // Full
N#define USB_TXTYPE5_SPEED_LOW   0x000000C0  // Low
N#define USB_TXTYPE5_PROTO_M     0x00000030  // Protocol
N#define USB_TXTYPE5_PROTO_CTRL  0x00000000  // Control
N#define USB_TXTYPE5_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_TXTYPE5_PROTO_BULK  0x00000020  // Bulk
N#define USB_TXTYPE5_PROTO_INT   0x00000030  // Interrupt
N#define USB_TXTYPE5_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_TXTYPE5_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXINTERVAL5
N// register.
N//
N//*****************************************************************************
N#define USB_TXINTERVAL5_TXPOLL_M                                              \
N                                0x000000FF  // TX Polling
X#define USB_TXINTERVAL5_TXPOLL_M                                                                              0x000000FF  
N#define USB_TXINTERVAL5_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_TXINTERVAL5_NAKLMT_M                                                                              0x000000FF  
N#define USB_TXINTERVAL5_NAKLMT_S                                              \
N                                0
X#define USB_TXINTERVAL5_NAKLMT_S                                                                              0
N#define USB_TXINTERVAL5_TXPOLL_S                                              \
N                                0
X#define USB_TXINTERVAL5_TXPOLL_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXTYPE5 register.
N//
N//*****************************************************************************
N#define USB_RXTYPE5_SPEED_M     0x000000C0  // Operating Speed
N#define USB_RXTYPE5_SPEED_DFLT  0x00000000  // Default
N#define USB_RXTYPE5_SPEED_FULL  0x00000080  // Full
N#define USB_RXTYPE5_SPEED_LOW   0x000000C0  // Low
N#define USB_RXTYPE5_PROTO_M     0x00000030  // Protocol
N#define USB_RXTYPE5_PROTO_CTRL  0x00000000  // Control
N#define USB_RXTYPE5_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_RXTYPE5_PROTO_BULK  0x00000020  // Bulk
N#define USB_RXTYPE5_PROTO_INT   0x00000030  // Interrupt
N#define USB_RXTYPE5_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_RXTYPE5_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXINTERVAL5
N// register.
N//
N//*****************************************************************************
N#define USB_RXINTERVAL5_TXPOLL_M                                              \
N                                0x000000FF  // RX Polling
X#define USB_RXINTERVAL5_TXPOLL_M                                                                              0x000000FF  
N#define USB_RXINTERVAL5_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_RXINTERVAL5_NAKLMT_M                                                                              0x000000FF  
N#define USB_RXINTERVAL5_TXPOLL_S                                              \
N                                0
X#define USB_RXINTERVAL5_TXPOLL_S                                                                              0
N#define USB_RXINTERVAL5_NAKLMT_S                                              \
N                                0
X#define USB_RXINTERVAL5_NAKLMT_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXMAXP6 register.
N//
N//*****************************************************************************
N#define USB_TXMAXP6_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_TXMAXP6_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRL6 register.
N//
N//*****************************************************************************
N#define USB_TXCSRL6_NAKTO       0x00000080  // NAK Timeout
N#define USB_TXCSRL6_CLRDT       0x00000040  // Clear Data Toggle
N#define USB_TXCSRL6_STALLED     0x00000020  // Endpoint Stalled
N#define USB_TXCSRL6_STALL       0x00000010  // Send STALL
N#define USB_TXCSRL6_SETUP       0x00000010  // Setup Packet
N#define USB_TXCSRL6_FLUSH       0x00000008  // Flush FIFO
N#define USB_TXCSRL6_ERROR       0x00000004  // Error
N#define USB_TXCSRL6_UNDRN       0x00000004  // Underrun
N#define USB_TXCSRL6_FIFONE      0x00000002  // FIFO Not Empty
N#define USB_TXCSRL6_TXRDY       0x00000001  // Transmit Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRH6 register.
N//
N//*****************************************************************************
N#define USB_TXCSRH6_AUTOSET     0x00000080  // Auto Set
N#define USB_TXCSRH6_ISO         0x00000040  // Isochronous Transfers
N#define USB_TXCSRH6_MODE        0x00000020  // Mode
N#define USB_TXCSRH6_DMAEN       0x00000010  // DMA Request Enable
N#define USB_TXCSRH6_FDT         0x00000008  // Force Data Toggle
N#define USB_TXCSRH6_DMAMOD      0x00000004  // DMA Request Mode
N#define USB_TXCSRH6_DTWE        0x00000002  // Data Toggle Write Enable
N#define USB_TXCSRH6_DT          0x00000001  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXMAXP6 register.
N//
N//*****************************************************************************
N#define USB_RXMAXP6_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_RXMAXP6_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRL6 register.
N//
N//*****************************************************************************
N#define USB_RXCSRL6_CLRDT       0x00000080  // Clear Data Toggle
N#define USB_RXCSRL6_STALLED     0x00000040  // Endpoint Stalled
N#define USB_RXCSRL6_REQPKT      0x00000020  // Request Packet
N#define USB_RXCSRL6_STALL       0x00000020  // Send STALL
N#define USB_RXCSRL6_FLUSH       0x00000010  // Flush FIFO
N#define USB_RXCSRL6_NAKTO       0x00000008  // NAK Timeout
N#define USB_RXCSRL6_DATAERR     0x00000008  // Data Error
N#define USB_RXCSRL6_ERROR       0x00000004  // Error
N#define USB_RXCSRL6_OVER        0x00000004  // Overrun
N#define USB_RXCSRL6_FULL        0x00000002  // FIFO Full
N#define USB_RXCSRL6_RXRDY       0x00000001  // Receive Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRH6 register.
N//
N//*****************************************************************************
N#define USB_RXCSRH6_AUTOCL      0x00000080  // Auto Clear
N#define USB_RXCSRH6_AUTORQ      0x00000040  // Auto Request
N#define USB_RXCSRH6_ISO         0x00000040  // Isochronous Transfers
N#define USB_RXCSRH6_DMAEN       0x00000020  // DMA Request Enable
N#define USB_RXCSRH6_DISNYET     0x00000010  // Disable NYET
N#define USB_RXCSRH6_PIDERR      0x00000010  // PID Error
N#define USB_RXCSRH6_DMAMOD      0x00000008  // DMA Request Mode
N#define USB_RXCSRH6_DTWE        0x00000004  // Data Toggle Write Enable
N#define USB_RXCSRH6_DT          0x00000002  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCOUNT6 register.
N//
N//*****************************************************************************
N#define USB_RXCOUNT6_COUNT_M    0x00001FFF  // Receive Packet Count
N#define USB_RXCOUNT6_COUNT_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXTYPE6 register.
N//
N//*****************************************************************************
N#define USB_TXTYPE6_SPEED_M     0x000000C0  // Operating Speed
N#define USB_TXTYPE6_SPEED_DFLT  0x00000000  // Default
N#define USB_TXTYPE6_SPEED_FULL  0x00000080  // Full
N#define USB_TXTYPE6_SPEED_LOW   0x000000C0  // Low
N#define USB_TXTYPE6_PROTO_M     0x00000030  // Protocol
N#define USB_TXTYPE6_PROTO_CTRL  0x00000000  // Control
N#define USB_TXTYPE6_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_TXTYPE6_PROTO_BULK  0x00000020  // Bulk
N#define USB_TXTYPE6_PROTO_INT   0x00000030  // Interrupt
N#define USB_TXTYPE6_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_TXTYPE6_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXINTERVAL6
N// register.
N//
N//*****************************************************************************
N#define USB_TXINTERVAL6_TXPOLL_M                                              \
N                                0x000000FF  // TX Polling
X#define USB_TXINTERVAL6_TXPOLL_M                                                                              0x000000FF  
N#define USB_TXINTERVAL6_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_TXINTERVAL6_NAKLMT_M                                                                              0x000000FF  
N#define USB_TXINTERVAL6_TXPOLL_S                                              \
N                                0
X#define USB_TXINTERVAL6_TXPOLL_S                                                                              0
N#define USB_TXINTERVAL6_NAKLMT_S                                              \
N                                0
X#define USB_TXINTERVAL6_NAKLMT_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXTYPE6 register.
N//
N//*****************************************************************************
N#define USB_RXTYPE6_SPEED_M     0x000000C0  // Operating Speed
N#define USB_RXTYPE6_SPEED_DFLT  0x00000000  // Default
N#define USB_RXTYPE6_SPEED_FULL  0x00000080  // Full
N#define USB_RXTYPE6_SPEED_LOW   0x000000C0  // Low
N#define USB_RXTYPE6_PROTO_M     0x00000030  // Protocol
N#define USB_RXTYPE6_PROTO_CTRL  0x00000000  // Control
N#define USB_RXTYPE6_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_RXTYPE6_PROTO_BULK  0x00000020  // Bulk
N#define USB_RXTYPE6_PROTO_INT   0x00000030  // Interrupt
N#define USB_RXTYPE6_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_RXTYPE6_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXINTERVAL6
N// register.
N//
N//*****************************************************************************
N#define USB_RXINTERVAL6_TXPOLL_M                                              \
N                                0x000000FF  // RX Polling
X#define USB_RXINTERVAL6_TXPOLL_M                                                                              0x000000FF  
N#define USB_RXINTERVAL6_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_RXINTERVAL6_NAKLMT_M                                                                              0x000000FF  
N#define USB_RXINTERVAL6_NAKLMT_S                                              \
N                                0
X#define USB_RXINTERVAL6_NAKLMT_S                                                                              0
N#define USB_RXINTERVAL6_TXPOLL_S                                              \
N                                0
X#define USB_RXINTERVAL6_TXPOLL_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXMAXP7 register.
N//
N//*****************************************************************************
N#define USB_TXMAXP7_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_TXMAXP7_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRL7 register.
N//
N//*****************************************************************************
N#define USB_TXCSRL7_NAKTO       0x00000080  // NAK Timeout
N#define USB_TXCSRL7_CLRDT       0x00000040  // Clear Data Toggle
N#define USB_TXCSRL7_STALLED     0x00000020  // Endpoint Stalled
N#define USB_TXCSRL7_STALL       0x00000010  // Send STALL
N#define USB_TXCSRL7_SETUP       0x00000010  // Setup Packet
N#define USB_TXCSRL7_FLUSH       0x00000008  // Flush FIFO
N#define USB_TXCSRL7_ERROR       0x00000004  // Error
N#define USB_TXCSRL7_UNDRN       0x00000004  // Underrun
N#define USB_TXCSRL7_FIFONE      0x00000002  // FIFO Not Empty
N#define USB_TXCSRL7_TXRDY       0x00000001  // Transmit Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXCSRH7 register.
N//
N//*****************************************************************************
N#define USB_TXCSRH7_AUTOSET     0x00000080  // Auto Set
N#define USB_TXCSRH7_ISO         0x00000040  // Isochronous Transfers
N#define USB_TXCSRH7_MODE        0x00000020  // Mode
N#define USB_TXCSRH7_DMAEN       0x00000010  // DMA Request Enable
N#define USB_TXCSRH7_FDT         0x00000008  // Force Data Toggle
N#define USB_TXCSRH7_DMAMOD      0x00000004  // DMA Request Mode
N#define USB_TXCSRH7_DTWE        0x00000002  // Data Toggle Write Enable
N#define USB_TXCSRH7_DT          0x00000001  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXMAXP7 register.
N//
N//*****************************************************************************
N#define USB_RXMAXP7_MAXLOAD_M   0x000007FF  // Maximum Payload
N#define USB_RXMAXP7_MAXLOAD_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRL7 register.
N//
N//*****************************************************************************
N#define USB_RXCSRL7_CLRDT       0x00000080  // Clear Data Toggle
N#define USB_RXCSRL7_STALLED     0x00000040  // Endpoint Stalled
N#define USB_RXCSRL7_REQPKT      0x00000020  // Request Packet
N#define USB_RXCSRL7_STALL       0x00000020  // Send STALL
N#define USB_RXCSRL7_FLUSH       0x00000010  // Flush FIFO
N#define USB_RXCSRL7_DATAERR     0x00000008  // Data Error
N#define USB_RXCSRL7_NAKTO       0x00000008  // NAK Timeout
N#define USB_RXCSRL7_ERROR       0x00000004  // Error
N#define USB_RXCSRL7_OVER        0x00000004  // Overrun
N#define USB_RXCSRL7_FULL        0x00000002  // FIFO Full
N#define USB_RXCSRL7_RXRDY       0x00000001  // Receive Packet Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCSRH7 register.
N//
N//*****************************************************************************
N#define USB_RXCSRH7_AUTOCL      0x00000080  // Auto Clear
N#define USB_RXCSRH7_ISO         0x00000040  // Isochronous Transfers
N#define USB_RXCSRH7_AUTORQ      0x00000040  // Auto Request
N#define USB_RXCSRH7_DMAEN       0x00000020  // DMA Request Enable
N#define USB_RXCSRH7_PIDERR      0x00000010  // PID Error
N#define USB_RXCSRH7_DISNYET     0x00000010  // Disable NYET
N#define USB_RXCSRH7_DMAMOD      0x00000008  // DMA Request Mode
N#define USB_RXCSRH7_DTWE        0x00000004  // Data Toggle Write Enable
N#define USB_RXCSRH7_DT          0x00000002  // Data Toggle
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXCOUNT7 register.
N//
N//*****************************************************************************
N#define USB_RXCOUNT7_COUNT_M    0x00001FFF  // Receive Packet Count
N#define USB_RXCOUNT7_COUNT_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXTYPE7 register.
N//
N//*****************************************************************************
N#define USB_TXTYPE7_SPEED_M     0x000000C0  // Operating Speed
N#define USB_TXTYPE7_SPEED_DFLT  0x00000000  // Default
N#define USB_TXTYPE7_SPEED_FULL  0x00000080  // Full
N#define USB_TXTYPE7_SPEED_LOW   0x000000C0  // Low
N#define USB_TXTYPE7_PROTO_M     0x00000030  // Protocol
N#define USB_TXTYPE7_PROTO_CTRL  0x00000000  // Control
N#define USB_TXTYPE7_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_TXTYPE7_PROTO_BULK  0x00000020  // Bulk
N#define USB_TXTYPE7_PROTO_INT   0x00000030  // Interrupt
N#define USB_TXTYPE7_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_TXTYPE7_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXINTERVAL7
N// register.
N//
N//*****************************************************************************
N#define USB_TXINTERVAL7_TXPOLL_M                                              \
N                                0x000000FF  // TX Polling
X#define USB_TXINTERVAL7_TXPOLL_M                                                                              0x000000FF  
N#define USB_TXINTERVAL7_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_TXINTERVAL7_NAKLMT_M                                                                              0x000000FF  
N#define USB_TXINTERVAL7_NAKLMT_S                                              \
N                                0
X#define USB_TXINTERVAL7_NAKLMT_S                                                                              0
N#define USB_TXINTERVAL7_TXPOLL_S                                              \
N                                0
X#define USB_TXINTERVAL7_TXPOLL_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXTYPE7 register.
N//
N//*****************************************************************************
N#define USB_RXTYPE7_SPEED_M     0x000000C0  // Operating Speed
N#define USB_RXTYPE7_SPEED_DFLT  0x00000000  // Default
N#define USB_RXTYPE7_SPEED_FULL  0x00000080  // Full
N#define USB_RXTYPE7_SPEED_LOW   0x000000C0  // Low
N#define USB_RXTYPE7_PROTO_M     0x00000030  // Protocol
N#define USB_RXTYPE7_PROTO_CTRL  0x00000000  // Control
N#define USB_RXTYPE7_PROTO_ISOC  0x00000010  // Isochronous
N#define USB_RXTYPE7_PROTO_BULK  0x00000020  // Bulk
N#define USB_RXTYPE7_PROTO_INT   0x00000030  // Interrupt
N#define USB_RXTYPE7_TEP_M       0x0000000F  // Target Endpoint Number
N#define USB_RXTYPE7_TEP_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXINTERVAL7
N// register.
N//
N//*****************************************************************************
N#define USB_RXINTERVAL7_TXPOLL_M                                              \
N                                0x000000FF  // RX Polling
X#define USB_RXINTERVAL7_TXPOLL_M                                                                              0x000000FF  
N#define USB_RXINTERVAL7_NAKLMT_M                                              \
N                                0x000000FF  // NAK Limit
X#define USB_RXINTERVAL7_NAKLMT_M                                                                              0x000000FF  
N#define USB_RXINTERVAL7_NAKLMT_S                                              \
N                                0
X#define USB_RXINTERVAL7_NAKLMT_S                                                                              0
N#define USB_RXINTERVAL7_TXPOLL_S                                              \
N                                0
X#define USB_RXINTERVAL7_TXPOLL_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RQPKTCOUNT1
N// register.
N//
N//*****************************************************************************
N#define USB_RQPKTCOUNT1_M       0x0000FFFF  // Block Transfer Packet Count
N#define USB_RQPKTCOUNT1_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RQPKTCOUNT2
N// register.
N//
N//*****************************************************************************
N#define USB_RQPKTCOUNT2_M       0x0000FFFF  // Block Transfer Packet Count
N#define USB_RQPKTCOUNT2_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RQPKTCOUNT3
N// register.
N//
N//*****************************************************************************
N#define USB_RQPKTCOUNT3_M       0x0000FFFF  // Block Transfer Packet Count
N#define USB_RQPKTCOUNT3_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RQPKTCOUNT4
N// register.
N//
N//*****************************************************************************
N#define USB_RQPKTCOUNT4_COUNT_M 0x0000FFFF  // Block Transfer Packet Count
N#define USB_RQPKTCOUNT4_COUNT_S 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RQPKTCOUNT5
N// register.
N//
N//*****************************************************************************
N#define USB_RQPKTCOUNT5_COUNT_M 0x0000FFFF  // Block Transfer Packet Count
N#define USB_RQPKTCOUNT5_COUNT_S 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RQPKTCOUNT6
N// register.
N//
N//*****************************************************************************
N#define USB_RQPKTCOUNT6_COUNT_M 0x0000FFFF  // Block Transfer Packet Count
N#define USB_RQPKTCOUNT6_COUNT_S 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RQPKTCOUNT7
N// register.
N//
N//*****************************************************************************
N#define USB_RQPKTCOUNT7_COUNT_M 0x0000FFFF  // Block Transfer Packet Count
N#define USB_RQPKTCOUNT7_COUNT_S 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_RXDPKTBUFDIS
N// register.
N//
N//*****************************************************************************
N#define USB_RXDPKTBUFDIS_EP7    0x00000080  // EP7 RX Double-Packet Buffer
N                                            // Disable
N#define USB_RXDPKTBUFDIS_EP6    0x00000040  // EP6 RX Double-Packet Buffer
N                                            // Disable
N#define USB_RXDPKTBUFDIS_EP5    0x00000020  // EP5 RX Double-Packet Buffer
N                                            // Disable
N#define USB_RXDPKTBUFDIS_EP4    0x00000010  // EP4 RX Double-Packet Buffer
N                                            // Disable
N#define USB_RXDPKTBUFDIS_EP3    0x00000008  // EP3 RX Double-Packet Buffer
N                                            // Disable
N#define USB_RXDPKTBUFDIS_EP2    0x00000004  // EP2 RX Double-Packet Buffer
N                                            // Disable
N#define USB_RXDPKTBUFDIS_EP1    0x00000002  // EP1 RX Double-Packet Buffer
N                                            // Disable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_TXDPKTBUFDIS
N// register.
N//
N//*****************************************************************************
N#define USB_TXDPKTBUFDIS_EP7    0x00000080  // EP7 TX Double-Packet Buffer
N                                            // Disable
N#define USB_TXDPKTBUFDIS_EP6    0x00000040  // EP6 TX Double-Packet Buffer
N                                            // Disable
N#define USB_TXDPKTBUFDIS_EP5    0x00000020  // EP5 TX Double-Packet Buffer
N                                            // Disable
N#define USB_TXDPKTBUFDIS_EP4    0x00000010  // EP4 TX Double-Packet Buffer
N                                            // Disable
N#define USB_TXDPKTBUFDIS_EP3    0x00000008  // EP3 TX Double-Packet Buffer
N                                            // Disable
N#define USB_TXDPKTBUFDIS_EP2    0x00000004  // EP2 TX Double-Packet Buffer
N                                            // Disable
N#define USB_TXDPKTBUFDIS_EP1    0x00000002  // EP1 TX Double-Packet Buffer
N                                            // Disable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_EPC register.
N//
N//*****************************************************************************
N#define USB_EPC_PFLTACT_M       0x00000300  // Power Fault Action
N#define USB_EPC_PFLTACT_UNCHG   0x00000000  // Unchanged
N#define USB_EPC_PFLTACT_TRIS    0x00000100  // Tristate
N#define USB_EPC_PFLTACT_LOW     0x00000200  // Low
N#define USB_EPC_PFLTACT_HIGH    0x00000300  // High
N#define USB_EPC_PFLTAEN         0x00000040  // Power Fault Action Enable
N#define USB_EPC_PFLTSEN_HIGH    0x00000020  // Power Fault Sense
N#define USB_EPC_PFLTEN          0x00000010  // Power Fault Input Enable
N#define USB_EPC_EPENDE          0x00000004  // EPEN Drive Enable
N#define USB_EPC_EPEN_M          0x00000003  // External Power Supply Enable
N                                            // Configuration
N#define USB_EPC_EPEN_LOW        0x00000000  // Power Enable Active Low
N#define USB_EPC_EPEN_HIGH       0x00000001  // Power Enable Active High
N#define USB_EPC_EPEN_VBLOW      0x00000002  // Power Enable High if VBUS Low
N#define USB_EPC_EPEN_VBHIGH     0x00000003  // Power Enable High if VBUS High
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_EPCRIS register.
N//
N//*****************************************************************************
N#define USB_EPCRIS_PF           0x00000001  // USB Power Fault Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_EPCIM register.
N//
N//*****************************************************************************
N#define USB_EPCIM_PF            0x00000001  // USB Power Fault Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_EPCISC register.
N//
N//*****************************************************************************
N#define USB_EPCISC_PF           0x00000001  // USB Power Fault Interrupt Status
N                                            // and Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_DRRIS register.
N//
N//*****************************************************************************
N#define USB_DRRIS_RESUME        0x00000001  // RESUME Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_DRIM register.
N//
N//*****************************************************************************
N#define USB_DRIM_RESUME         0x00000001  // RESUME Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_DRISC register.
N//
N//*****************************************************************************
N#define USB_DRISC_RESUME        0x00000001  // RESUME Interrupt Status and
N                                            // Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_GPCS register.
N//
N//*****************************************************************************
N#define USB_GPCS_DEVMODOTG      0x00000002  // Enable Device Mode
N#define USB_GPCS_DEVMOD         0x00000001  // Device Mode
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_VDC register.
N//
N//*****************************************************************************
N#define USB_VDC_VBDEN           0x00000001  // VBUS Droop Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_VDCRIS register.
N//
N//*****************************************************************************
N#define USB_VDCRIS_VD           0x00000001  // VBUS Droop Raw Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_VDCIM register.
N//
N//*****************************************************************************
N#define USB_VDCIM_VD            0x00000001  // VBUS Droop Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_VDCISC register.
N//
N//*****************************************************************************
N#define USB_VDCISC_VD           0x00000001  // VBUS Droop Interrupt Status and
N                                            // Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_IDVRIS register.
N//
N//*****************************************************************************
N#define USB_IDVRIS_ID           0x00000001  // ID Valid Detect Raw Interrupt
N                                            // Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_IDVIM register.
N//
N//*****************************************************************************
N#define USB_IDVIM_ID            0x00000001  // ID Valid Detect Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_IDVISC register.
N//
N//*****************************************************************************
N#define USB_IDVISC_ID           0x00000001  // ID Valid Detect Interrupt Status
N                                            // and Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_DMASEL register.
N//
N//*****************************************************************************
N#define USB_DMASEL_DMACTX_M     0x00F00000  // DMA C TX Select
N#define USB_DMASEL_DMACRX_M     0x000F0000  // DMA C RX Select
N#define USB_DMASEL_DMABTX_M     0x0000F000  // DMA B TX Select
N#define USB_DMASEL_DMABRX_M     0x00000F00  // DMA B RX Select
N#define USB_DMASEL_DMAATX_M     0x000000F0  // DMA A TX Select
N#define USB_DMASEL_DMAARX_M     0x0000000F  // DMA A RX Select
N#define USB_DMASEL_DMACTX_S     20
N#define USB_DMASEL_DMACRX_S     16
N#define USB_DMASEL_DMABTX_S     12
N#define USB_DMASEL_DMABRX_S     8
N#define USB_DMASEL_DMAATX_S     4
N#define USB_DMASEL_DMAARX_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the USB_O_PP register.
N//
N//*****************************************************************************
N#define USB_PP_ECNT_M           0x0000FF00  // Endpoint Count
N#define USB_PP_USB_M            0x000000C0  // USB Capability
N#define USB_PP_USB_DEVICE       0x00000040  // DEVICE
N#define USB_PP_USB_HOSTDEVICE   0x00000080  // HOST
N#define USB_PP_USB_OTG          0x000000C0  // OTG
N#define USB_PP_PHY              0x00000010  // PHY Present
N#define USB_PP_TYPE_M           0x0000000F  // Controller Type
N#define USB_PP_TYPE_0           0x00000000  // The first-generation USB
N                                            // controller
N#define USB_PP_ECNT_S           8
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EESIZE register.
N//
N//*****************************************************************************
N#define EEPROM_EESIZE_BLKCNT_M  0x07FF0000  // Number of 16-Word Blocks
N#define EEPROM_EESIZE_WORDCNT_M 0x0000FFFF  // Number of 32-Bit Words
N#define EEPROM_EESIZE_BLKCNT_S  16
N#define EEPROM_EESIZE_WORDCNT_S 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEBLOCK register.
N//
N//*****************************************************************************
N#define EEPROM_EEBLOCK_BLOCK_M  0x0000FFFF  // Current Block
N#define EEPROM_EEBLOCK_BLOCK_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEOFFSET
N// register.
N//
N//*****************************************************************************
N#define EEPROM_EEOFFSET_OFFSET_M                                              \
N                                0x0000000F  // Current Address Offset
X#define EEPROM_EEOFFSET_OFFSET_M                                                                              0x0000000F  
N#define EEPROM_EEOFFSET_OFFSET_S                                              \
N                                0
X#define EEPROM_EEOFFSET_OFFSET_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EERDWR register.
N//
N//*****************************************************************************
N#define EEPROM_EERDWR_VALUE_M   0xFFFFFFFF  // EEPROM Read or Write Data
N#define EEPROM_EERDWR_VALUE_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EERDWRINC
N// register.
N//
N//*****************************************************************************
N#define EEPROM_EERDWRINC_VALUE_M                                              \
N                                0xFFFFFFFF  // EEPROM Read or Write Data with
X#define EEPROM_EERDWRINC_VALUE_M                                                                              0xFFFFFFFF  
N                                            // Increment
N#define EEPROM_EERDWRINC_VALUE_S                                              \
N                                0
X#define EEPROM_EERDWRINC_VALUE_S                                                                              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEDONE register.
N//
N//*****************************************************************************
N#define EEPROM_EEDONE_INVPL     0x00000100  // Invalid Program Voltage Level
N#define EEPROM_EEDONE_WRBUSY    0x00000020  // Write Busy
N#define EEPROM_EEDONE_NOPERM    0x00000010  // Write Without Permission
N#define EEPROM_EEDONE_WKCOPY    0x00000008  // Working on a Copy
N#define EEPROM_EEDONE_WKERASE   0x00000004  // Working on an Erase
N#define EEPROM_EEDONE_WORKING   0x00000001  // EEPROM Working
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EESUPP register.
N//
N//*****************************************************************************
N#define EEPROM_EESUPP_PRETRY    0x00000008  // Programming Must Be Retried
N#define EEPROM_EESUPP_ERETRY    0x00000004  // Erase Must Be Retried
N#define EEPROM_EESUPP_EREQ      0x00000002  // Erase Required
N#define EEPROM_EESUPP_START     0x00000001  // Start Erase
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEUNLOCK
N// register.
N//
N//*****************************************************************************
N#define EEPROM_EEUNLOCK_UNLOCK_M                                              \
N                                0xFFFFFFFF  // EEPROM Unlock
X#define EEPROM_EEUNLOCK_UNLOCK_M                                                                              0xFFFFFFFF  
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEPROT register.
N//
N//*****************************************************************************
N#define EEPROM_EEPROT_ACC       0x00000008  // Access Control
N#define EEPROM_EEPROT_PROT_M    0x00000007  // Protection Control
N#define EEPROM_EEPROT_PROT_RWNPW                                              \
N                                0x00000000  // This setting is the default. If
X#define EEPROM_EEPROT_PROT_RWNPW                                                                              0x00000000  
N                                            // there is no password, the block
N                                            // is not protected and is readable
N                                            // and writable
N#define EEPROM_EEPROT_PROT_RWPW 0x00000001  // If there is a password, the
N                                            // block is readable or writable
N                                            // only when unlocked
N#define EEPROM_EEPROT_PROT_RONPW                                              \
N                                0x00000002  // If there is no password, the
X#define EEPROM_EEPROT_PROT_RONPW                                                                              0x00000002  
N                                            // block is readable, not writable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEPASS0 register.
N//
N//*****************************************************************************
N#define EEPROM_EEPASS0_PASS_M   0xFFFFFFFF  // Password
N#define EEPROM_EEPASS0_PASS_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEPASS1 register.
N//
N//*****************************************************************************
N#define EEPROM_EEPASS1_PASS_M   0xFFFFFFFF  // Password
N#define EEPROM_EEPASS1_PASS_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEPASS2 register.
N//
N//*****************************************************************************
N#define EEPROM_EEPASS2_PASS_M   0xFFFFFFFF  // Password
N#define EEPROM_EEPASS2_PASS_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEINT register.
N//
N//*****************************************************************************
N#define EEPROM_EEINT_INT        0x00000001  // Interrupt Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEHIDE register.
N//
N//*****************************************************************************
N#define EEPROM_EEHIDE_HN_M      0xFFFFFFFE  // Hide Block
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_EEDBGME register.
N//
N//*****************************************************************************
N#define EEPROM_EEDBGME_KEY_M    0xFFFF0000  // Erase Key
N#define EEPROM_EEDBGME_ME       0x00000001  // Mass Erase
N#define EEPROM_EEDBGME_KEY_S    16
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the EEPROM_PP register.
N//
N//*****************************************************************************
N#define EEPROM_PP_SIZE_M        0x0000001F  // EEPROM Size
N#define EEPROM_PP_SIZE_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSEXC_RIS register.
N//
N//*****************************************************************************
N#define SYSEXC_RIS_FPIXCRIS     0x00000020  // Floating-Point Inexact Exception
N                                            // Raw Interrupt Status
N#define SYSEXC_RIS_FPOFCRIS     0x00000010  // Floating-Point Overflow
N                                            // Exception Raw Interrupt Status
N#define SYSEXC_RIS_FPUFCRIS     0x00000008  // Floating-Point Underflow
N                                            // Exception Raw Interrupt Status
N#define SYSEXC_RIS_FPIOCRIS     0x00000004  // Floating-Point Invalid Operation
N                                            // Raw Interrupt Status
N#define SYSEXC_RIS_FPDZCRIS     0x00000002  // Floating-Point Divide By 0
N                                            // Exception Raw Interrupt Status
N#define SYSEXC_RIS_FPIDCRIS     0x00000001  // Floating-Point Input Denormal
N                                            // Exception Raw Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSEXC_IM register.
N//
N//*****************************************************************************
N#define SYSEXC_IM_FPIXCIM       0x00000020  // Floating-Point Inexact Exception
N                                            // Interrupt Mask
N#define SYSEXC_IM_FPOFCIM       0x00000010  // Floating-Point Overflow
N                                            // Exception Interrupt Mask
N#define SYSEXC_IM_FPUFCIM       0x00000008  // Floating-Point Underflow
N                                            // Exception Interrupt Mask
N#define SYSEXC_IM_FPIOCIM       0x00000004  // Floating-Point Invalid Operation
N                                            // Interrupt Mask
N#define SYSEXC_IM_FPDZCIM       0x00000002  // Floating-Point Divide By 0
N                                            // Exception Interrupt Mask
N#define SYSEXC_IM_FPIDCIM       0x00000001  // Floating-Point Input Denormal
N                                            // Exception Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSEXC_MIS register.
N//
N//*****************************************************************************
N#define SYSEXC_MIS_FPIXCMIS     0x00000020  // Floating-Point Inexact Exception
N                                            // Masked Interrupt Status
N#define SYSEXC_MIS_FPOFCMIS     0x00000010  // Floating-Point Overflow
N                                            // Exception Masked Interrupt
N                                            // Status
N#define SYSEXC_MIS_FPUFCMIS     0x00000008  // Floating-Point Underflow
N                                            // Exception Masked Interrupt
N                                            // Status
N#define SYSEXC_MIS_FPIOCMIS     0x00000004  // Floating-Point Invalid Operation
N                                            // Masked Interrupt Status
N#define SYSEXC_MIS_FPDZCMIS     0x00000002  // Floating-Point Divide By 0
N                                            // Exception Masked Interrupt
N                                            // Status
N#define SYSEXC_MIS_FPIDCMIS     0x00000001  // Floating-Point Input Denormal
N                                            // Exception Masked Interrupt
N                                            // Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSEXC_IC register.
N//
N//*****************************************************************************
N#define SYSEXC_IC_FPIXCIC       0x00000020  // Floating-Point Inexact Exception
N                                            // Interrupt Clear
N#define SYSEXC_IC_FPOFCIC       0x00000010  // Floating-Point Overflow
N                                            // Exception Interrupt Clear
N#define SYSEXC_IC_FPUFCIC       0x00000008  // Floating-Point Underflow
N                                            // Exception Interrupt Clear
N#define SYSEXC_IC_FPIOCIC       0x00000004  // Floating-Point Invalid Operation
N                                            // Interrupt Clear
N#define SYSEXC_IC_FPDZCIC       0x00000002  // Floating-Point Divide By 0
N                                            // Exception Interrupt Clear
N#define SYSEXC_IC_FPIDCIC       0x00000001  // Floating-Point Input Denormal
N                                            // Exception Interrupt Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_RTCC register.
N//
N//*****************************************************************************
N#define HIB_RTCC_M              0xFFFFFFFF  // RTC Counter
N#define HIB_RTCC_S              0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_RTCM0 register.
N//
N//*****************************************************************************
N#define HIB_RTCM0_M             0xFFFFFFFF  // RTC Match 0
N#define HIB_RTCM0_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_RTCLD register.
N//
N//*****************************************************************************
N#define HIB_RTCLD_M             0xFFFFFFFF  // RTC Load
N#define HIB_RTCLD_S             0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_CTL register.
N//
N//*****************************************************************************
N#define HIB_CTL_WRC             0x80000000  // Write Complete/Capable
N#define HIB_CTL_OSCDRV          0x00020000  // Oscillator Drive Capability
N#define HIB_CTL_OSCBYP          0x00010000  // Oscillator Bypass
N#define HIB_CTL_VBATSEL_M       0x00006000  // Select for Low-Battery
N                                            // Comparator
N#define HIB_CTL_VBATSEL_1_9V    0x00000000  // 1.9 Volts
N#define HIB_CTL_VBATSEL_2_1V    0x00002000  // 2.1 Volts (default)
N#define HIB_CTL_VBATSEL_2_3V    0x00004000  // 2.3 Volts
N#define HIB_CTL_VBATSEL_2_5V    0x00006000  // 2.5 Volts
N#define HIB_CTL_BATCHK          0x00000400  // Check Battery Status
N#define HIB_CTL_BATWKEN         0x00000200  // Wake on Low Battery
N#define HIB_CTL_VDD3ON          0x00000100  // VDD Powered
N#define HIB_CTL_VABORT          0x00000080  // Power Cut Abort Enable
N#define HIB_CTL_CLK32EN         0x00000040  // Clocking Enable
N#define HIB_CTL_PINWEN          0x00000010  // External WAKE Pin Enable
N#define HIB_CTL_RTCWEN          0x00000008  // RTC Wake-up Enable
N#define HIB_CTL_HIBREQ          0x00000002  // Hibernation Request
N#define HIB_CTL_RTCEN           0x00000001  // RTC Timer Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_IM register.
N//
N//*****************************************************************************
N#define HIB_IM_WC               0x00000010  // External Write Complete/Capable
N                                            // Interrupt Mask
N#define HIB_IM_EXTW             0x00000008  // External Wake-Up Interrupt Mask
N#define HIB_IM_LOWBAT           0x00000004  // Low Battery Voltage Interrupt
N                                            // Mask
N#define HIB_IM_RTCALT0          0x00000001  // RTC Alert 0 Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_RIS register.
N//
N//*****************************************************************************
N#define HIB_RIS_WC              0x00000010  // Write Complete/Capable Raw
N                                            // Interrupt Status
N#define HIB_RIS_EXTW            0x00000008  // External Wake-Up Raw Interrupt
N                                            // Status
N#define HIB_RIS_LOWBAT          0x00000004  // Low Battery Voltage Raw
N                                            // Interrupt Status
N#define HIB_RIS_RTCALT0         0x00000001  // RTC Alert 0 Raw Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_MIS register.
N//
N//*****************************************************************************
N#define HIB_MIS_WC              0x00000010  // Write Complete/Capable Masked
N                                            // Interrupt Status
N#define HIB_MIS_EXTW            0x00000008  // External Wake-Up Masked
N                                            // Interrupt Status
N#define HIB_MIS_LOWBAT          0x00000004  // Low Battery Voltage Masked
N                                            // Interrupt Status
N#define HIB_MIS_RTCALT0         0x00000001  // RTC Alert 0 Masked Interrupt
N                                            // Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_IC register.
N//
N//*****************************************************************************
N#define HIB_IC_WC               0x00000010  // Write Complete/Capable Masked
N                                            // Interrupt Clear
N#define HIB_IC_EXTW             0x00000008  // External Wake-Up Masked
N                                            // Interrupt Clear
N#define HIB_IC_LOWBAT           0x00000004  // Low Battery Voltage Masked
N                                            // Interrupt Clear
N#define HIB_IC_RTCALT0          0x00000001  // RTC Alert0 Masked Interrupt
N                                            // Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_RTCT register.
N//
N//*****************************************************************************
N#define HIB_RTCT_TRIM_M         0x0000FFFF  // RTC Trim Value
N#define HIB_RTCT_TRIM_S         0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_RTCSS register.
N//
N//*****************************************************************************
N#define HIB_RTCSS_RTCSSM_M      0x7FFF0000  // RTC Sub Seconds Match
N#define HIB_RTCSS_RTCSSC_M      0x00007FFF  // RTC Sub Seconds Count
N#define HIB_RTCSS_RTCSSM_S      16
N#define HIB_RTCSS_RTCSSC_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the HIB_DATA register.
N//
N//*****************************************************************************
N#define HIB_DATA_RTD_M          0xFFFFFFFF  // Hibernation Module NV Data
N#define HIB_DATA_RTD_S          0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_FMA register.
N//
N//*****************************************************************************
N#define FLASH_FMA_OFFSET_M      0x0003FFFF  // Address Offset
N#define FLASH_FMA_OFFSET_S      0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_FMD register.
N//
N//*****************************************************************************
N#define FLASH_FMD_DATA_M        0xFFFFFFFF  // Data Value
N#define FLASH_FMD_DATA_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_FMC register.
N//
N//*****************************************************************************
N#define FLASH_FMC_WRKEY         0xA4420000  // FLASH write key
N#define FLASH_FMC_COMT          0x00000008  // Commit Register Value
N#define FLASH_FMC_MERASE        0x00000004  // Mass Erase Flash Memory
N#define FLASH_FMC_ERASE         0x00000002  // Erase a Page of Flash Memory
N#define FLASH_FMC_WRITE         0x00000001  // Write a Word into Flash Memory
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_FCRIS register.
N//
N//*****************************************************************************
N#define FLASH_FCRIS_PROGRIS     0x00002000  // PROGVER Raw Interrupt Status
N#define FLASH_FCRIS_ERRIS       0x00000800  // ERVER Raw Interrupt Status
N#define FLASH_FCRIS_INVDRIS     0x00000400  // Invalid Data Raw Interrupt
N                                            // Status
N#define FLASH_FCRIS_VOLTRIS     0x00000200  // VOLTSTAT Raw Interrupt Status
N#define FLASH_FCRIS_ERIS        0x00000004  // EEPROM Raw Interrupt Status
N#define FLASH_FCRIS_PRIS        0x00000002  // Programming Raw Interrupt Status
N#define FLASH_FCRIS_ARIS        0x00000001  // Access Raw Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_FCIM register.
N//
N//*****************************************************************************
N#define FLASH_FCIM_PROGMASK     0x00002000  // PROGVER Interrupt Mask
N#define FLASH_FCIM_ERMASK       0x00000800  // ERVER Interrupt Mask
N#define FLASH_FCIM_INVDMASK     0x00000400  // Invalid Data Interrupt Mask
N#define FLASH_FCIM_VOLTMASK     0x00000200  // VOLT Interrupt Mask
N#define FLASH_FCIM_EMASK        0x00000004  // EEPROM Interrupt Mask
N#define FLASH_FCIM_PMASK        0x00000002  // Programming Interrupt Mask
N#define FLASH_FCIM_AMASK        0x00000001  // Access Interrupt Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_FCMISC register.
N//
N//*****************************************************************************
N#define FLASH_FCMISC_PROGMISC   0x00002000  // PROGVER Masked Interrupt Status
N                                            // and Clear
N#define FLASH_FCMISC_ERMISC     0x00000800  // ERVER Masked Interrupt Status
N                                            // and Clear
N#define FLASH_FCMISC_INVDMISC   0x00000400  // Invalid Data Masked Interrupt
N                                            // Status and Clear
N#define FLASH_FCMISC_VOLTMISC   0x00000200  // VOLT Masked Interrupt Status and
N                                            // Clear
N#define FLASH_FCMISC_EMISC      0x00000004  // EEPROM Masked Interrupt Status
N                                            // and Clear
N#define FLASH_FCMISC_PMISC      0x00000002  // Programming Masked Interrupt
N                                            // Status and Clear
N#define FLASH_FCMISC_AMISC      0x00000001  // Access Masked Interrupt Status
N                                            // and Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_FMC2 register.
N//
N//*****************************************************************************
N#define FLASH_FMC2_WRBUF        0x00000001  // Buffered Flash Memory Write
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_FWBVAL register.
N//
N//*****************************************************************************
N#define FLASH_FWBVAL_FWB_M      0xFFFFFFFF  // Flash Memory Write Buffer
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_FWBN register.
N//
N//*****************************************************************************
N#define FLASH_FWBN_DATA_M       0xFFFFFFFF  // Data
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_FSIZE register.
N//
N//*****************************************************************************
N#define FLASH_FSIZE_SIZE_M      0x0000FFFF  // Flash Size
N#define FLASH_FSIZE_SIZE_8KB    0x00000003  // 8 KB of Flash
N#define FLASH_FSIZE_SIZE_16KB   0x00000007  // 16 KB of Flash
N#define FLASH_FSIZE_SIZE_32KB   0x0000000F  // 32 KB of Flash
N#define FLASH_FSIZE_SIZE_64KB   0x0000001F  // 64 KB of Flash
N#define FLASH_FSIZE_SIZE_96KB   0x0000002F  // 96 KB of Flash
N#define FLASH_FSIZE_SIZE_128KB  0x0000003F  // 128 KB of Flash
N#define FLASH_FSIZE_SIZE_192KB  0x0000005F  // 192 KB of Flash
N#define FLASH_FSIZE_SIZE_256KB  0x0000007F  // 256 KB of Flash
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_SSIZE register.
N//
N//*****************************************************************************
N#define FLASH_SSIZE_SIZE_M      0x0000FFFF  // SRAM Size
N#define FLASH_SSIZE_SIZE_2KB    0x00000007  // 2 KB of SRAM
N#define FLASH_SSIZE_SIZE_4KB    0x0000000F  // 4 KB of SRAM
N#define FLASH_SSIZE_SIZE_6KB    0x00000017  // 6 KB of SRAM
N#define FLASH_SSIZE_SIZE_8KB    0x0000001F  // 8 KB of SRAM
N#define FLASH_SSIZE_SIZE_12KB   0x0000002F  // 12 KB of SRAM
N#define FLASH_SSIZE_SIZE_16KB   0x0000003F  // 16 KB of SRAM
N#define FLASH_SSIZE_SIZE_20KB   0x0000004F  // 20 KB of SRAM
N#define FLASH_SSIZE_SIZE_24KB   0x0000005F  // 24 KB of SRAM
N#define FLASH_SSIZE_SIZE_32KB   0x0000007F  // 32 KB of SRAM
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_ROMSWMAP register.
N//
N//*****************************************************************************
N#define FLASH_ROMSWMAP_SAFERTOS 0x00000001  // SafeRTOS Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_RMCTL register.
N//
N//*****************************************************************************
N#define FLASH_RMCTL_BA          0x00000001  // Boot Alias
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_BOOTCFG register.
N//
N//*****************************************************************************
N#define FLASH_BOOTCFG_NW        0x80000000  // Not Written
N#define FLASH_BOOTCFG_PORT_M    0x0000E000  // Boot GPIO Port
N#define FLASH_BOOTCFG_PORT_A    0x00000000  // Port A
N#define FLASH_BOOTCFG_PORT_B    0x00002000  // Port B
N#define FLASH_BOOTCFG_PORT_C    0x00004000  // Port C
N#define FLASH_BOOTCFG_PORT_D    0x00006000  // Port D
N#define FLASH_BOOTCFG_PORT_E    0x00008000  // Port E
N#define FLASH_BOOTCFG_PORT_F    0x0000A000  // Port F
N#define FLASH_BOOTCFG_PORT_G    0x0000C000  // Port G
N#define FLASH_BOOTCFG_PORT_H    0x0000E000  // Port H
N#define FLASH_BOOTCFG_PIN_M     0x00001C00  // Boot GPIO Pin
N#define FLASH_BOOTCFG_PIN_0     0x00000000  // Pin 0
N#define FLASH_BOOTCFG_PIN_1     0x00000400  // Pin 1
N#define FLASH_BOOTCFG_PIN_2     0x00000800  // Pin 2
N#define FLASH_BOOTCFG_PIN_3     0x00000C00  // Pin 3
N#define FLASH_BOOTCFG_PIN_4     0x00001000  // Pin 4
N#define FLASH_BOOTCFG_PIN_5     0x00001400  // Pin 5
N#define FLASH_BOOTCFG_PIN_6     0x00001800  // Pin 6
N#define FLASH_BOOTCFG_PIN_7     0x00001C00  // Pin 7
N#define FLASH_BOOTCFG_POL       0x00000200  // Boot GPIO Polarity
N#define FLASH_BOOTCFG_EN        0x00000100  // Boot GPIO Enable
N#define FLASH_BOOTCFG_KEY       0x00000010  // KEY Select
N#define FLASH_BOOTCFG_DBG1      0x00000002  // Debug Control 1
N#define FLASH_BOOTCFG_DBG0      0x00000001  // Debug Control 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_USERREG0 register.
N//
N//*****************************************************************************
N#define FLASH_USERREG0_DATA_M   0xFFFFFFFF  // User Data
N#define FLASH_USERREG0_DATA_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_USERREG1 register.
N//
N//*****************************************************************************
N#define FLASH_USERREG1_DATA_M   0xFFFFFFFF  // User Data
N#define FLASH_USERREG1_DATA_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_USERREG2 register.
N//
N//*****************************************************************************
N#define FLASH_USERREG2_DATA_M   0xFFFFFFFF  // User Data
N#define FLASH_USERREG2_DATA_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the FLASH_USERREG3 register.
N//
N//*****************************************************************************
N#define FLASH_USERREG3_DATA_M   0xFFFFFFFF  // User Data
N#define FLASH_USERREG3_DATA_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DID0 register.
N//
N//*****************************************************************************
N#define SYSCTL_DID0_VER_M       0x70000000  // DID0 Version
N#define SYSCTL_DID0_VER_1       0x10000000  // Second version of the DID0
N                                            // register format
N#define SYSCTL_DID0_CLASS_M     0x00FF0000  // Device Class
N#define SYSCTL_DID0_CLASS_BLIZZARD                                            \
N                                0x00050000  // Tiva(TM) C Series Blizzard-class
X#define SYSCTL_DID0_CLASS_BLIZZARD                                                                            0x00050000  
N                                            // microcontrollers
N#define SYSCTL_DID0_MAJ_M       0x0000FF00  // Major Revision
N#define SYSCTL_DID0_MAJ_REVA    0x00000000  // Revision A (initial device)
N#define SYSCTL_DID0_MAJ_REVB    0x00000100  // Revision B (first base layer
N                                            // revision)
N#define SYSCTL_DID0_MAJ_REVC    0x00000200  // Revision C (second base layer
N                                            // revision)
N#define SYSCTL_DID0_MIN_M       0x000000FF  // Minor Revision
N#define SYSCTL_DID0_MIN_0       0x00000000  // Initial device, or a major
N                                            // revision update
N#define SYSCTL_DID0_MIN_1       0x00000001  // First metal layer change
N#define SYSCTL_DID0_MIN_2       0x00000002  // Second metal layer change
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DID1 register.
N//
N//*****************************************************************************
N#define SYSCTL_DID1_VER_M       0xF0000000  // DID1 Version
N#define SYSCTL_DID1_VER_1       0x10000000  // Second version of the DID1
N                                            // register format
N#define SYSCTL_DID1_FAM_M       0x0F000000  // Family
N#define SYSCTL_DID1_FAM_TIVA    0x00000000  // Tiva family of microcontollers
N#define SYSCTL_DID1_PRTNO_M     0x00FF0000  // Part Number
N#define SYSCTL_DID1_PRTNO_TM4C123GH6PM                                        \
N                                0x00A10000  // TM4C123GH6PM
X#define SYSCTL_DID1_PRTNO_TM4C123GH6PM                                                                        0x00A10000  
N#define SYSCTL_DID1_PINCNT_M    0x0000E000  // Package Pin Count
N#define SYSCTL_DID1_PINCNT_28   0x00000000  // 28-pin package
N#define SYSCTL_DID1_PINCNT_48   0x00002000  // 48-pin package
N#define SYSCTL_DID1_PINCNT_100  0x00004000  // 100-pin package
N#define SYSCTL_DID1_PINCNT_64   0x00006000  // 64-pin package
N#define SYSCTL_DID1_PINCNT_144  0x00008000  // 144-pin package
N#define SYSCTL_DID1_PINCNT_157  0x0000A000  // 157-pin package
N#define SYSCTL_DID1_TEMP_M      0x000000E0  // Temperature Range
N#define SYSCTL_DID1_TEMP_C      0x00000000  // Commercial temperature range (0C
N                                            // to 70C)
N#define SYSCTL_DID1_TEMP_I      0x00000020  // Industrial temperature range
N                                            // (-40C to 85C)
N#define SYSCTL_DID1_TEMP_E      0x00000040  // Extended temperature range (-40C
N                                            // to 105C)
N#define SYSCTL_DID1_PKG_M       0x00000018  // Package Type
N#define SYSCTL_DID1_PKG_SOIC    0x00000000  // SOIC package
N#define SYSCTL_DID1_PKG_QFP     0x00000008  // LQFP package
N#define SYSCTL_DID1_PKG_BGA     0x00000010  // BGA package
N#define SYSCTL_DID1_ROHS        0x00000004  // RoHS-Compliance
N#define SYSCTL_DID1_QUAL_M      0x00000003  // Qualification Status
N#define SYSCTL_DID1_QUAL_ES     0x00000000  // Engineering Sample (unqualified)
N#define SYSCTL_DID1_QUAL_PP     0x00000001  // Pilot Production (unqualified)
N#define SYSCTL_DID1_QUAL_FQ     0x00000002  // Fully Qualified
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DC0 register.
N//
N//*****************************************************************************
N#define SYSCTL_DC0_SRAMSZ_M     0xFFFF0000  // SRAM Size
N#define SYSCTL_DC0_SRAMSZ_2KB   0x00070000  // 2 KB of SRAM
N#define SYSCTL_DC0_SRAMSZ_4KB   0x000F0000  // 4 KB of SRAM
N#define SYSCTL_DC0_SRAMSZ_6KB   0x00170000  // 6 KB of SRAM
N#define SYSCTL_DC0_SRAMSZ_8KB   0x001F0000  // 8 KB of SRAM
N#define SYSCTL_DC0_SRAMSZ_12KB  0x002F0000  // 12 KB of SRAM
N#define SYSCTL_DC0_SRAMSZ_16KB  0x003F0000  // 16 KB of SRAM
N#define SYSCTL_DC0_SRAMSZ_20KB  0x004F0000  // 20 KB of SRAM
N#define SYSCTL_DC0_SRAMSZ_24KB  0x005F0000  // 24 KB of SRAM
N#define SYSCTL_DC0_SRAMSZ_32KB  0x007F0000  // 32 KB of SRAM
N#define SYSCTL_DC0_FLASHSZ_M    0x0000FFFF  // Flash Size
N#define SYSCTL_DC0_FLASHSZ_8KB  0x00000003  // 8 KB of Flash
N#define SYSCTL_DC0_FLASHSZ_16KB 0x00000007  // 16 KB of Flash
N#define SYSCTL_DC0_FLASHSZ_32KB 0x0000000F  // 32 KB of Flash
N#define SYSCTL_DC0_FLASHSZ_64KB 0x0000001F  // 64 KB of Flash
N#define SYSCTL_DC0_FLASHSZ_96KB 0x0000002F  // 96 KB of Flash
N#define SYSCTL_DC0_FLASHSZ_128K 0x0000003F  // 128 KB of Flash
N#define SYSCTL_DC0_FLASHSZ_192K 0x0000005F  // 192 KB of Flash
N#define SYSCTL_DC0_FLASHSZ_256K 0x0000007F  // 256 KB of Flash
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DC1 register.
N//
N//*****************************************************************************
N#define SYSCTL_DC1_WDT1         0x10000000  // Watchdog Timer1 Present
N#define SYSCTL_DC1_CAN1         0x02000000  // CAN Module 1 Present
N#define SYSCTL_DC1_CAN0         0x01000000  // CAN Module 0 Present
N#define SYSCTL_DC1_PWM1         0x00200000  // PWM Module 1 Present
N#define SYSCTL_DC1_PWM0         0x00100000  // PWM Module 0 Present
N#define SYSCTL_DC1_ADC1         0x00020000  // ADC Module 1 Present
N#define SYSCTL_DC1_ADC0         0x00010000  // ADC Module 0 Present
N#define SYSCTL_DC1_MINSYSDIV_M  0x0000F000  // System Clock Divider
N#define SYSCTL_DC1_MINSYSDIV_100                                              \
N                                0x00001000  // Divide VCO (400MHZ) by 5 minimum
X#define SYSCTL_DC1_MINSYSDIV_100                                                                              0x00001000  
N#define SYSCTL_DC1_MINSYSDIV_66 0x00002000  // Divide VCO (400MHZ) by 2*2 + 2 =
N                                            // 6 minimum
N#define SYSCTL_DC1_MINSYSDIV_50 0x00003000  // Specifies a 50-MHz CPU clock
N                                            // with a PLL divider of 4
N#define SYSCTL_DC1_MINSYSDIV_40 0x00004000  // Specifies a 40-MHz CPU clock
N                                            // with a PLL divider of 5
N#define SYSCTL_DC1_MINSYSDIV_25 0x00007000  // Specifies a 25-MHz clock with a
N                                            // PLL divider of 8
N#define SYSCTL_DC1_MINSYSDIV_20 0x00009000  // Specifies a 20-MHz clock with a
N                                            // PLL divider of 10
N#define SYSCTL_DC1_ADC1SPD_M    0x00000C00  // Max ADC1 Speed
N#define SYSCTL_DC1_ADC1SPD_125K 0x00000000  // 125K samples/second
N#define SYSCTL_DC1_ADC1SPD_250K 0x00000400  // 250K samples/second
N#define SYSCTL_DC1_ADC1SPD_500K 0x00000800  // 500K samples/second
N#define SYSCTL_DC1_ADC1SPD_1M   0x00000C00  // 1M samples/second
N#define SYSCTL_DC1_ADC0SPD_M    0x00000300  // Max ADC0 Speed
N#define SYSCTL_DC1_ADC0SPD_125K 0x00000000  // 125K samples/second
N#define SYSCTL_DC1_ADC0SPD_250K 0x00000100  // 250K samples/second
N#define SYSCTL_DC1_ADC0SPD_500K 0x00000200  // 500K samples/second
N#define SYSCTL_DC1_ADC0SPD_1M   0x00000300  // 1M samples/second
N#define SYSCTL_DC1_MPU          0x00000080  // MPU Present
N#define SYSCTL_DC1_HIB          0x00000040  // Hibernation Module Present
N#define SYSCTL_DC1_TEMP         0x00000020  // Temp Sensor Present
N#define SYSCTL_DC1_PLL          0x00000010  // PLL Present
N#define SYSCTL_DC1_WDT0         0x00000008  // Watchdog Timer 0 Present
N#define SYSCTL_DC1_SWO          0x00000004  // SWO Trace Port Present
N#define SYSCTL_DC1_SWD          0x00000002  // SWD Present
N#define SYSCTL_DC1_JTAG         0x00000001  // JTAG Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DC2 register.
N//
N//*****************************************************************************
N#define SYSCTL_DC2_EPI0         0x40000000  // EPI Module 0 Present
N#define SYSCTL_DC2_I2S0         0x10000000  // I2S Module 0 Present
N#define SYSCTL_DC2_COMP2        0x04000000  // Analog Comparator 2 Present
N#define SYSCTL_DC2_COMP1        0x02000000  // Analog Comparator 1 Present
N#define SYSCTL_DC2_COMP0        0x01000000  // Analog Comparator 0 Present
N#define SYSCTL_DC2_TIMER3       0x00080000  // Timer Module 3 Present
N#define SYSCTL_DC2_TIMER2       0x00040000  // Timer Module 2 Present
N#define SYSCTL_DC2_TIMER1       0x00020000  // Timer Module 1 Present
N#define SYSCTL_DC2_TIMER0       0x00010000  // Timer Module 0 Present
N#define SYSCTL_DC2_I2C1HS       0x00008000  // I2C Module 1 Speed
N#define SYSCTL_DC2_I2C1         0x00004000  // I2C Module 1 Present
N#define SYSCTL_DC2_I2C0HS       0x00002000  // I2C Module 0 Speed
N#define SYSCTL_DC2_I2C0         0x00001000  // I2C Module 0 Present
N#define SYSCTL_DC2_QEI1         0x00000200  // QEI Module 1 Present
N#define SYSCTL_DC2_QEI0         0x00000100  // QEI Module 0 Present
N#define SYSCTL_DC2_SSI1         0x00000020  // SSI Module 1 Present
N#define SYSCTL_DC2_SSI0         0x00000010  // SSI Module 0 Present
N#define SYSCTL_DC2_UART2        0x00000004  // UART Module 2 Present
N#define SYSCTL_DC2_UART1        0x00000002  // UART Module 1 Present
N#define SYSCTL_DC2_UART0        0x00000001  // UART Module 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DC3 register.
N//
N//*****************************************************************************
N#define SYSCTL_DC3_32KHZ        0x80000000  // 32KHz Input Clock Available
N#define SYSCTL_DC3_CCP5         0x20000000  // CCP5 Pin Present
N#define SYSCTL_DC3_CCP4         0x10000000  // CCP4 Pin Present
N#define SYSCTL_DC3_CCP3         0x08000000  // CCP3 Pin Present
N#define SYSCTL_DC3_CCP2         0x04000000  // CCP2 Pin Present
N#define SYSCTL_DC3_CCP1         0x02000000  // CCP1 Pin Present
N#define SYSCTL_DC3_CCP0         0x01000000  // CCP0 Pin Present
N#define SYSCTL_DC3_ADC0AIN7     0x00800000  // ADC Module 0 AIN7 Pin Present
N#define SYSCTL_DC3_ADC0AIN6     0x00400000  // ADC Module 0 AIN6 Pin Present
N#define SYSCTL_DC3_ADC0AIN5     0x00200000  // ADC Module 0 AIN5 Pin Present
N#define SYSCTL_DC3_ADC0AIN4     0x00100000  // ADC Module 0 AIN4 Pin Present
N#define SYSCTL_DC3_ADC0AIN3     0x00080000  // ADC Module 0 AIN3 Pin Present
N#define SYSCTL_DC3_ADC0AIN2     0x00040000  // ADC Module 0 AIN2 Pin Present
N#define SYSCTL_DC3_ADC0AIN1     0x00020000  // ADC Module 0 AIN1 Pin Present
N#define SYSCTL_DC3_ADC0AIN0     0x00010000  // ADC Module 0 AIN0 Pin Present
N#define SYSCTL_DC3_PWMFAULT     0x00008000  // PWM Fault Pin Present
N#define SYSCTL_DC3_C2O          0x00004000  // C2o Pin Present
N#define SYSCTL_DC3_C2PLUS       0x00002000  // C2+ Pin Present
N#define SYSCTL_DC3_C2MINUS      0x00001000  // C2- Pin Present
N#define SYSCTL_DC3_C1O          0x00000800  // C1o Pin Present
N#define SYSCTL_DC3_C1PLUS       0x00000400  // C1+ Pin Present
N#define SYSCTL_DC3_C1MINUS      0x00000200  // C1- Pin Present
N#define SYSCTL_DC3_C0O          0x00000100  // C0o Pin Present
N#define SYSCTL_DC3_C0PLUS       0x00000080  // C0+ Pin Present
N#define SYSCTL_DC3_C0MINUS      0x00000040  // C0- Pin Present
N#define SYSCTL_DC3_PWM5         0x00000020  // PWM5 Pin Present
N#define SYSCTL_DC3_PWM4         0x00000010  // PWM4 Pin Present
N#define SYSCTL_DC3_PWM3         0x00000008  // PWM3 Pin Present
N#define SYSCTL_DC3_PWM2         0x00000004  // PWM2 Pin Present
N#define SYSCTL_DC3_PWM1         0x00000002  // PWM1 Pin Present
N#define SYSCTL_DC3_PWM0         0x00000001  // PWM0 Pin Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DC4 register.
N//
N//*****************************************************************************
N#define SYSCTL_DC4_EPHY0        0x40000000  // Ethernet PHY Layer 0 Present
N#define SYSCTL_DC4_EMAC0        0x10000000  // Ethernet MAC Layer 0 Present
N#define SYSCTL_DC4_E1588        0x01000000  // 1588 Capable
N#define SYSCTL_DC4_PICAL        0x00040000  // PIOSC Calibrate
N#define SYSCTL_DC4_CCP7         0x00008000  // CCP7 Pin Present
N#define SYSCTL_DC4_CCP6         0x00004000  // CCP6 Pin Present
N#define SYSCTL_DC4_UDMA         0x00002000  // Micro-DMA Module Present
N#define SYSCTL_DC4_ROM          0x00001000  // Internal Code ROM Present
N#define SYSCTL_DC4_GPIOJ        0x00000100  // GPIO Port J Present
N#define SYSCTL_DC4_GPIOH        0x00000080  // GPIO Port H Present
N#define SYSCTL_DC4_GPIOG        0x00000040  // GPIO Port G Present
N#define SYSCTL_DC4_GPIOF        0x00000020  // GPIO Port F Present
N#define SYSCTL_DC4_GPIOE        0x00000010  // GPIO Port E Present
N#define SYSCTL_DC4_GPIOD        0x00000008  // GPIO Port D Present
N#define SYSCTL_DC4_GPIOC        0x00000004  // GPIO Port C Present
N#define SYSCTL_DC4_GPIOB        0x00000002  // GPIO Port B Present
N#define SYSCTL_DC4_GPIOA        0x00000001  // GPIO Port A Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DC5 register.
N//
N//*****************************************************************************
N#define SYSCTL_DC5_PWMFAULT3    0x08000000  // PWM Fault 3 Pin Present
N#define SYSCTL_DC5_PWMFAULT2    0x04000000  // PWM Fault 2 Pin Present
N#define SYSCTL_DC5_PWMFAULT1    0x02000000  // PWM Fault 1 Pin Present
N#define SYSCTL_DC5_PWMFAULT0    0x01000000  // PWM Fault 0 Pin Present
N#define SYSCTL_DC5_PWMEFLT      0x00200000  // PWM Extended Fault Active
N#define SYSCTL_DC5_PWMESYNC     0x00100000  // PWM Extended SYNC Active
N#define SYSCTL_DC5_PWM7         0x00000080  // PWM7 Pin Present
N#define SYSCTL_DC5_PWM6         0x00000040  // PWM6 Pin Present
N#define SYSCTL_DC5_PWM5         0x00000020  // PWM5 Pin Present
N#define SYSCTL_DC5_PWM4         0x00000010  // PWM4 Pin Present
N#define SYSCTL_DC5_PWM3         0x00000008  // PWM3 Pin Present
N#define SYSCTL_DC5_PWM2         0x00000004  // PWM2 Pin Present
N#define SYSCTL_DC5_PWM1         0x00000002  // PWM1 Pin Present
N#define SYSCTL_DC5_PWM0         0x00000001  // PWM0 Pin Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DC6 register.
N//
N//*****************************************************************************
N#define SYSCTL_DC6_USB0PHY      0x00000010  // USB Module 0 PHY Present
N#define SYSCTL_DC6_USB0_M       0x00000003  // USB Module 0 Present
N#define SYSCTL_DC6_USB0_DEV     0x00000001  // USB0 is Device Only
N#define SYSCTL_DC6_USB0_HOSTDEV 0x00000002  // USB is Device or Host
N#define SYSCTL_DC6_USB0_OTG     0x00000003  // USB0 is OTG
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DC7 register.
N//
N//*****************************************************************************
N#define SYSCTL_DC7_DMACH30      0x40000000  // SW
N#define SYSCTL_DC7_DMACH29      0x20000000  // I2S0_TX / CAN1_TX
N#define SYSCTL_DC7_DMACH28      0x10000000  // I2S0_RX / CAN1_RX
N#define SYSCTL_DC7_DMACH27      0x08000000  // CAN1_TX / ADC1_SS3
N#define SYSCTL_DC7_DMACH26      0x04000000  // CAN1_RX / ADC1_SS2
N#define SYSCTL_DC7_DMACH25      0x02000000  // SSI1_TX / ADC1_SS1
N#define SYSCTL_DC7_DMACH24      0x01000000  // SSI1_RX / ADC1_SS0
N#define SYSCTL_DC7_DMACH23      0x00800000  // UART1_TX / CAN2_TX
N#define SYSCTL_DC7_DMACH22      0x00400000  // UART1_RX / CAN2_RX
N#define SYSCTL_DC7_DMACH21      0x00200000  // Timer1B / EPI0_WFIFO
N#define SYSCTL_DC7_DMACH20      0x00100000  // Timer1A / EPI0_NBRFIFO
N#define SYSCTL_DC7_DMACH19      0x00080000  // Timer0B / Timer1B
N#define SYSCTL_DC7_DMACH18      0x00040000  // Timer0A / Timer1A
N#define SYSCTL_DC7_DMACH17      0x00020000  // ADC0_SS3
N#define SYSCTL_DC7_DMACH16      0x00010000  // ADC0_SS2
N#define SYSCTL_DC7_DMACH15      0x00008000  // ADC0_SS1 / Timer2B
N#define SYSCTL_DC7_DMACH14      0x00004000  // ADC0_SS0 / Timer2A
N#define SYSCTL_DC7_DMACH13      0x00002000  // CAN0_TX / UART2_TX
N#define SYSCTL_DC7_DMACH12      0x00001000  // CAN0_RX / UART2_RX
N#define SYSCTL_DC7_DMACH11      0x00000800  // SSI0_TX / SSI1_TX
N#define SYSCTL_DC7_DMACH10      0x00000400  // SSI0_RX / SSI1_RX
N#define SYSCTL_DC7_DMACH9       0x00000200  // UART0_TX / UART1_TX
N#define SYSCTL_DC7_DMACH8       0x00000100  // UART0_RX / UART1_RX
N#define SYSCTL_DC7_DMACH7       0x00000080  // ETH_TX / Timer2B
N#define SYSCTL_DC7_DMACH6       0x00000040  // ETH_RX / Timer2A
N#define SYSCTL_DC7_DMACH5       0x00000020  // USB_EP3_TX / Timer2B
N#define SYSCTL_DC7_DMACH4       0x00000010  // USB_EP3_RX / Timer2A
N#define SYSCTL_DC7_DMACH3       0x00000008  // USB_EP2_TX / Timer3B
N#define SYSCTL_DC7_DMACH2       0x00000004  // USB_EP2_RX / Timer3A
N#define SYSCTL_DC7_DMACH1       0x00000002  // USB_EP1_TX / UART2_TX
N#define SYSCTL_DC7_DMACH0       0x00000001  // USB_EP1_RX / UART2_RX
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DC8 register.
N//
N//*****************************************************************************
N#define SYSCTL_DC8_ADC1AIN15    0x80000000  // ADC Module 1 AIN15 Pin Present
N#define SYSCTL_DC8_ADC1AIN14    0x40000000  // ADC Module 1 AIN14 Pin Present
N#define SYSCTL_DC8_ADC1AIN13    0x20000000  // ADC Module 1 AIN13 Pin Present
N#define SYSCTL_DC8_ADC1AIN12    0x10000000  // ADC Module 1 AIN12 Pin Present
N#define SYSCTL_DC8_ADC1AIN11    0x08000000  // ADC Module 1 AIN11 Pin Present
N#define SYSCTL_DC8_ADC1AIN10    0x04000000  // ADC Module 1 AIN10 Pin Present
N#define SYSCTL_DC8_ADC1AIN9     0x02000000  // ADC Module 1 AIN9 Pin Present
N#define SYSCTL_DC8_ADC1AIN8     0x01000000  // ADC Module 1 AIN8 Pin Present
N#define SYSCTL_DC8_ADC1AIN7     0x00800000  // ADC Module 1 AIN7 Pin Present
N#define SYSCTL_DC8_ADC1AIN6     0x00400000  // ADC Module 1 AIN6 Pin Present
N#define SYSCTL_DC8_ADC1AIN5     0x00200000  // ADC Module 1 AIN5 Pin Present
N#define SYSCTL_DC8_ADC1AIN4     0x00100000  // ADC Module 1 AIN4 Pin Present
N#define SYSCTL_DC8_ADC1AIN3     0x00080000  // ADC Module 1 AIN3 Pin Present
N#define SYSCTL_DC8_ADC1AIN2     0x00040000  // ADC Module 1 AIN2 Pin Present
N#define SYSCTL_DC8_ADC1AIN1     0x00020000  // ADC Module 1 AIN1 Pin Present
N#define SYSCTL_DC8_ADC1AIN0     0x00010000  // ADC Module 1 AIN0 Pin Present
N#define SYSCTL_DC8_ADC0AIN15    0x00008000  // ADC Module 0 AIN15 Pin Present
N#define SYSCTL_DC8_ADC0AIN14    0x00004000  // ADC Module 0 AIN14 Pin Present
N#define SYSCTL_DC8_ADC0AIN13    0x00002000  // ADC Module 0 AIN13 Pin Present
N#define SYSCTL_DC8_ADC0AIN12    0x00001000  // ADC Module 0 AIN12 Pin Present
N#define SYSCTL_DC8_ADC0AIN11    0x00000800  // ADC Module 0 AIN11 Pin Present
N#define SYSCTL_DC8_ADC0AIN10    0x00000400  // ADC Module 0 AIN10 Pin Present
N#define SYSCTL_DC8_ADC0AIN9     0x00000200  // ADC Module 0 AIN9 Pin Present
N#define SYSCTL_DC8_ADC0AIN8     0x00000100  // ADC Module 0 AIN8 Pin Present
N#define SYSCTL_DC8_ADC0AIN7     0x00000080  // ADC Module 0 AIN7 Pin Present
N#define SYSCTL_DC8_ADC0AIN6     0x00000040  // ADC Module 0 AIN6 Pin Present
N#define SYSCTL_DC8_ADC0AIN5     0x00000020  // ADC Module 0 AIN5 Pin Present
N#define SYSCTL_DC8_ADC0AIN4     0x00000010  // ADC Module 0 AIN4 Pin Present
N#define SYSCTL_DC8_ADC0AIN3     0x00000008  // ADC Module 0 AIN3 Pin Present
N#define SYSCTL_DC8_ADC0AIN2     0x00000004  // ADC Module 0 AIN2 Pin Present
N#define SYSCTL_DC8_ADC0AIN1     0x00000002  // ADC Module 0 AIN1 Pin Present
N#define SYSCTL_DC8_ADC0AIN0     0x00000001  // ADC Module 0 AIN0 Pin Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PBORCTL register.
N//
N//*****************************************************************************
N#define SYSCTL_PBORCTL_BOR0     0x00000004  // VDD under BOR0 Event Action
N#define SYSCTL_PBORCTL_BOR1     0x00000002  // VDD under BOR1 Event Action
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRCR0 register.
N//
N//*****************************************************************************
N#define SYSCTL_SRCR0_WDT1       0x10000000  // WDT1 Reset Control
N#define SYSCTL_SRCR0_CAN1       0x02000000  // CAN1 Reset Control
N#define SYSCTL_SRCR0_CAN0       0x01000000  // CAN0 Reset Control
N#define SYSCTL_SRCR0_PWM0       0x00100000  // PWM Reset Control
N#define SYSCTL_SRCR0_ADC1       0x00020000  // ADC1 Reset Control
N#define SYSCTL_SRCR0_ADC0       0x00010000  // ADC0 Reset Control
N#define SYSCTL_SRCR0_HIB        0x00000040  // HIB Reset Control
N#define SYSCTL_SRCR0_WDT0       0x00000008  // WDT0 Reset Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRCR1 register.
N//
N//*****************************************************************************
N#define SYSCTL_SRCR1_COMP1      0x02000000  // Analog Comp 1 Reset Control
N#define SYSCTL_SRCR1_COMP0      0x01000000  // Analog Comp 0 Reset Control
N#define SYSCTL_SRCR1_TIMER3     0x00080000  // Timer 3 Reset Control
N#define SYSCTL_SRCR1_TIMER2     0x00040000  // Timer 2 Reset Control
N#define SYSCTL_SRCR1_TIMER1     0x00020000  // Timer 1 Reset Control
N#define SYSCTL_SRCR1_TIMER0     0x00010000  // Timer 0 Reset Control
N#define SYSCTL_SRCR1_I2C1       0x00004000  // I2C1 Reset Control
N#define SYSCTL_SRCR1_I2C0       0x00001000  // I2C0 Reset Control
N#define SYSCTL_SRCR1_QEI1       0x00000200  // QEI1 Reset Control
N#define SYSCTL_SRCR1_QEI0       0x00000100  // QEI0 Reset Control
N#define SYSCTL_SRCR1_SSI1       0x00000020  // SSI1 Reset Control
N#define SYSCTL_SRCR1_SSI0       0x00000010  // SSI0 Reset Control
N#define SYSCTL_SRCR1_UART2      0x00000004  // UART2 Reset Control
N#define SYSCTL_SRCR1_UART1      0x00000002  // UART1 Reset Control
N#define SYSCTL_SRCR1_UART0      0x00000001  // UART0 Reset Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRCR2 register.
N//
N//*****************************************************************************
N#define SYSCTL_SRCR2_USB0       0x00010000  // USB0 Reset Control
N#define SYSCTL_SRCR2_UDMA       0x00002000  // Micro-DMA Reset Control
N#define SYSCTL_SRCR2_GPIOF      0x00000020  // Port F Reset Control
N#define SYSCTL_SRCR2_GPIOE      0x00000010  // Port E Reset Control
N#define SYSCTL_SRCR2_GPIOD      0x00000008  // Port D Reset Control
N#define SYSCTL_SRCR2_GPIOC      0x00000004  // Port C Reset Control
N#define SYSCTL_SRCR2_GPIOB      0x00000002  // Port B Reset Control
N#define SYSCTL_SRCR2_GPIOA      0x00000001  // Port A Reset Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RIS register.
N//
N//*****************************************************************************
N#define SYSCTL_RIS_VDDARIS      0x00000400  // VDDA Power OK Event Raw
N                                            // Interrupt Status
N#define SYSCTL_RIS_MOSCPUPRIS   0x00000100  // MOSC Power Up Raw Interrupt
N                                            // Status
N#define SYSCTL_RIS_USBPLLLRIS   0x00000080  // USB PLL Lock Raw Interrupt
N                                            // Status
N#define SYSCTL_RIS_PLLLRIS      0x00000040  // PLL Lock Raw Interrupt Status
N#define SYSCTL_RIS_MOFRIS       0x00000008  // Main Oscillator Fault Raw
N                                            // Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_IMC register.
N//
N//*****************************************************************************
N#define SYSCTL_IMC_VDDAIM       0x00000400  // VDDA Power OK Interrupt Mask
N#define SYSCTL_IMC_MOSCPUPIM    0x00000100  // MOSC Power Up Interrupt Mask
N#define SYSCTL_IMC_USBPLLLIM    0x00000080  // USB PLL Lock Interrupt Mask
N#define SYSCTL_IMC_PLLLIM       0x00000040  // PLL Lock Interrupt Mask
N#define SYSCTL_IMC_MOFIM        0x00000008  // Main Oscillator Fault Interrupt
N                                            // Mask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_MISC register.
N//
N//*****************************************************************************
N#define SYSCTL_MISC_VDDAMIS     0x00000400  // VDDA Power OK Masked Interrupt
N                                            // Status
N#define SYSCTL_MISC_MOSCPUPMIS  0x00000100  // MOSC Power Up Masked Interrupt
N                                            // Status
N#define SYSCTL_MISC_USBPLLLMIS  0x00000080  // USB PLL Lock Masked Interrupt
N                                            // Status
N#define SYSCTL_MISC_PLLLMIS     0x00000040  // PLL Lock Masked Interrupt Status
N#define SYSCTL_MISC_MOFMIS      0x00000008  // Main Oscillator Fault Masked
N                                            // Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RESC register.
N//
N//*****************************************************************************
N#define SYSCTL_RESC_MOSCFAIL    0x00010000  // MOSC Failure Reset
N#define SYSCTL_RESC_WDT1        0x00000020  // Watchdog Timer 1 Reset
N#define SYSCTL_RESC_SW          0x00000010  // Software Reset
N#define SYSCTL_RESC_WDT0        0x00000008  // Watchdog Timer 0 Reset
N#define SYSCTL_RESC_BOR         0x00000004  // Brown-Out Reset
N#define SYSCTL_RESC_POR         0x00000002  // Power-On Reset
N#define SYSCTL_RESC_EXT         0x00000001  // External Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCC register.
N//
N//*****************************************************************************
N#define SYSCTL_RCC_ACG          0x08000000  // Auto Clock Gating
N#define SYSCTL_RCC_SYSDIV_M     0x07800000  // System Clock Divisor
N#define SYSCTL_RCC_USESYSDIV    0x00400000  // Enable System Clock Divider
N#define SYSCTL_RCC_USEPWMDIV    0x00100000  // Enable PWM Clock Divisor
N#define SYSCTL_RCC_PWMDIV_M     0x000E0000  // PWM Unit Clock Divisor
N#define SYSCTL_RCC_PWMDIV_2     0x00000000  // PWM clock /2
N#define SYSCTL_RCC_PWMDIV_4     0x00020000  // PWM clock /4
N#define SYSCTL_RCC_PWMDIV_8     0x00040000  // PWM clock /8
N#define SYSCTL_RCC_PWMDIV_16    0x00060000  // PWM clock /16
N#define SYSCTL_RCC_PWMDIV_32    0x00080000  // PWM clock /32
N#define SYSCTL_RCC_PWMDIV_64    0x000A0000  // PWM clock /64
N#define SYSCTL_RCC_PWRDN        0x00002000  // PLL Power Down
N#define SYSCTL_RCC_BYPASS       0x00000800  // PLL Bypass
N#define SYSCTL_RCC_XTAL_M       0x000007C0  // Crystal Value
N#define SYSCTL_RCC_XTAL_4MHZ    0x00000180  // 4 MHz
N#define SYSCTL_RCC_XTAL_4_09MHZ 0x000001C0  // 4.096 MHz
N#define SYSCTL_RCC_XTAL_4_91MHZ 0x00000200  // 4.9152 MHz
N#define SYSCTL_RCC_XTAL_5MHZ    0x00000240  // 5 MHz
N#define SYSCTL_RCC_XTAL_5_12MHZ 0x00000280  // 5.12 MHz
N#define SYSCTL_RCC_XTAL_6MHZ    0x000002C0  // 6 MHz
N#define SYSCTL_RCC_XTAL_6_14MHZ 0x00000300  // 6.144 MHz
N#define SYSCTL_RCC_XTAL_7_37MHZ 0x00000340  // 7.3728 MHz
N#define SYSCTL_RCC_XTAL_8MHZ    0x00000380  // 8 MHz
N#define SYSCTL_RCC_XTAL_8_19MHZ 0x000003C0  // 8.192 MHz
N#define SYSCTL_RCC_XTAL_10MHZ   0x00000400  // 10 MHz
N#define SYSCTL_RCC_XTAL_12MHZ   0x00000440  // 12 MHz
N#define SYSCTL_RCC_XTAL_12_2MHZ 0x00000480  // 12.288 MHz
N#define SYSCTL_RCC_XTAL_13_5MHZ 0x000004C0  // 13.56 MHz
N#define SYSCTL_RCC_XTAL_14_3MHZ 0x00000500  // 14.31818 MHz
N#define SYSCTL_RCC_XTAL_16MHZ   0x00000540  // 16 MHz
N#define SYSCTL_RCC_XTAL_16_3MHZ 0x00000580  // 16.384 MHz
N#define SYSCTL_RCC_XTAL_18MHZ   0x000005C0  // 18.0 MHz
N#define SYSCTL_RCC_XTAL_20MHZ   0x00000600  // 20.0 MHz
N#define SYSCTL_RCC_XTAL_24MHZ   0x00000640  // 24.0 MHz
N#define SYSCTL_RCC_XTAL_25MHZ   0x00000680  // 25.0 MHz
N#define SYSCTL_RCC_OSCSRC_M     0x00000030  // Oscillator Source
N#define SYSCTL_RCC_OSCSRC_MAIN  0x00000000  // MOSC
N#define SYSCTL_RCC_OSCSRC_INT   0x00000010  // IOSC
N#define SYSCTL_RCC_OSCSRC_INT4  0x00000020  // IOSC/4
N#define SYSCTL_RCC_OSCSRC_30    0x00000030  // 30 kHz
N#define SYSCTL_RCC_MOSCDIS      0x00000001  // Main Oscillator Disable
N#define SYSCTL_RCC_SYSDIV_S     23
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_GPIOHBCTL
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_GPIOHBCTL_PORTF  0x00000020  // Port F Advanced High-Performance
N                                            // Bus
N#define SYSCTL_GPIOHBCTL_PORTE  0x00000010  // Port E Advanced High-Performance
N                                            // Bus
N#define SYSCTL_GPIOHBCTL_PORTD  0x00000008  // Port D Advanced High-Performance
N                                            // Bus
N#define SYSCTL_GPIOHBCTL_PORTC  0x00000004  // Port C Advanced High-Performance
N                                            // Bus
N#define SYSCTL_GPIOHBCTL_PORTB  0x00000002  // Port B Advanced High-Performance
N                                            // Bus
N#define SYSCTL_GPIOHBCTL_PORTA  0x00000001  // Port A Advanced High-Performance
N                                            // Bus
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCC2 register.
N//
N//*****************************************************************************
N#define SYSCTL_RCC2_USERCC2     0x80000000  // Use RCC2
N#define SYSCTL_RCC2_DIV400      0x40000000  // Divide PLL as 400 MHz vs. 200
N                                            // MHz
N#define SYSCTL_RCC2_SYSDIV2_M   0x1F800000  // System Clock Divisor 2
N#define SYSCTL_RCC2_SYSDIV2LSB  0x00400000  // Additional LSB for SYSDIV2
N#define SYSCTL_RCC2_USBPWRDN    0x00004000  // Power-Down USB PLL
N#define SYSCTL_RCC2_PWRDN2      0x00002000  // Power-Down PLL 2
N#define SYSCTL_RCC2_BYPASS2     0x00000800  // PLL Bypass 2
N#define SYSCTL_RCC2_OSCSRC2_M   0x00000070  // Oscillator Source 2
N#define SYSCTL_RCC2_OSCSRC2_MO  0x00000000  // MOSC
N#define SYSCTL_RCC2_OSCSRC2_IO  0x00000010  // PIOSC
N#define SYSCTL_RCC2_OSCSRC2_IO4 0x00000020  // PIOSC/4
N#define SYSCTL_RCC2_OSCSRC2_30  0x00000030  // 30 kHz
N#define SYSCTL_RCC2_OSCSRC2_32  0x00000070  // 32.768 kHz
N#define SYSCTL_RCC2_SYSDIV2_S   23
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_MOSCCTL register.
N//
N//*****************************************************************************
N#define SYSCTL_MOSCCTL_NOXTAL   0x00000004  // No Crystal Connected
N#define SYSCTL_MOSCCTL_MOSCIM   0x00000002  // MOSC Failure Action
N#define SYSCTL_MOSCCTL_CVAL     0x00000001  // Clock Validation for MOSC
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGC0 register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGC0_WDT1       0x10000000  // WDT1 Clock Gating Control
N#define SYSCTL_RCGC0_CAN1       0x02000000  // CAN1 Clock Gating Control
N#define SYSCTL_RCGC0_CAN0       0x01000000  // CAN0 Clock Gating Control
N#define SYSCTL_RCGC0_PWM0       0x00100000  // PWM Clock Gating Control
N#define SYSCTL_RCGC0_ADC1       0x00020000  // ADC1 Clock Gating Control
N#define SYSCTL_RCGC0_ADC0       0x00010000  // ADC0 Clock Gating Control
N#define SYSCTL_RCGC0_ADC1SPD_M  0x00000C00  // ADC1 Sample Speed
N#define SYSCTL_RCGC0_ADC1SPD_125K                                             \
N                                0x00000000  // 125K samples/second
X#define SYSCTL_RCGC0_ADC1SPD_125K                                                                             0x00000000  
N#define SYSCTL_RCGC0_ADC1SPD_250K                                             \
N                                0x00000400  // 250K samples/second
X#define SYSCTL_RCGC0_ADC1SPD_250K                                                                             0x00000400  
N#define SYSCTL_RCGC0_ADC1SPD_500K                                             \
N                                0x00000800  // 500K samples/second
X#define SYSCTL_RCGC0_ADC1SPD_500K                                                                             0x00000800  
N#define SYSCTL_RCGC0_ADC1SPD_1M 0x00000C00  // 1M samples/second
N#define SYSCTL_RCGC0_ADC0SPD_M  0x00000300  // ADC0 Sample Speed
N#define SYSCTL_RCGC0_ADC0SPD_125K                                             \
N                                0x00000000  // 125K samples/second
X#define SYSCTL_RCGC0_ADC0SPD_125K                                                                             0x00000000  
N#define SYSCTL_RCGC0_ADC0SPD_250K                                             \
N                                0x00000100  // 250K samples/second
X#define SYSCTL_RCGC0_ADC0SPD_250K                                                                             0x00000100  
N#define SYSCTL_RCGC0_ADC0SPD_500K                                             \
N                                0x00000200  // 500K samples/second
X#define SYSCTL_RCGC0_ADC0SPD_500K                                                                             0x00000200  
N#define SYSCTL_RCGC0_ADC0SPD_1M 0x00000300  // 1M samples/second
N#define SYSCTL_RCGC0_HIB        0x00000040  // HIB Clock Gating Control
N#define SYSCTL_RCGC0_WDT0       0x00000008  // WDT0 Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGC1 register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGC1_COMP1      0x02000000  // Analog Comparator 1 Clock Gating
N#define SYSCTL_RCGC1_COMP0      0x01000000  // Analog Comparator 0 Clock Gating
N#define SYSCTL_RCGC1_TIMER3     0x00080000  // Timer 3 Clock Gating Control
N#define SYSCTL_RCGC1_TIMER2     0x00040000  // Timer 2 Clock Gating Control
N#define SYSCTL_RCGC1_TIMER1     0x00020000  // Timer 1 Clock Gating Control
N#define SYSCTL_RCGC1_TIMER0     0x00010000  // Timer 0 Clock Gating Control
N#define SYSCTL_RCGC1_I2C1       0x00004000  // I2C1 Clock Gating Control
N#define SYSCTL_RCGC1_I2C0       0x00001000  // I2C0 Clock Gating Control
N#define SYSCTL_RCGC1_QEI1       0x00000200  // QEI1 Clock Gating Control
N#define SYSCTL_RCGC1_QEI0       0x00000100  // QEI0 Clock Gating Control
N#define SYSCTL_RCGC1_SSI1       0x00000020  // SSI1 Clock Gating Control
N#define SYSCTL_RCGC1_SSI0       0x00000010  // SSI0 Clock Gating Control
N#define SYSCTL_RCGC1_UART2      0x00000004  // UART2 Clock Gating Control
N#define SYSCTL_RCGC1_UART1      0x00000002  // UART1 Clock Gating Control
N#define SYSCTL_RCGC1_UART0      0x00000001  // UART0 Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGC2 register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGC2_USB0       0x00010000  // USB0 Clock Gating Control
N#define SYSCTL_RCGC2_UDMA       0x00002000  // Micro-DMA Clock Gating Control
N#define SYSCTL_RCGC2_GPIOF      0x00000020  // Port F Clock Gating Control
N#define SYSCTL_RCGC2_GPIOE      0x00000010  // Port E Clock Gating Control
N#define SYSCTL_RCGC2_GPIOD      0x00000008  // Port D Clock Gating Control
N#define SYSCTL_RCGC2_GPIOC      0x00000004  // Port C Clock Gating Control
N#define SYSCTL_RCGC2_GPIOB      0x00000002  // Port B Clock Gating Control
N#define SYSCTL_RCGC2_GPIOA      0x00000001  // Port A Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGC0 register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGC0_WDT1       0x10000000  // WDT1 Clock Gating Control
N#define SYSCTL_SCGC0_CAN1       0x02000000  // CAN1 Clock Gating Control
N#define SYSCTL_SCGC0_CAN0       0x01000000  // CAN0 Clock Gating Control
N#define SYSCTL_SCGC0_PWM0       0x00100000  // PWM Clock Gating Control
N#define SYSCTL_SCGC0_ADC1       0x00020000  // ADC1 Clock Gating Control
N#define SYSCTL_SCGC0_ADC0       0x00010000  // ADC0 Clock Gating Control
N#define SYSCTL_SCGC0_HIB        0x00000040  // HIB Clock Gating Control
N#define SYSCTL_SCGC0_WDT0       0x00000008  // WDT0 Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGC1 register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGC1_COMP1      0x02000000  // Analog Comparator 1 Clock Gating
N#define SYSCTL_SCGC1_COMP0      0x01000000  // Analog Comparator 0 Clock Gating
N#define SYSCTL_SCGC1_TIMER3     0x00080000  // Timer 3 Clock Gating Control
N#define SYSCTL_SCGC1_TIMER2     0x00040000  // Timer 2 Clock Gating Control
N#define SYSCTL_SCGC1_TIMER1     0x00020000  // Timer 1 Clock Gating Control
N#define SYSCTL_SCGC1_TIMER0     0x00010000  // Timer 0 Clock Gating Control
N#define SYSCTL_SCGC1_I2C1       0x00004000  // I2C1 Clock Gating Control
N#define SYSCTL_SCGC1_I2C0       0x00001000  // I2C0 Clock Gating Control
N#define SYSCTL_SCGC1_QEI1       0x00000200  // QEI1 Clock Gating Control
N#define SYSCTL_SCGC1_QEI0       0x00000100  // QEI0 Clock Gating Control
N#define SYSCTL_SCGC1_SSI1       0x00000020  // SSI1 Clock Gating Control
N#define SYSCTL_SCGC1_SSI0       0x00000010  // SSI0 Clock Gating Control
N#define SYSCTL_SCGC1_UART2      0x00000004  // UART2 Clock Gating Control
N#define SYSCTL_SCGC1_UART1      0x00000002  // UART1 Clock Gating Control
N#define SYSCTL_SCGC1_UART0      0x00000001  // UART0 Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGC2 register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGC2_USB0       0x00010000  // USB0 Clock Gating Control
N#define SYSCTL_SCGC2_UDMA       0x00002000  // Micro-DMA Clock Gating Control
N#define SYSCTL_SCGC2_GPIOF      0x00000020  // Port F Clock Gating Control
N#define SYSCTL_SCGC2_GPIOE      0x00000010  // Port E Clock Gating Control
N#define SYSCTL_SCGC2_GPIOD      0x00000008  // Port D Clock Gating Control
N#define SYSCTL_SCGC2_GPIOC      0x00000004  // Port C Clock Gating Control
N#define SYSCTL_SCGC2_GPIOB      0x00000002  // Port B Clock Gating Control
N#define SYSCTL_SCGC2_GPIOA      0x00000001  // Port A Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGC0 register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGC0_WDT1       0x10000000  // WDT1 Clock Gating Control
N#define SYSCTL_DCGC0_CAN1       0x02000000  // CAN1 Clock Gating Control
N#define SYSCTL_DCGC0_CAN0       0x01000000  // CAN0 Clock Gating Control
N#define SYSCTL_DCGC0_PWM0       0x00100000  // PWM Clock Gating Control
N#define SYSCTL_DCGC0_ADC1       0x00020000  // ADC1 Clock Gating Control
N#define SYSCTL_DCGC0_ADC0       0x00010000  // ADC0 Clock Gating Control
N#define SYSCTL_DCGC0_HIB        0x00000040  // HIB Clock Gating Control
N#define SYSCTL_DCGC0_WDT0       0x00000008  // WDT0 Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGC1 register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGC1_COMP1      0x02000000  // Analog Comparator 1 Clock Gating
N#define SYSCTL_DCGC1_COMP0      0x01000000  // Analog Comparator 0 Clock Gating
N#define SYSCTL_DCGC1_TIMER3     0x00080000  // Timer 3 Clock Gating Control
N#define SYSCTL_DCGC1_TIMER2     0x00040000  // Timer 2 Clock Gating Control
N#define SYSCTL_DCGC1_TIMER1     0x00020000  // Timer 1 Clock Gating Control
N#define SYSCTL_DCGC1_TIMER0     0x00010000  // Timer 0 Clock Gating Control
N#define SYSCTL_DCGC1_I2C1       0x00004000  // I2C1 Clock Gating Control
N#define SYSCTL_DCGC1_I2C0       0x00001000  // I2C0 Clock Gating Control
N#define SYSCTL_DCGC1_QEI1       0x00000200  // QEI1 Clock Gating Control
N#define SYSCTL_DCGC1_QEI0       0x00000100  // QEI0 Clock Gating Control
N#define SYSCTL_DCGC1_SSI1       0x00000020  // SSI1 Clock Gating Control
N#define SYSCTL_DCGC1_SSI0       0x00000010  // SSI0 Clock Gating Control
N#define SYSCTL_DCGC1_UART2      0x00000004  // UART2 Clock Gating Control
N#define SYSCTL_DCGC1_UART1      0x00000002  // UART1 Clock Gating Control
N#define SYSCTL_DCGC1_UART0      0x00000001  // UART0 Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGC2 register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGC2_USB0       0x00010000  // USB0 Clock Gating Control
N#define SYSCTL_DCGC2_UDMA       0x00002000  // Micro-DMA Clock Gating Control
N#define SYSCTL_DCGC2_GPIOF      0x00000020  // Port F Clock Gating Control
N#define SYSCTL_DCGC2_GPIOE      0x00000010  // Port E Clock Gating Control
N#define SYSCTL_DCGC2_GPIOD      0x00000008  // Port D Clock Gating Control
N#define SYSCTL_DCGC2_GPIOC      0x00000004  // Port C Clock Gating Control
N#define SYSCTL_DCGC2_GPIOB      0x00000002  // Port B Clock Gating Control
N#define SYSCTL_DCGC2_GPIOA      0x00000001  // Port A Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DSLPCLKCFG
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_DSLPCLKCFG_D_M   0x1F800000  // Divider Field Override
N#define SYSCTL_DSLPCLKCFG_O_M   0x00000070  // Clock Source
N#define SYSCTL_DSLPCLKCFG_O_IGN 0x00000000  // MOSC
N#define SYSCTL_DSLPCLKCFG_O_IO  0x00000010  // PIOSC
N#define SYSCTL_DSLPCLKCFG_O_30  0x00000030  // 30 kHz
N#define SYSCTL_DSLPCLKCFG_O_32  0x00000070  // 32.768 kHz
N#define SYSCTL_DSLPCLKCFG_D_S   23
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SYSPROP register.
N//
N//*****************************************************************************
N#define SYSCTL_SYSPROP_FPU      0x00000001  // FPU Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PIOSCCAL
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_PIOSCCAL_UTEN    0x80000000  // Use User Trim Value
N#define SYSCTL_PIOSCCAL_CAL     0x00000200  // Start Calibration
N#define SYSCTL_PIOSCCAL_UPDATE  0x00000100  // Update Trim
N#define SYSCTL_PIOSCCAL_UT_M    0x0000007F  // User Trim Value
N#define SYSCTL_PIOSCCAL_UT_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PIOSCSTAT
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_PIOSCSTAT_DT_M   0x007F0000  // Default Trim Value
N#define SYSCTL_PIOSCSTAT_CR_M   0x00000300  // Calibration Result
N#define SYSCTL_PIOSCSTAT_CRNONE 0x00000000  // Calibration has not been
N                                            // attempted
N#define SYSCTL_PIOSCSTAT_CRPASS 0x00000100  // The last calibration operation
N                                            // completed to meet 1% accuracy
N#define SYSCTL_PIOSCSTAT_CRFAIL 0x00000200  // The last calibration operation
N                                            // failed to meet 1% accuracy
N#define SYSCTL_PIOSCSTAT_CT_M   0x0000007F  // Calibration Trim Value
N#define SYSCTL_PIOSCSTAT_DT_S   16
N#define SYSCTL_PIOSCSTAT_CT_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PLLFREQ0
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_PLLFREQ0_MFRAC_M 0x000FFC00  // PLL M Fractional Value
N#define SYSCTL_PLLFREQ0_MINT_M  0x000003FF  // PLL M Integer Value
N#define SYSCTL_PLLFREQ0_MFRAC_S 10
N#define SYSCTL_PLLFREQ0_MINT_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PLLFREQ1
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_PLLFREQ1_Q_M     0x00001F00  // PLL Q Value
N#define SYSCTL_PLLFREQ1_N_M     0x0000001F  // PLL N Value
N#define SYSCTL_PLLFREQ1_Q_S     8
N#define SYSCTL_PLLFREQ1_N_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PLLSTAT register.
N//
N//*****************************************************************************
N#define SYSCTL_PLLSTAT_LOCK     0x00000001  // PLL Lock
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DC9 register.
N//
N//*****************************************************************************
N#define SYSCTL_DC9_ADC1DC7      0x00800000  // ADC1 DC7 Present
N#define SYSCTL_DC9_ADC1DC6      0x00400000  // ADC1 DC6 Present
N#define SYSCTL_DC9_ADC1DC5      0x00200000  // ADC1 DC5 Present
N#define SYSCTL_DC9_ADC1DC4      0x00100000  // ADC1 DC4 Present
N#define SYSCTL_DC9_ADC1DC3      0x00080000  // ADC1 DC3 Present
N#define SYSCTL_DC9_ADC1DC2      0x00040000  // ADC1 DC2 Present
N#define SYSCTL_DC9_ADC1DC1      0x00020000  // ADC1 DC1 Present
N#define SYSCTL_DC9_ADC1DC0      0x00010000  // ADC1 DC0 Present
N#define SYSCTL_DC9_ADC0DC7      0x00000080  // ADC0 DC7 Present
N#define SYSCTL_DC9_ADC0DC6      0x00000040  // ADC0 DC6 Present
N#define SYSCTL_DC9_ADC0DC5      0x00000020  // ADC0 DC5 Present
N#define SYSCTL_DC9_ADC0DC4      0x00000010  // ADC0 DC4 Present
N#define SYSCTL_DC9_ADC0DC3      0x00000008  // ADC0 DC3 Present
N#define SYSCTL_DC9_ADC0DC2      0x00000004  // ADC0 DC2 Present
N#define SYSCTL_DC9_ADC0DC1      0x00000002  // ADC0 DC1 Present
N#define SYSCTL_DC9_ADC0DC0      0x00000001  // ADC0 DC0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_NVMSTAT register.
N//
N//*****************************************************************************
N#define SYSCTL_NVMSTAT_FWB      0x00000001  // 32 Word Flash Write Buffer
N                                            // Active
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPWD register.
N//
N//*****************************************************************************
N#define SYSCTL_PPWD_P1          0x00000002  // Watchdog Timer 1 Present
N#define SYSCTL_PPWD_P0          0x00000001  // Watchdog Timer 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPTIMER register.
N//
N//*****************************************************************************
N#define SYSCTL_PPTIMER_P5       0x00000020  // Timer 5 Present
N#define SYSCTL_PPTIMER_P4       0x00000010  // Timer 4 Present
N#define SYSCTL_PPTIMER_P3       0x00000008  // Timer 3 Present
N#define SYSCTL_PPTIMER_P2       0x00000004  // Timer 2 Present
N#define SYSCTL_PPTIMER_P1       0x00000002  // Timer 1 Present
N#define SYSCTL_PPTIMER_P0       0x00000001  // Timer 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPGPIO register.
N//
N//*****************************************************************************
N#define SYSCTL_PPGPIO_P14       0x00004000  // GPIO Port Q Present
N#define SYSCTL_PPGPIO_P13       0x00002000  // GPIO Port P Present
N#define SYSCTL_PPGPIO_P12       0x00001000  // GPIO Port N Present
N#define SYSCTL_PPGPIO_P11       0x00000800  // GPIO Port M Present
N#define SYSCTL_PPGPIO_P10       0x00000400  // GPIO Port L Present
N#define SYSCTL_PPGPIO_P9        0x00000200  // GPIO Port K Present
N#define SYSCTL_PPGPIO_P8        0x00000100  // GPIO Port J Present
N#define SYSCTL_PPGPIO_P7        0x00000080  // GPIO Port H Present
N#define SYSCTL_PPGPIO_P6        0x00000040  // GPIO Port G Present
N#define SYSCTL_PPGPIO_P5        0x00000020  // GPIO Port F Present
N#define SYSCTL_PPGPIO_P4        0x00000010  // GPIO Port E Present
N#define SYSCTL_PPGPIO_P3        0x00000008  // GPIO Port D Present
N#define SYSCTL_PPGPIO_P2        0x00000004  // GPIO Port C Present
N#define SYSCTL_PPGPIO_P1        0x00000002  // GPIO Port B Present
N#define SYSCTL_PPGPIO_P0        0x00000001  // GPIO Port A Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPDMA register.
N//
N//*****************************************************************************
N#define SYSCTL_PPDMA_P0         0x00000001  // uDMA Module Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPHIB register.
N//
N//*****************************************************************************
N#define SYSCTL_PPHIB_P0         0x00000001  // Hibernation Module Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPUART register.
N//
N//*****************************************************************************
N#define SYSCTL_PPUART_P7        0x00000080  // UART Module 7 Present
N#define SYSCTL_PPUART_P6        0x00000040  // UART Module 6 Present
N#define SYSCTL_PPUART_P5        0x00000020  // UART Module 5 Present
N#define SYSCTL_PPUART_P4        0x00000010  // UART Module 4 Present
N#define SYSCTL_PPUART_P3        0x00000008  // UART Module 3 Present
N#define SYSCTL_PPUART_P2        0x00000004  // UART Module 2 Present
N#define SYSCTL_PPUART_P1        0x00000002  // UART Module 1 Present
N#define SYSCTL_PPUART_P0        0x00000001  // UART Module 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPSSI register.
N//
N//*****************************************************************************
N#define SYSCTL_PPSSI_P3         0x00000008  // SSI Module 3 Present
N#define SYSCTL_PPSSI_P2         0x00000004  // SSI Module 2 Present
N#define SYSCTL_PPSSI_P1         0x00000002  // SSI Module 1 Present
N#define SYSCTL_PPSSI_P0         0x00000001  // SSI Module 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPI2C register.
N//
N//*****************************************************************************
N#define SYSCTL_PPI2C_P5         0x00000020  // I2C Module 5 Present
N#define SYSCTL_PPI2C_P4         0x00000010  // I2C Module 4 Present
N#define SYSCTL_PPI2C_P3         0x00000008  // I2C Module 3 Present
N#define SYSCTL_PPI2C_P2         0x00000004  // I2C Module 2 Present
N#define SYSCTL_PPI2C_P1         0x00000002  // I2C Module 1 Present
N#define SYSCTL_PPI2C_P0         0x00000001  // I2C Module 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPUSB register.
N//
N//*****************************************************************************
N#define SYSCTL_PPUSB_P0         0x00000001  // USB Module Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPCAN register.
N//
N//*****************************************************************************
N#define SYSCTL_PPCAN_P1         0x00000002  // CAN Module 1 Present
N#define SYSCTL_PPCAN_P0         0x00000001  // CAN Module 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPADC register.
N//
N//*****************************************************************************
N#define SYSCTL_PPADC_P1         0x00000002  // ADC Module 1 Present
N#define SYSCTL_PPADC_P0         0x00000001  // ADC Module 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPACMP register.
N//
N//*****************************************************************************
N#define SYSCTL_PPACMP_P0        0x00000001  // Analog Comparator Module Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPPWM register.
N//
N//*****************************************************************************
N#define SYSCTL_PPPWM_P1         0x00000002  // PWM Module 1 Present
N#define SYSCTL_PPPWM_P0         0x00000001  // PWM Module 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPQEI register.
N//
N//*****************************************************************************
N#define SYSCTL_PPQEI_P1         0x00000002  // QEI Module 1 Present
N#define SYSCTL_PPQEI_P0         0x00000001  // QEI Module 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPEEPROM
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_PPEEPROM_P0      0x00000001  // EEPROM Module Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PPWTIMER
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_PPWTIMER_P5      0x00000020  // Wide Timer 5 Present
N#define SYSCTL_PPWTIMER_P4      0x00000010  // Wide Timer 4 Present
N#define SYSCTL_PPWTIMER_P3      0x00000008  // Wide Timer 3 Present
N#define SYSCTL_PPWTIMER_P2      0x00000004  // Wide Timer 2 Present
N#define SYSCTL_PPWTIMER_P1      0x00000002  // Wide Timer 1 Present
N#define SYSCTL_PPWTIMER_P0      0x00000001  // Wide Timer 0 Present
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRWD register.
N//
N//*****************************************************************************
N#define SYSCTL_SRWD_R1          0x00000002  // Watchdog Timer 1 Software Reset
N#define SYSCTL_SRWD_R0          0x00000001  // Watchdog Timer 0 Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRTIMER register.
N//
N//*****************************************************************************
N#define SYSCTL_SRTIMER_R5       0x00000020  // Timer 5 Software Reset
N#define SYSCTL_SRTIMER_R4       0x00000010  // Timer 4 Software Reset
N#define SYSCTL_SRTIMER_R3       0x00000008  // Timer 3 Software Reset
N#define SYSCTL_SRTIMER_R2       0x00000004  // Timer 2 Software Reset
N#define SYSCTL_SRTIMER_R1       0x00000002  // Timer 1 Software Reset
N#define SYSCTL_SRTIMER_R0       0x00000001  // Timer 0 Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRGPIO register.
N//
N//*****************************************************************************
N#define SYSCTL_SRGPIO_R5        0x00000020  // GPIO Port F Software Reset
N#define SYSCTL_SRGPIO_R4        0x00000010  // GPIO Port E Software Reset
N#define SYSCTL_SRGPIO_R3        0x00000008  // GPIO Port D Software Reset
N#define SYSCTL_SRGPIO_R2        0x00000004  // GPIO Port C Software Reset
N#define SYSCTL_SRGPIO_R1        0x00000002  // GPIO Port B Software Reset
N#define SYSCTL_SRGPIO_R0        0x00000001  // GPIO Port A Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRDMA register.
N//
N//*****************************************************************************
N#define SYSCTL_SRDMA_R0         0x00000001  // uDMA Module Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRHIB register.
N//
N//*****************************************************************************
N#define SYSCTL_SRHIB_R0         0x00000001  // Hibernation Module Software
N                                            // Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRUART register.
N//
N//*****************************************************************************
N#define SYSCTL_SRUART_R7        0x00000080  // UART Module 7 Software Reset
N#define SYSCTL_SRUART_R6        0x00000040  // UART Module 6 Software Reset
N#define SYSCTL_SRUART_R5        0x00000020  // UART Module 5 Software Reset
N#define SYSCTL_SRUART_R4        0x00000010  // UART Module 4 Software Reset
N#define SYSCTL_SRUART_R3        0x00000008  // UART Module 3 Software Reset
N#define SYSCTL_SRUART_R2        0x00000004  // UART Module 2 Software Reset
N#define SYSCTL_SRUART_R1        0x00000002  // UART Module 1 Software Reset
N#define SYSCTL_SRUART_R0        0x00000001  // UART Module 0 Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRSSI register.
N//
N//*****************************************************************************
N#define SYSCTL_SRSSI_R3         0x00000008  // SSI Module 3 Software Reset
N#define SYSCTL_SRSSI_R2         0x00000004  // SSI Module 2 Software Reset
N#define SYSCTL_SRSSI_R1         0x00000002  // SSI Module 1 Software Reset
N#define SYSCTL_SRSSI_R0         0x00000001  // SSI Module 0 Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRI2C register.
N//
N//*****************************************************************************
N#define SYSCTL_SRI2C_R3         0x00000008  // I2C Module 3 Software Reset
N#define SYSCTL_SRI2C_R2         0x00000004  // I2C Module 2 Software Reset
N#define SYSCTL_SRI2C_R1         0x00000002  // I2C Module 1 Software Reset
N#define SYSCTL_SRI2C_R0         0x00000001  // I2C Module 0 Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRUSB register.
N//
N//*****************************************************************************
N#define SYSCTL_SRUSB_R0         0x00000001  // USB Module Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRCAN register.
N//
N//*****************************************************************************
N#define SYSCTL_SRCAN_R1         0x00000002  // CAN Module 1 Software Reset
N#define SYSCTL_SRCAN_R0         0x00000001  // CAN Module 0 Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRADC register.
N//
N//*****************************************************************************
N#define SYSCTL_SRADC_R1         0x00000002  // ADC Module 1 Software Reset
N#define SYSCTL_SRADC_R0         0x00000001  // ADC Module 0 Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRACMP register.
N//
N//*****************************************************************************
N#define SYSCTL_SRACMP_R0        0x00000001  // Analog Comparator Module 0
N                                            // Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRPWM register.
N//
N//*****************************************************************************
N#define SYSCTL_SRPWM_R1         0x00000002  // PWM Module 1 Software Reset
N#define SYSCTL_SRPWM_R0         0x00000001  // PWM Module 0 Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRQEI register.
N//
N//*****************************************************************************
N#define SYSCTL_SRQEI_R1         0x00000002  // QEI Module 1 Software Reset
N#define SYSCTL_SRQEI_R0         0x00000001  // QEI Module 0 Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SREEPROM
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_SREEPROM_R0      0x00000001  // EEPROM Module Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SRWTIMER
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_SRWTIMER_R5      0x00000020  // Wide Timer 5 Software Reset
N#define SYSCTL_SRWTIMER_R4      0x00000010  // Wide Timer 4 Software Reset
N#define SYSCTL_SRWTIMER_R3      0x00000008  // Wide Timer 3 Software Reset
N#define SYSCTL_SRWTIMER_R2      0x00000004  // Wide Timer 2 Software Reset
N#define SYSCTL_SRWTIMER_R1      0x00000002  // Wide Timer 1 Software Reset
N#define SYSCTL_SRWTIMER_R0      0x00000001  // Wide Timer 0 Software Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCWD register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCWD_R1        0x00000002  // Watchdog Timer 1 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCWD_R0        0x00000001  // Watchdog Timer 0 Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCTIMER
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCTIMER_R5     0x00000020  // Timer 5 Run Mode Clock Gating
N                                            // Control
N#define SYSCTL_RCGCTIMER_R4     0x00000010  // Timer 4 Run Mode Clock Gating
N                                            // Control
N#define SYSCTL_RCGCTIMER_R3     0x00000008  // Timer 3 Run Mode Clock Gating
N                                            // Control
N#define SYSCTL_RCGCTIMER_R2     0x00000004  // Timer 2 Run Mode Clock Gating
N                                            // Control
N#define SYSCTL_RCGCTIMER_R1     0x00000002  // Timer 1 Run Mode Clock Gating
N                                            // Control
N#define SYSCTL_RCGCTIMER_R0     0x00000001  // Timer 0 Run Mode Clock Gating
N                                            // Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCGPIO
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCGPIO_R5      0x00000020  // GPIO Port F Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCGPIO_R4      0x00000010  // GPIO Port E Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCGPIO_R3      0x00000008  // GPIO Port D Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCGPIO_R2      0x00000004  // GPIO Port C Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCGPIO_R1      0x00000002  // GPIO Port B Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCGPIO_R0      0x00000001  // GPIO Port A Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCDMA register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCDMA_R0       0x00000001  // uDMA Module Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCHIB register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCHIB_R0       0x00000001  // Hibernation Module Run Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCUART
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCUART_R7      0x00000080  // UART Module 7 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCUART_R6      0x00000040  // UART Module 6 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCUART_R5      0x00000020  // UART Module 5 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCUART_R4      0x00000010  // UART Module 4 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCUART_R3      0x00000008  // UART Module 3 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCUART_R2      0x00000004  // UART Module 2 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCUART_R1      0x00000002  // UART Module 1 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCUART_R0      0x00000001  // UART Module 0 Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCSSI register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCSSI_R3       0x00000008  // SSI Module 3 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCSSI_R2       0x00000004  // SSI Module 2 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCSSI_R1       0x00000002  // SSI Module 1 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCSSI_R0       0x00000001  // SSI Module 0 Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCI2C register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCI2C_R3       0x00000008  // I2C Module 3 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCI2C_R2       0x00000004  // I2C Module 2 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCI2C_R1       0x00000002  // I2C Module 1 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCI2C_R0       0x00000001  // I2C Module 0 Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCUSB register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCUSB_R0       0x00000001  // USB Module Run Mode Clock Gating
N                                            // Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCCAN register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCCAN_R1       0x00000002  // CAN Module 1 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCCAN_R0       0x00000001  // CAN Module 0 Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCADC register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCADC_R1       0x00000002  // ADC Module 1 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCADC_R0       0x00000001  // ADC Module 0 Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCACMP
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCACMP_R0      0x00000001  // Analog Comparator Module 0 Run
N                                            // Mode Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCPWM register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCPWM_R1       0x00000002  // PWM Module 1 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCPWM_R0       0x00000001  // PWM Module 0 Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCQEI register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCQEI_R1       0x00000002  // QEI Module 1 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCQEI_R0       0x00000001  // QEI Module 0 Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCEEPROM
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCEEPROM_R0    0x00000001  // EEPROM Module Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_RCGCWTIMER
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_RCGCWTIMER_R5    0x00000020  // Wide Timer 5 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCWTIMER_R4    0x00000010  // Wide Timer 4 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCWTIMER_R3    0x00000008  // Wide Timer 3 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCWTIMER_R2    0x00000004  // Wide Timer 2 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCWTIMER_R1    0x00000002  // Wide Timer 1 Run Mode Clock
N                                            // Gating Control
N#define SYSCTL_RCGCWTIMER_R0    0x00000001  // Wide Timer 0 Run Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCWD register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCWD_S1        0x00000002  // Watchdog Timer 1 Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_SCGCWD_S0        0x00000001  // Watchdog Timer 0 Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCTIMER
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCTIMER_S5     0x00000020  // Timer 5 Sleep Mode Clock Gating
N                                            // Control
N#define SYSCTL_SCGCTIMER_S4     0x00000010  // Timer 4 Sleep Mode Clock Gating
N                                            // Control
N#define SYSCTL_SCGCTIMER_S3     0x00000008  // Timer 3 Sleep Mode Clock Gating
N                                            // Control
N#define SYSCTL_SCGCTIMER_S2     0x00000004  // Timer 2 Sleep Mode Clock Gating
N                                            // Control
N#define SYSCTL_SCGCTIMER_S1     0x00000002  // Timer 1 Sleep Mode Clock Gating
N                                            // Control
N#define SYSCTL_SCGCTIMER_S0     0x00000001  // Timer 0 Sleep Mode Clock Gating
N                                            // Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCGPIO
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCGPIO_S5      0x00000020  // GPIO Port F Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCGPIO_S4      0x00000010  // GPIO Port E Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCGPIO_S3      0x00000008  // GPIO Port D Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCGPIO_S2      0x00000004  // GPIO Port C Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCGPIO_S1      0x00000002  // GPIO Port B Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCGPIO_S0      0x00000001  // GPIO Port A Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCDMA register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCDMA_S0       0x00000001  // uDMA Module Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCHIB register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCHIB_S0       0x00000001  // Hibernation Module Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCUART
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCUART_S7      0x00000080  // UART Module 7 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCUART_S6      0x00000040  // UART Module 6 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCUART_S5      0x00000020  // UART Module 5 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCUART_S4      0x00000010  // UART Module 4 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCUART_S3      0x00000008  // UART Module 3 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCUART_S2      0x00000004  // UART Module 2 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCUART_S1      0x00000002  // UART Module 1 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCUART_S0      0x00000001  // UART Module 0 Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCSSI register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCSSI_S3       0x00000008  // SSI Module 3 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCSSI_S2       0x00000004  // SSI Module 2 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCSSI_S1       0x00000002  // SSI Module 1 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCSSI_S0       0x00000001  // SSI Module 0 Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCI2C register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCI2C_S3       0x00000008  // I2C Module 3 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCI2C_S2       0x00000004  // I2C Module 2 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCI2C_S1       0x00000002  // I2C Module 1 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCI2C_S0       0x00000001  // I2C Module 0 Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCUSB register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCUSB_S0       0x00000001  // USB Module Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCCAN register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCCAN_S1       0x00000002  // CAN Module 1 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCCAN_S0       0x00000001  // CAN Module 0 Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCADC register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCADC_S1       0x00000002  // ADC Module 1 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCADC_S0       0x00000001  // ADC Module 0 Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCACMP
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCACMP_S0      0x00000001  // Analog Comparator Module 0 Sleep
N                                            // Mode Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCPWM register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCPWM_S1       0x00000002  // PWM Module 1 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCPWM_S0       0x00000001  // PWM Module 0 Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCQEI register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCQEI_S1       0x00000002  // QEI Module 1 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCQEI_S0       0x00000001  // QEI Module 0 Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCEEPROM
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCEEPROM_S0    0x00000001  // EEPROM Module Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_SCGCWTIMER
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_SCGCWTIMER_S5    0x00000020  // Wide Timer 5 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCWTIMER_S4    0x00000010  // Wide Timer 4 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCWTIMER_S3    0x00000008  // Wide Timer 3 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCWTIMER_S2    0x00000004  // Wide Timer 2 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCWTIMER_S1    0x00000002  // Wide Timer 1 Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_SCGCWTIMER_S0    0x00000001  // Wide Timer 0 Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCWD register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCWD_D1        0x00000002  // Watchdog Timer 1 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCWD_D0        0x00000001  // Watchdog Timer 0 Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCTIMER
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCTIMER_D5     0x00000020  // Timer 5 Deep-Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_DCGCTIMER_D4     0x00000010  // Timer 4 Deep-Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_DCGCTIMER_D3     0x00000008  // Timer 3 Deep-Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_DCGCTIMER_D2     0x00000004  // Timer 2 Deep-Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_DCGCTIMER_D1     0x00000002  // Timer 1 Deep-Sleep Mode Clock
N                                            // Gating Control
N#define SYSCTL_DCGCTIMER_D0     0x00000001  // Timer 0 Deep-Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCGPIO
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCGPIO_D5      0x00000020  // GPIO Port F Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCGPIO_D4      0x00000010  // GPIO Port E Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCGPIO_D3      0x00000008  // GPIO Port D Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCGPIO_D2      0x00000004  // GPIO Port C Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCGPIO_D1      0x00000002  // GPIO Port B Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCGPIO_D0      0x00000001  // GPIO Port A Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCDMA register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCDMA_D0       0x00000001  // uDMA Module Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCHIB register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCHIB_D0       0x00000001  // Hibernation Module Deep-Sleep
N                                            // Mode Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCUART
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCUART_D7      0x00000080  // UART Module 7 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCUART_D6      0x00000040  // UART Module 6 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCUART_D5      0x00000020  // UART Module 5 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCUART_D4      0x00000010  // UART Module 4 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCUART_D3      0x00000008  // UART Module 3 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCUART_D2      0x00000004  // UART Module 2 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCUART_D1      0x00000002  // UART Module 1 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCUART_D0      0x00000001  // UART Module 0 Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCSSI register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCSSI_D3       0x00000008  // SSI Module 3 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCSSI_D2       0x00000004  // SSI Module 2 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCSSI_D1       0x00000002  // SSI Module 1 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCSSI_D0       0x00000001  // SSI Module 0 Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCI2C register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCI2C_D3       0x00000008  // I2C Module 3 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCI2C_D2       0x00000004  // I2C Module 2 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCI2C_D1       0x00000002  // I2C Module 1 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCI2C_D0       0x00000001  // I2C Module 0 Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCUSB register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCUSB_D0       0x00000001  // USB Module Deep-Sleep Mode Clock
N                                            // Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCCAN register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCCAN_D1       0x00000002  // CAN Module 1 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCCAN_D0       0x00000001  // CAN Module 0 Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCADC register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCADC_D1       0x00000002  // ADC Module 1 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCADC_D0       0x00000001  // ADC Module 0 Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCACMP
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCACMP_D0      0x00000001  // Analog Comparator Module 0
N                                            // Deep-Sleep Mode Clock Gating
N                                            // Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCPWM register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCPWM_D1       0x00000002  // PWM Module 1 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCPWM_D0       0x00000001  // PWM Module 0 Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCQEI register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCQEI_D1       0x00000002  // QEI Module 1 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCQEI_D0       0x00000001  // QEI Module 0 Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCEEPROM
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCEEPROM_D0    0x00000001  // EEPROM Module Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_DCGCWTIMER
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_DCGCWTIMER_D5    0x00000020  // Wide Timer 5 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCWTIMER_D4    0x00000010  // Wide Timer 4 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCWTIMER_D3    0x00000008  // Wide Timer 3 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCWTIMER_D2    0x00000004  // Wide Timer 2 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCWTIMER_D1    0x00000002  // Wide Timer 1 Deep-Sleep Mode
N                                            // Clock Gating Control
N#define SYSCTL_DCGCWTIMER_D0    0x00000001  // Wide Timer 0 Deep-Sleep Mode
N                                            // Clock Gating Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRWD register.
N//
N//*****************************************************************************
N#define SYSCTL_PRWD_R1          0x00000002  // Watchdog Timer 1 Peripheral
N                                            // Ready
N#define SYSCTL_PRWD_R0          0x00000001  // Watchdog Timer 0 Peripheral
N                                            // Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRTIMER register.
N//
N//*****************************************************************************
N#define SYSCTL_PRTIMER_R5       0x00000020  // Timer 5 Peripheral Ready
N#define SYSCTL_PRTIMER_R4       0x00000010  // Timer 4 Peripheral Ready
N#define SYSCTL_PRTIMER_R3       0x00000008  // Timer 3 Peripheral Ready
N#define SYSCTL_PRTIMER_R2       0x00000004  // Timer 2 Peripheral Ready
N#define SYSCTL_PRTIMER_R1       0x00000002  // Timer 1 Peripheral Ready
N#define SYSCTL_PRTIMER_R0       0x00000001  // Timer 0 Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRGPIO register.
N//
N//*****************************************************************************
N#define SYSCTL_PRGPIO_R5        0x00000020  // GPIO Port F Peripheral Ready
N#define SYSCTL_PRGPIO_R4        0x00000010  // GPIO Port E Peripheral Ready
N#define SYSCTL_PRGPIO_R3        0x00000008  // GPIO Port D Peripheral Ready
N#define SYSCTL_PRGPIO_R2        0x00000004  // GPIO Port C Peripheral Ready
N#define SYSCTL_PRGPIO_R1        0x00000002  // GPIO Port B Peripheral Ready
N#define SYSCTL_PRGPIO_R0        0x00000001  // GPIO Port A Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRDMA register.
N//
N//*****************************************************************************
N#define SYSCTL_PRDMA_R0         0x00000001  // uDMA Module Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRHIB register.
N//
N//*****************************************************************************
N#define SYSCTL_PRHIB_R0         0x00000001  // Hibernation Module Peripheral
N                                            // Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRUART register.
N//
N//*****************************************************************************
N#define SYSCTL_PRUART_R7        0x00000080  // UART Module 7 Peripheral Ready
N#define SYSCTL_PRUART_R6        0x00000040  // UART Module 6 Peripheral Ready
N#define SYSCTL_PRUART_R5        0x00000020  // UART Module 5 Peripheral Ready
N#define SYSCTL_PRUART_R4        0x00000010  // UART Module 4 Peripheral Ready
N#define SYSCTL_PRUART_R3        0x00000008  // UART Module 3 Peripheral Ready
N#define SYSCTL_PRUART_R2        0x00000004  // UART Module 2 Peripheral Ready
N#define SYSCTL_PRUART_R1        0x00000002  // UART Module 1 Peripheral Ready
N#define SYSCTL_PRUART_R0        0x00000001  // UART Module 0 Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRSSI register.
N//
N//*****************************************************************************
N#define SYSCTL_PRSSI_R3         0x00000008  // SSI Module 3 Peripheral Ready
N#define SYSCTL_PRSSI_R2         0x00000004  // SSI Module 2 Peripheral Ready
N#define SYSCTL_PRSSI_R1         0x00000002  // SSI Module 1 Peripheral Ready
N#define SYSCTL_PRSSI_R0         0x00000001  // SSI Module 0 Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRI2C register.
N//
N//*****************************************************************************
N#define SYSCTL_PRI2C_R3         0x00000008  // I2C Module 3 Peripheral Ready
N#define SYSCTL_PRI2C_R2         0x00000004  // I2C Module 2 Peripheral Ready
N#define SYSCTL_PRI2C_R1         0x00000002  // I2C Module 1 Peripheral Ready
N#define SYSCTL_PRI2C_R0         0x00000001  // I2C Module 0 Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRUSB register.
N//
N//*****************************************************************************
N#define SYSCTL_PRUSB_R0         0x00000001  // USB Module Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRCAN register.
N//
N//*****************************************************************************
N#define SYSCTL_PRCAN_R1         0x00000002  // CAN Module 1 Peripheral Ready
N#define SYSCTL_PRCAN_R0         0x00000001  // CAN Module 0 Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRADC register.
N//
N//*****************************************************************************
N#define SYSCTL_PRADC_R1         0x00000002  // ADC Module 1 Peripheral Ready
N#define SYSCTL_PRADC_R0         0x00000001  // ADC Module 0 Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRACMP register.
N//
N//*****************************************************************************
N#define SYSCTL_PRACMP_R0        0x00000001  // Analog Comparator Module 0
N                                            // Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRPWM register.
N//
N//*****************************************************************************
N#define SYSCTL_PRPWM_R1         0x00000002  // PWM Module 1 Peripheral Ready
N#define SYSCTL_PRPWM_R0         0x00000001  // PWM Module 0 Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRQEI register.
N//
N//*****************************************************************************
N#define SYSCTL_PRQEI_R1         0x00000002  // QEI Module 1 Peripheral Ready
N#define SYSCTL_PRQEI_R0         0x00000001  // QEI Module 0 Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PREEPROM
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_PREEPROM_R0      0x00000001  // EEPROM Module Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the SYSCTL_PRWTIMER
N// register.
N//
N//*****************************************************************************
N#define SYSCTL_PRWTIMER_R5      0x00000020  // Wide Timer 5 Peripheral Ready
N#define SYSCTL_PRWTIMER_R4      0x00000010  // Wide Timer 4 Peripheral Ready
N#define SYSCTL_PRWTIMER_R3      0x00000008  // Wide Timer 3 Peripheral Ready
N#define SYSCTL_PRWTIMER_R2      0x00000004  // Wide Timer 2 Peripheral Ready
N#define SYSCTL_PRWTIMER_R1      0x00000002  // Wide Timer 1 Peripheral Ready
N#define SYSCTL_PRWTIMER_R0      0x00000001  // Wide Timer 0 Peripheral Ready
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_STAT register.
N//
N//*****************************************************************************
N#define UDMA_STAT_DMACHANS_M    0x001F0000  // Available uDMA Channels Minus 1
N#define UDMA_STAT_STATE_M       0x000000F0  // Control State Machine Status
N#define UDMA_STAT_STATE_IDLE    0x00000000  // Idle
N#define UDMA_STAT_STATE_RD_CTRL 0x00000010  // Reading channel controller data
N#define UDMA_STAT_STATE_RD_SRCENDP                                            \
N                                0x00000020  // Reading source end pointer
X#define UDMA_STAT_STATE_RD_SRCENDP                                                                            0x00000020  
N#define UDMA_STAT_STATE_RD_DSTENDP                                            \
N                                0x00000030  // Reading destination end pointer
X#define UDMA_STAT_STATE_RD_DSTENDP                                                                            0x00000030  
N#define UDMA_STAT_STATE_RD_SRCDAT                                             \
N                                0x00000040  // Reading source data
X#define UDMA_STAT_STATE_RD_SRCDAT                                                                             0x00000040  
N#define UDMA_STAT_STATE_WR_DSTDAT                                             \
N                                0x00000050  // Writing destination data
X#define UDMA_STAT_STATE_WR_DSTDAT                                                                             0x00000050  
N#define UDMA_STAT_STATE_WAIT    0x00000060  // Waiting for uDMA request to
N                                            // clear
N#define UDMA_STAT_STATE_WR_CTRL 0x00000070  // Writing channel controller data
N#define UDMA_STAT_STATE_STALL   0x00000080  // Stalled
N#define UDMA_STAT_STATE_DONE    0x00000090  // Done
N#define UDMA_STAT_STATE_UNDEF   0x000000A0  // Undefined
N#define UDMA_STAT_MASTEN        0x00000001  // Master Enable Status
N#define UDMA_STAT_DMACHANS_S    16
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_CFG register.
N//
N//*****************************************************************************
N#define UDMA_CFG_MASTEN         0x00000001  // Controller Master Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_CTLBASE register.
N//
N//*****************************************************************************
N#define UDMA_CTLBASE_ADDR_M     0xFFFFFC00  // Channel Control Base Address
N#define UDMA_CTLBASE_ADDR_S     10
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_ALTBASE register.
N//
N//*****************************************************************************
N#define UDMA_ALTBASE_ADDR_M     0xFFFFFFFF  // Alternate Channel Address
N                                            // Pointer
N#define UDMA_ALTBASE_ADDR_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_WAITSTAT register.
N//
N//*****************************************************************************
N#define UDMA_WAITSTAT_WAITREQ_M 0xFFFFFFFF  // Channel [n] Wait Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_SWREQ register.
N//
N//*****************************************************************************
N#define UDMA_SWREQ_M            0xFFFFFFFF  // Channel [n] Software Request
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_USEBURSTSET
N// register.
N//
N//*****************************************************************************
N#define UDMA_USEBURSTSET_SET_M  0xFFFFFFFF  // Channel [n] Useburst Set
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_USEBURSTCLR
N// register.
N//
N//*****************************************************************************
N#define UDMA_USEBURSTCLR_CLR_M  0xFFFFFFFF  // Channel [n] Useburst Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_REQMASKSET
N// register.
N//
N//*****************************************************************************
N#define UDMA_REQMASKSET_SET_M   0xFFFFFFFF  // Channel [n] Request Mask Set
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_REQMASKCLR
N// register.
N//
N//*****************************************************************************
N#define UDMA_REQMASKCLR_CLR_M   0xFFFFFFFF  // Channel [n] Request Mask Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_ENASET register.
N//
N//*****************************************************************************
N#define UDMA_ENASET_SET_M       0xFFFFFFFF  // Channel [n] Enable Set
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_ENACLR register.
N//
N//*****************************************************************************
N#define UDMA_ENACLR_CLR_M       0xFFFFFFFF  // Clear Channel [n] Enable Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_ALTSET register.
N//
N//*****************************************************************************
N#define UDMA_ALTSET_SET_M       0xFFFFFFFF  // Channel [n] Alternate Set
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_ALTCLR register.
N//
N//*****************************************************************************
N#define UDMA_ALTCLR_CLR_M       0xFFFFFFFF  // Channel [n] Alternate Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_PRIOSET register.
N//
N//*****************************************************************************
N#define UDMA_PRIOSET_SET_M      0xFFFFFFFF  // Channel [n] Priority Set
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_PRIOCLR register.
N//
N//*****************************************************************************
N#define UDMA_PRIOCLR_CLR_M      0xFFFFFFFF  // Channel [n] Priority Clear
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_ERRCLR register.
N//
N//*****************************************************************************
N#define UDMA_ERRCLR_ERRCLR      0x00000001  // uDMA Bus Error Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_CHASGN register.
N//
N//*****************************************************************************
N#define UDMA_CHASGN_M           0xFFFFFFFF  // Channel [n] Assignment Select
N#define UDMA_CHASGN_PRIMARY     0x00000000  // Use the primary channel
N                                            // assignment
N#define UDMA_CHASGN_SECONDARY   0x00000001  // Use the secondary channel
N                                            // assignment
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_CHIS register.
N//
N//*****************************************************************************
N#define UDMA_CHIS_M             0xFFFFFFFF  // Channel [n] Interrupt Status
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_CHMAP0 register.
N//
N//*****************************************************************************
N#define UDMA_CHMAP0_CH7SEL_M    0xF0000000  // uDMA Channel 7 Source Select
N#define UDMA_CHMAP0_CH6SEL_M    0x0F000000  // uDMA Channel 6 Source Select
N#define UDMA_CHMAP0_CH5SEL_M    0x00F00000  // uDMA Channel 5 Source Select
N#define UDMA_CHMAP0_CH4SEL_M    0x000F0000  // uDMA Channel 4 Source Select
N#define UDMA_CHMAP0_CH3SEL_M    0x0000F000  // uDMA Channel 3 Source Select
N#define UDMA_CHMAP0_CH2SEL_M    0x00000F00  // uDMA Channel 2 Source Select
N#define UDMA_CHMAP0_CH1SEL_M    0x000000F0  // uDMA Channel 1 Source Select
N#define UDMA_CHMAP0_CH0SEL_M    0x0000000F  // uDMA Channel 0 Source Select
N#define UDMA_CHMAP0_CH7SEL_S    28
N#define UDMA_CHMAP0_CH6SEL_S    24
N#define UDMA_CHMAP0_CH5SEL_S    20
N#define UDMA_CHMAP0_CH4SEL_S    16
N#define UDMA_CHMAP0_CH3SEL_S    12
N#define UDMA_CHMAP0_CH2SEL_S    8
N#define UDMA_CHMAP0_CH1SEL_S    4
N#define UDMA_CHMAP0_CH0SEL_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_CHMAP1 register.
N//
N//*****************************************************************************
N#define UDMA_CHMAP1_CH15SEL_M   0xF0000000  // uDMA Channel 15 Source Select
N#define UDMA_CHMAP1_CH14SEL_M   0x0F000000  // uDMA Channel 14 Source Select
N#define UDMA_CHMAP1_CH13SEL_M   0x00F00000  // uDMA Channel 13 Source Select
N#define UDMA_CHMAP1_CH12SEL_M   0x000F0000  // uDMA Channel 12 Source Select
N#define UDMA_CHMAP1_CH11SEL_M   0x0000F000  // uDMA Channel 11 Source Select
N#define UDMA_CHMAP1_CH10SEL_M   0x00000F00  // uDMA Channel 10 Source Select
N#define UDMA_CHMAP1_CH9SEL_M    0x000000F0  // uDMA Channel 9 Source Select
N#define UDMA_CHMAP1_CH8SEL_M    0x0000000F  // uDMA Channel 8 Source Select
N#define UDMA_CHMAP1_CH15SEL_S   28
N#define UDMA_CHMAP1_CH14SEL_S   24
N#define UDMA_CHMAP1_CH13SEL_S   20
N#define UDMA_CHMAP1_CH12SEL_S   16
N#define UDMA_CHMAP1_CH11SEL_S   12
N#define UDMA_CHMAP1_CH10SEL_S   8
N#define UDMA_CHMAP1_CH9SEL_S    4
N#define UDMA_CHMAP1_CH8SEL_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_CHMAP2 register.
N//
N//*****************************************************************************
N#define UDMA_CHMAP2_CH23SEL_M   0xF0000000  // uDMA Channel 23 Source Select
N#define UDMA_CHMAP2_CH22SEL_M   0x0F000000  // uDMA Channel 22 Source Select
N#define UDMA_CHMAP2_CH21SEL_M   0x00F00000  // uDMA Channel 21 Source Select
N#define UDMA_CHMAP2_CH20SEL_M   0x000F0000  // uDMA Channel 20 Source Select
N#define UDMA_CHMAP2_CH19SEL_M   0x0000F000  // uDMA Channel 19 Source Select
N#define UDMA_CHMAP2_CH18SEL_M   0x00000F00  // uDMA Channel 18 Source Select
N#define UDMA_CHMAP2_CH17SEL_M   0x000000F0  // uDMA Channel 17 Source Select
N#define UDMA_CHMAP2_CH16SEL_M   0x0000000F  // uDMA Channel 16 Source Select
N#define UDMA_CHMAP2_CH23SEL_S   28
N#define UDMA_CHMAP2_CH22SEL_S   24
N#define UDMA_CHMAP2_CH21SEL_S   20
N#define UDMA_CHMAP2_CH20SEL_S   16
N#define UDMA_CHMAP2_CH19SEL_S   12
N#define UDMA_CHMAP2_CH18SEL_S   8
N#define UDMA_CHMAP2_CH17SEL_S   4
N#define UDMA_CHMAP2_CH16SEL_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_CHMAP3 register.
N//
N//*****************************************************************************
N#define UDMA_CHMAP3_CH31SEL_M   0xF0000000  // uDMA Channel 31 Source Select
N#define UDMA_CHMAP3_CH30SEL_M   0x0F000000  // uDMA Channel 30 Source Select
N#define UDMA_CHMAP3_CH29SEL_M   0x00F00000  // uDMA Channel 29 Source Select
N#define UDMA_CHMAP3_CH28SEL_M   0x000F0000  // uDMA Channel 28 Source Select
N#define UDMA_CHMAP3_CH27SEL_M   0x0000F000  // uDMA Channel 27 Source Select
N#define UDMA_CHMAP3_CH26SEL_M   0x00000F00  // uDMA Channel 26 Source Select
N#define UDMA_CHMAP3_CH25SEL_M   0x000000F0  // uDMA Channel 25 Source Select
N#define UDMA_CHMAP3_CH24SEL_M   0x0000000F  // uDMA Channel 24 Source Select
N#define UDMA_CHMAP3_CH31SEL_S   28
N#define UDMA_CHMAP3_CH30SEL_S   24
N#define UDMA_CHMAP3_CH29SEL_S   20
N#define UDMA_CHMAP3_CH28SEL_S   16
N#define UDMA_CHMAP3_CH27SEL_S   12
N#define UDMA_CHMAP3_CH26SEL_S   8
N#define UDMA_CHMAP3_CH25SEL_S   4
N#define UDMA_CHMAP3_CH24SEL_S   0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_O_SRCENDP register.
N//
N//*****************************************************************************
N#define UDMA_SRCENDP_ADDR_M     0xFFFFFFFF  // Source Address End Pointer
N#define UDMA_SRCENDP_ADDR_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_O_DSTENDP register.
N//
N//*****************************************************************************
N#define UDMA_DSTENDP_ADDR_M     0xFFFFFFFF  // Destination Address End Pointer
N#define UDMA_DSTENDP_ADDR_S     0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the UDMA_O_CHCTL register.
N//
N//*****************************************************************************
N#define UDMA_CHCTL_DSTINC_M     0xC0000000  // Destination Address Increment
N#define UDMA_CHCTL_DSTINC_8     0x00000000  // Byte
N#define UDMA_CHCTL_DSTINC_16    0x40000000  // Half-word
N#define UDMA_CHCTL_DSTINC_32    0x80000000  // Word
N#define UDMA_CHCTL_DSTINC_NONE  0xC0000000  // No increment
N#define UDMA_CHCTL_DSTSIZE_M    0x30000000  // Destination Data Size
N#define UDMA_CHCTL_DSTSIZE_8    0x00000000  // Byte
N#define UDMA_CHCTL_DSTSIZE_16   0x10000000  // Half-word
N#define UDMA_CHCTL_DSTSIZE_32   0x20000000  // Word
N#define UDMA_CHCTL_SRCINC_M     0x0C000000  // Source Address Increment
N#define UDMA_CHCTL_SRCINC_8     0x00000000  // Byte
N#define UDMA_CHCTL_SRCINC_16    0x04000000  // Half-word
N#define UDMA_CHCTL_SRCINC_32    0x08000000  // Word
N#define UDMA_CHCTL_SRCINC_NONE  0x0C000000  // No increment
N#define UDMA_CHCTL_SRCSIZE_M    0x03000000  // Source Data Size
N#define UDMA_CHCTL_SRCSIZE_8    0x00000000  // Byte
N#define UDMA_CHCTL_SRCSIZE_16   0x01000000  // Half-word
N#define UDMA_CHCTL_SRCSIZE_32   0x02000000  // Word
N#define UDMA_CHCTL_ARBSIZE_M    0x0003C000  // Arbitration Size
N#define UDMA_CHCTL_ARBSIZE_1    0x00000000  // 1 Transfer
N#define UDMA_CHCTL_ARBSIZE_2    0x00004000  // 2 Transfers
N#define UDMA_CHCTL_ARBSIZE_4    0x00008000  // 4 Transfers
N#define UDMA_CHCTL_ARBSIZE_8    0x0000C000  // 8 Transfers
N#define UDMA_CHCTL_ARBSIZE_16   0x00010000  // 16 Transfers
N#define UDMA_CHCTL_ARBSIZE_32   0x00014000  // 32 Transfers
N#define UDMA_CHCTL_ARBSIZE_64   0x00018000  // 64 Transfers
N#define UDMA_CHCTL_ARBSIZE_128  0x0001C000  // 128 Transfers
N#define UDMA_CHCTL_ARBSIZE_256  0x00020000  // 256 Transfers
N#define UDMA_CHCTL_ARBSIZE_512  0x00024000  // 512 Transfers
N#define UDMA_CHCTL_ARBSIZE_1024 0x00028000  // 1024 Transfers
N#define UDMA_CHCTL_XFERSIZE_M   0x00003FF0  // Transfer Size (minus 1)
N#define UDMA_CHCTL_NXTUSEBURST  0x00000008  // Next Useburst
N#define UDMA_CHCTL_XFERMODE_M   0x00000007  // uDMA Transfer Mode
N#define UDMA_CHCTL_XFERMODE_STOP                                              \
N                                0x00000000  // Stop
X#define UDMA_CHCTL_XFERMODE_STOP                                                                              0x00000000  
N#define UDMA_CHCTL_XFERMODE_BASIC                                             \
N                                0x00000001  // Basic
X#define UDMA_CHCTL_XFERMODE_BASIC                                                                             0x00000001  
N#define UDMA_CHCTL_XFERMODE_AUTO                                              \
N                                0x00000002  // Auto-Request
X#define UDMA_CHCTL_XFERMODE_AUTO                                                                              0x00000002  
N#define UDMA_CHCTL_XFERMODE_PINGPONG                                          \
N                                0x00000003  // Ping-Pong
X#define UDMA_CHCTL_XFERMODE_PINGPONG                                                                          0x00000003  
N#define UDMA_CHCTL_XFERMODE_MEM_SG                                            \
N                                0x00000004  // Memory Scatter-Gather
X#define UDMA_CHCTL_XFERMODE_MEM_SG                                                                            0x00000004  
N#define UDMA_CHCTL_XFERMODE_MEM_SGA                                           \
N                                0x00000005  // Alternate Memory Scatter-Gather
X#define UDMA_CHCTL_XFERMODE_MEM_SGA                                                                           0x00000005  
N#define UDMA_CHCTL_XFERMODE_PER_SG                                            \
N                                0x00000006  // Peripheral Scatter-Gather
X#define UDMA_CHCTL_XFERMODE_PER_SG                                                                            0x00000006  
N#define UDMA_CHCTL_XFERMODE_PER_SGA                                           \
N                                0x00000007  // Alternate Peripheral
X#define UDMA_CHCTL_XFERMODE_PER_SGA                                                                           0x00000007  
N                                            // Scatter-Gather
N#define UDMA_CHCTL_XFERSIZE_S   4
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_ACTLR register.
N//
N//*****************************************************************************
N#define NVIC_ACTLR_DISOOFP      0x00000200  // Disable Out-Of-Order Floating
N                                            // Point
N#define NVIC_ACTLR_DISFPCA      0x00000100  // Disable CONTROL
N#define NVIC_ACTLR_DISFOLD      0x00000004  // Disable IT Folding
N#define NVIC_ACTLR_DISWBUF      0x00000002  // Disable Write Buffer
N#define NVIC_ACTLR_DISMCYC      0x00000001  // Disable Interrupts of Multiple
N                                            // Cycle Instructions
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_ST_CTRL register.
N//
N//*****************************************************************************
N#define NVIC_ST_CTRL_COUNT      0x00010000  // Count Flag
N#define NVIC_ST_CTRL_CLK_SRC    0x00000004  // Clock Source
N#define NVIC_ST_CTRL_INTEN      0x00000002  // Interrupt Enable
N#define NVIC_ST_CTRL_ENABLE     0x00000001  // Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_ST_RELOAD register.
N//
N//*****************************************************************************
N#define NVIC_ST_RELOAD_M        0x00FFFFFF  // Reload Value
N#define NVIC_ST_RELOAD_S        0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_ST_CURRENT
N// register.
N//
N//*****************************************************************************
N#define NVIC_ST_CURRENT_M       0x00FFFFFF  // Current Value
N#define NVIC_ST_CURRENT_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_EN0 register.
N//
N//*****************************************************************************
N#define NVIC_EN0_INT_M          0xFFFFFFFF  // Interrupt Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_EN1 register.
N//
N//*****************************************************************************
N#define NVIC_EN1_INT_M          0xFFFFFFFF  // Interrupt Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_EN2 register.
N//
N//*****************************************************************************
N#define NVIC_EN2_INT_M          0xFFFFFFFF  // Interrupt Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_EN3 register.
N//
N//*****************************************************************************
N#define NVIC_EN3_INT_M          0xFFFFFFFF  // Interrupt Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_EN4 register.
N//
N//*****************************************************************************
N#define NVIC_EN4_INT_M          0x000007FF  // Interrupt Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_DIS0 register.
N//
N//*****************************************************************************
N#define NVIC_DIS0_INT_M         0xFFFFFFFF  // Interrupt Disable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_DIS1 register.
N//
N//*****************************************************************************
N#define NVIC_DIS1_INT_M         0xFFFFFFFF  // Interrupt Disable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_DIS2 register.
N//
N//*****************************************************************************
N#define NVIC_DIS2_INT_M         0xFFFFFFFF  // Interrupt Disable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_DIS3 register.
N//
N//*****************************************************************************
N#define NVIC_DIS3_INT_M         0xFFFFFFFF  // Interrupt Disable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_DIS4 register.
N//
N//*****************************************************************************
N#define NVIC_DIS4_INT_M         0x000007FF  // Interrupt Disable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PEND0 register.
N//
N//*****************************************************************************
N#define NVIC_PEND0_INT_M        0xFFFFFFFF  // Interrupt Set Pending
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PEND1 register.
N//
N//*****************************************************************************
N#define NVIC_PEND1_INT_M        0xFFFFFFFF  // Interrupt Set Pending
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PEND2 register.
N//
N//*****************************************************************************
N#define NVIC_PEND2_INT_M        0xFFFFFFFF  // Interrupt Set Pending
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PEND3 register.
N//
N//*****************************************************************************
N#define NVIC_PEND3_INT_M        0xFFFFFFFF  // Interrupt Set Pending
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PEND4 register.
N//
N//*****************************************************************************
N#define NVIC_PEND4_INT_M        0x000007FF  // Interrupt Set Pending
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_UNPEND0 register.
N//
N//*****************************************************************************
N#define NVIC_UNPEND0_INT_M      0xFFFFFFFF  // Interrupt Clear Pending
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_UNPEND1 register.
N//
N//*****************************************************************************
N#define NVIC_UNPEND1_INT_M      0xFFFFFFFF  // Interrupt Clear Pending
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_UNPEND2 register.
N//
N//*****************************************************************************
N#define NVIC_UNPEND2_INT_M      0xFFFFFFFF  // Interrupt Clear Pending
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_UNPEND3 register.
N//
N//*****************************************************************************
N#define NVIC_UNPEND3_INT_M      0xFFFFFFFF  // Interrupt Clear Pending
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_UNPEND4 register.
N//
N//*****************************************************************************
N#define NVIC_UNPEND4_INT_M      0x000007FF  // Interrupt Clear Pending
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_ACTIVE0 register.
N//
N//*****************************************************************************
N#define NVIC_ACTIVE0_INT_M      0xFFFFFFFF  // Interrupt Active
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_ACTIVE1 register.
N//
N//*****************************************************************************
N#define NVIC_ACTIVE1_INT_M      0xFFFFFFFF  // Interrupt Active
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_ACTIVE2 register.
N//
N//*****************************************************************************
N#define NVIC_ACTIVE2_INT_M      0xFFFFFFFF  // Interrupt Active
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_ACTIVE3 register.
N//
N//*****************************************************************************
N#define NVIC_ACTIVE3_INT_M      0xFFFFFFFF  // Interrupt Active
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_ACTIVE4 register.
N//
N//*****************************************************************************
N#define NVIC_ACTIVE4_INT_M      0x000007FF  // Interrupt Active
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI0 register.
N//
N//*****************************************************************************
N#define NVIC_PRI0_INT3_M        0xE0000000  // Interrupt 3 Priority Mask
N#define NVIC_PRI0_INT2_M        0x00E00000  // Interrupt 2 Priority Mask
N#define NVIC_PRI0_INT1_M        0x0000E000  // Interrupt 1 Priority Mask
N#define NVIC_PRI0_INT0_M        0x000000E0  // Interrupt 0 Priority Mask
N#define NVIC_PRI0_INT3_S        29
N#define NVIC_PRI0_INT2_S        21
N#define NVIC_PRI0_INT1_S        13
N#define NVIC_PRI0_INT0_S        5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI1 register.
N//
N//*****************************************************************************
N#define NVIC_PRI1_INT7_M        0xE0000000  // Interrupt 7 Priority Mask
N#define NVIC_PRI1_INT6_M        0x00E00000  // Interrupt 6 Priority Mask
N#define NVIC_PRI1_INT5_M        0x0000E000  // Interrupt 5 Priority Mask
N#define NVIC_PRI1_INT4_M        0x000000E0  // Interrupt 4 Priority Mask
N#define NVIC_PRI1_INT7_S        29
N#define NVIC_PRI1_INT6_S        21
N#define NVIC_PRI1_INT5_S        13
N#define NVIC_PRI1_INT4_S        5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI2 register.
N//
N//*****************************************************************************
N#define NVIC_PRI2_INT11_M       0xE0000000  // Interrupt 11 Priority Mask
N#define NVIC_PRI2_INT10_M       0x00E00000  // Interrupt 10 Priority Mask
N#define NVIC_PRI2_INT9_M        0x0000E000  // Interrupt 9 Priority Mask
N#define NVIC_PRI2_INT8_M        0x000000E0  // Interrupt 8 Priority Mask
N#define NVIC_PRI2_INT11_S       29
N#define NVIC_PRI2_INT10_S       21
N#define NVIC_PRI2_INT9_S        13
N#define NVIC_PRI2_INT8_S        5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI3 register.
N//
N//*****************************************************************************
N#define NVIC_PRI3_INT15_M       0xE0000000  // Interrupt 15 Priority Mask
N#define NVIC_PRI3_INT14_M       0x00E00000  // Interrupt 14 Priority Mask
N#define NVIC_PRI3_INT13_M       0x0000E000  // Interrupt 13 Priority Mask
N#define NVIC_PRI3_INT12_M       0x000000E0  // Interrupt 12 Priority Mask
N#define NVIC_PRI3_INT15_S       29
N#define NVIC_PRI3_INT14_S       21
N#define NVIC_PRI3_INT13_S       13
N#define NVIC_PRI3_INT12_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI4 register.
N//
N//*****************************************************************************
N#define NVIC_PRI4_INT19_M       0xE0000000  // Interrupt 19 Priority Mask
N#define NVIC_PRI4_INT18_M       0x00E00000  // Interrupt 18 Priority Mask
N#define NVIC_PRI4_INT17_M       0x0000E000  // Interrupt 17 Priority Mask
N#define NVIC_PRI4_INT16_M       0x000000E0  // Interrupt 16 Priority Mask
N#define NVIC_PRI4_INT19_S       29
N#define NVIC_PRI4_INT18_S       21
N#define NVIC_PRI4_INT17_S       13
N#define NVIC_PRI4_INT16_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI5 register.
N//
N//*****************************************************************************
N#define NVIC_PRI5_INT23_M       0xE0000000  // Interrupt 23 Priority Mask
N#define NVIC_PRI5_INT22_M       0x00E00000  // Interrupt 22 Priority Mask
N#define NVIC_PRI5_INT21_M       0x0000E000  // Interrupt 21 Priority Mask
N#define NVIC_PRI5_INT20_M       0x000000E0  // Interrupt 20 Priority Mask
N#define NVIC_PRI5_INT23_S       29
N#define NVIC_PRI5_INT22_S       21
N#define NVIC_PRI5_INT21_S       13
N#define NVIC_PRI5_INT20_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI6 register.
N//
N//*****************************************************************************
N#define NVIC_PRI6_INT27_M       0xE0000000  // Interrupt 27 Priority Mask
N#define NVIC_PRI6_INT26_M       0x00E00000  // Interrupt 26 Priority Mask
N#define NVIC_PRI6_INT25_M       0x0000E000  // Interrupt 25 Priority Mask
N#define NVIC_PRI6_INT24_M       0x000000E0  // Interrupt 24 Priority Mask
N#define NVIC_PRI6_INT27_S       29
N#define NVIC_PRI6_INT26_S       21
N#define NVIC_PRI6_INT25_S       13
N#define NVIC_PRI6_INT24_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI7 register.
N//
N//*****************************************************************************
N#define NVIC_PRI7_INT31_M       0xE0000000  // Interrupt 31 Priority Mask
N#define NVIC_PRI7_INT30_M       0x00E00000  // Interrupt 30 Priority Mask
N#define NVIC_PRI7_INT29_M       0x0000E000  // Interrupt 29 Priority Mask
N#define NVIC_PRI7_INT28_M       0x000000E0  // Interrupt 28 Priority Mask
N#define NVIC_PRI7_INT31_S       29
N#define NVIC_PRI7_INT30_S       21
N#define NVIC_PRI7_INT29_S       13
N#define NVIC_PRI7_INT28_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI8 register.
N//
N//*****************************************************************************
N#define NVIC_PRI8_INT35_M       0xE0000000  // Interrupt 35 Priority Mask
N#define NVIC_PRI8_INT34_M       0x00E00000  // Interrupt 34 Priority Mask
N#define NVIC_PRI8_INT33_M       0x0000E000  // Interrupt 33 Priority Mask
N#define NVIC_PRI8_INT32_M       0x000000E0  // Interrupt 32 Priority Mask
N#define NVIC_PRI8_INT35_S       29
N#define NVIC_PRI8_INT34_S       21
N#define NVIC_PRI8_INT33_S       13
N#define NVIC_PRI8_INT32_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI9 register.
N//
N//*****************************************************************************
N#define NVIC_PRI9_INT39_M       0xE0000000  // Interrupt 39 Priority Mask
N#define NVIC_PRI9_INT38_M       0x00E00000  // Interrupt 38 Priority Mask
N#define NVIC_PRI9_INT37_M       0x0000E000  // Interrupt 37 Priority Mask
N#define NVIC_PRI9_INT36_M       0x000000E0  // Interrupt 36 Priority Mask
N#define NVIC_PRI9_INT39_S       29
N#define NVIC_PRI9_INT38_S       21
N#define NVIC_PRI9_INT37_S       13
N#define NVIC_PRI9_INT36_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI10 register.
N//
N//*****************************************************************************
N#define NVIC_PRI10_INT43_M      0xE0000000  // Interrupt 43 Priority Mask
N#define NVIC_PRI10_INT42_M      0x00E00000  // Interrupt 42 Priority Mask
N#define NVIC_PRI10_INT41_M      0x0000E000  // Interrupt 41 Priority Mask
N#define NVIC_PRI10_INT40_M      0x000000E0  // Interrupt 40 Priority Mask
N#define NVIC_PRI10_INT43_S      29
N#define NVIC_PRI10_INT42_S      21
N#define NVIC_PRI10_INT41_S      13
N#define NVIC_PRI10_INT40_S      5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI11 register.
N//
N//*****************************************************************************
N#define NVIC_PRI11_INT47_M      0xE0000000  // Interrupt 47 Priority Mask
N#define NVIC_PRI11_INT46_M      0x00E00000  // Interrupt 46 Priority Mask
N#define NVIC_PRI11_INT45_M      0x0000E000  // Interrupt 45 Priority Mask
N#define NVIC_PRI11_INT44_M      0x000000E0  // Interrupt 44 Priority Mask
N#define NVIC_PRI11_INT47_S      29
N#define NVIC_PRI11_INT46_S      21
N#define NVIC_PRI11_INT45_S      13
N#define NVIC_PRI11_INT44_S      5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI12 register.
N//
N//*****************************************************************************
N#define NVIC_PRI12_INT51_M      0xE0000000  // Interrupt 51 Priority Mask
N#define NVIC_PRI12_INT50_M      0x00E00000  // Interrupt 50 Priority Mask
N#define NVIC_PRI12_INT49_M      0x0000E000  // Interrupt 49 Priority Mask
N#define NVIC_PRI12_INT48_M      0x000000E0  // Interrupt 48 Priority Mask
N#define NVIC_PRI12_INT51_S      29
N#define NVIC_PRI12_INT50_S      21
N#define NVIC_PRI12_INT49_S      13
N#define NVIC_PRI12_INT48_S      5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI13 register.
N//
N//*****************************************************************************
N#define NVIC_PRI13_INT55_M      0xE0000000  // Interrupt 55 Priority Mask
N#define NVIC_PRI13_INT54_M      0x00E00000  // Interrupt 54 Priority Mask
N#define NVIC_PRI13_INT53_M      0x0000E000  // Interrupt 53 Priority Mask
N#define NVIC_PRI13_INT52_M      0x000000E0  // Interrupt 52 Priority Mask
N#define NVIC_PRI13_INT55_S      29
N#define NVIC_PRI13_INT54_S      21
N#define NVIC_PRI13_INT53_S      13
N#define NVIC_PRI13_INT52_S      5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI14 register.
N//
N//*****************************************************************************
N#define NVIC_PRI14_INTD_M       0xE0000000  // Interrupt 59 Priority Mask
N#define NVIC_PRI14_INTC_M       0x00E00000  // Interrupt 58 Priority Mask
N#define NVIC_PRI14_INTB_M       0x0000E000  // Interrupt 57 Priority Mask
N#define NVIC_PRI14_INTA_M       0x000000E0  // Interrupt 56 Priority Mask
N#define NVIC_PRI14_INTD_S       29
N#define NVIC_PRI14_INTC_S       21
N#define NVIC_PRI14_INTB_S       13
N#define NVIC_PRI14_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI15 register.
N//
N//*****************************************************************************
N#define NVIC_PRI15_INTD_M       0xE0000000  // Interrupt 63 Priority Mask
N#define NVIC_PRI15_INTC_M       0x00E00000  // Interrupt 62 Priority Mask
N#define NVIC_PRI15_INTB_M       0x0000E000  // Interrupt 61 Priority Mask
N#define NVIC_PRI15_INTA_M       0x000000E0  // Interrupt 60 Priority Mask
N#define NVIC_PRI15_INTD_S       29
N#define NVIC_PRI15_INTC_S       21
N#define NVIC_PRI15_INTB_S       13
N#define NVIC_PRI15_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI16 register.
N//
N//*****************************************************************************
N#define NVIC_PRI16_INTD_M       0xE0000000  // Interrupt 67 Priority Mask
N#define NVIC_PRI16_INTC_M       0x00E00000  // Interrupt 66 Priority Mask
N#define NVIC_PRI16_INTB_M       0x0000E000  // Interrupt 65 Priority Mask
N#define NVIC_PRI16_INTA_M       0x000000E0  // Interrupt 64 Priority Mask
N#define NVIC_PRI16_INTD_S       29
N#define NVIC_PRI16_INTC_S       21
N#define NVIC_PRI16_INTB_S       13
N#define NVIC_PRI16_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI17 register.
N//
N//*****************************************************************************
N#define NVIC_PRI17_INTD_M       0xE0000000  // Interrupt 71 Priority Mask
N#define NVIC_PRI17_INTC_M       0x00E00000  // Interrupt 70 Priority Mask
N#define NVIC_PRI17_INTB_M       0x0000E000  // Interrupt 69 Priority Mask
N#define NVIC_PRI17_INTA_M       0x000000E0  // Interrupt 68 Priority Mask
N#define NVIC_PRI17_INTD_S       29
N#define NVIC_PRI17_INTC_S       21
N#define NVIC_PRI17_INTB_S       13
N#define NVIC_PRI17_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI18 register.
N//
N//*****************************************************************************
N#define NVIC_PRI18_INTD_M       0xE0000000  // Interrupt 75 Priority Mask
N#define NVIC_PRI18_INTC_M       0x00E00000  // Interrupt 74 Priority Mask
N#define NVIC_PRI18_INTB_M       0x0000E000  // Interrupt 73 Priority Mask
N#define NVIC_PRI18_INTA_M       0x000000E0  // Interrupt 72 Priority Mask
N#define NVIC_PRI18_INTD_S       29
N#define NVIC_PRI18_INTC_S       21
N#define NVIC_PRI18_INTB_S       13
N#define NVIC_PRI18_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI19 register.
N//
N//*****************************************************************************
N#define NVIC_PRI19_INTD_M       0xE0000000  // Interrupt 79 Priority Mask
N#define NVIC_PRI19_INTC_M       0x00E00000  // Interrupt 78 Priority Mask
N#define NVIC_PRI19_INTB_M       0x0000E000  // Interrupt 77 Priority Mask
N#define NVIC_PRI19_INTA_M       0x000000E0  // Interrupt 76 Priority Mask
N#define NVIC_PRI19_INTD_S       29
N#define NVIC_PRI19_INTC_S       21
N#define NVIC_PRI19_INTB_S       13
N#define NVIC_PRI19_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI20 register.
N//
N//*****************************************************************************
N#define NVIC_PRI20_INTD_M       0xE0000000  // Interrupt 83 Priority Mask
N#define NVIC_PRI20_INTC_M       0x00E00000  // Interrupt 82 Priority Mask
N#define NVIC_PRI20_INTB_M       0x0000E000  // Interrupt 81 Priority Mask
N#define NVIC_PRI20_INTA_M       0x000000E0  // Interrupt 80 Priority Mask
N#define NVIC_PRI20_INTD_S       29
N#define NVIC_PRI20_INTC_S       21
N#define NVIC_PRI20_INTB_S       13
N#define NVIC_PRI20_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI21 register.
N//
N//*****************************************************************************
N#define NVIC_PRI21_INTD_M       0xE0000000  // Interrupt 87 Priority Mask
N#define NVIC_PRI21_INTC_M       0x00E00000  // Interrupt 86 Priority Mask
N#define NVIC_PRI21_INTB_M       0x0000E000  // Interrupt 85 Priority Mask
N#define NVIC_PRI21_INTA_M       0x000000E0  // Interrupt 84 Priority Mask
N#define NVIC_PRI21_INTD_S       29
N#define NVIC_PRI21_INTC_S       21
N#define NVIC_PRI21_INTB_S       13
N#define NVIC_PRI21_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI22 register.
N//
N//*****************************************************************************
N#define NVIC_PRI22_INTD_M       0xE0000000  // Interrupt 91 Priority Mask
N#define NVIC_PRI22_INTC_M       0x00E00000  // Interrupt 90 Priority Mask
N#define NVIC_PRI22_INTB_M       0x0000E000  // Interrupt 89 Priority Mask
N#define NVIC_PRI22_INTA_M       0x000000E0  // Interrupt 88 Priority Mask
N#define NVIC_PRI22_INTD_S       29
N#define NVIC_PRI22_INTC_S       21
N#define NVIC_PRI22_INTB_S       13
N#define NVIC_PRI22_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI23 register.
N//
N//*****************************************************************************
N#define NVIC_PRI23_INTD_M       0xE0000000  // Interrupt 95 Priority Mask
N#define NVIC_PRI23_INTC_M       0x00E00000  // Interrupt 94 Priority Mask
N#define NVIC_PRI23_INTB_M       0x0000E000  // Interrupt 93 Priority Mask
N#define NVIC_PRI23_INTA_M       0x000000E0  // Interrupt 92 Priority Mask
N#define NVIC_PRI23_INTD_S       29
N#define NVIC_PRI23_INTC_S       21
N#define NVIC_PRI23_INTB_S       13
N#define NVIC_PRI23_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI24 register.
N//
N//*****************************************************************************
N#define NVIC_PRI24_INTD_M       0xE0000000  // Interrupt 99 Priority Mask
N#define NVIC_PRI24_INTC_M       0x00E00000  // Interrupt 98 Priority Mask
N#define NVIC_PRI24_INTB_M       0x0000E000  // Interrupt 97 Priority Mask
N#define NVIC_PRI24_INTA_M       0x000000E0  // Interrupt 96 Priority Mask
N#define NVIC_PRI24_INTD_S       29
N#define NVIC_PRI24_INTC_S       21
N#define NVIC_PRI24_INTB_S       13
N#define NVIC_PRI24_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI25 register.
N//
N//*****************************************************************************
N#define NVIC_PRI25_INTD_M       0xE0000000  // Interrupt 103 Priority Mask
N#define NVIC_PRI25_INTC_M       0x00E00000  // Interrupt 102 Priority Mask
N#define NVIC_PRI25_INTB_M       0x0000E000  // Interrupt 101 Priority Mask
N#define NVIC_PRI25_INTA_M       0x000000E0  // Interrupt 100 Priority Mask
N#define NVIC_PRI25_INTD_S       29
N#define NVIC_PRI25_INTC_S       21
N#define NVIC_PRI25_INTB_S       13
N#define NVIC_PRI25_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI26 register.
N//
N//*****************************************************************************
N#define NVIC_PRI26_INTD_M       0xE0000000  // Interrupt 107 Priority Mask
N#define NVIC_PRI26_INTC_M       0x00E00000  // Interrupt 106 Priority Mask
N#define NVIC_PRI26_INTB_M       0x0000E000  // Interrupt 105 Priority Mask
N#define NVIC_PRI26_INTA_M       0x000000E0  // Interrupt 104 Priority Mask
N#define NVIC_PRI26_INTD_S       29
N#define NVIC_PRI26_INTC_S       21
N#define NVIC_PRI26_INTB_S       13
N#define NVIC_PRI26_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI27 register.
N//
N//*****************************************************************************
N#define NVIC_PRI27_INTD_M       0xE0000000  // Interrupt 111 Priority Mask
N#define NVIC_PRI27_INTC_M       0x00E00000  // Interrupt 110 Priority Mask
N#define NVIC_PRI27_INTB_M       0x0000E000  // Interrupt 109 Priority Mask
N#define NVIC_PRI27_INTA_M       0x000000E0  // Interrupt 108 Priority Mask
N#define NVIC_PRI27_INTD_S       29
N#define NVIC_PRI27_INTC_S       21
N#define NVIC_PRI27_INTB_S       13
N#define NVIC_PRI27_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI28 register.
N//
N//*****************************************************************************
N#define NVIC_PRI28_INTD_M       0xE0000000  // Interrupt 115 Priority Mask
N#define NVIC_PRI28_INTC_M       0x00E00000  // Interrupt 114 Priority Mask
N#define NVIC_PRI28_INTB_M       0x0000E000  // Interrupt 113 Priority Mask
N#define NVIC_PRI28_INTA_M       0x000000E0  // Interrupt 112 Priority Mask
N#define NVIC_PRI28_INTD_S       29
N#define NVIC_PRI28_INTC_S       21
N#define NVIC_PRI28_INTB_S       13
N#define NVIC_PRI28_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI29 register.
N//
N//*****************************************************************************
N#define NVIC_PRI29_INTD_M       0xE0000000  // Interrupt 119 Priority Mask
N#define NVIC_PRI29_INTC_M       0x00E00000  // Interrupt 118 Priority Mask
N#define NVIC_PRI29_INTB_M       0x0000E000  // Interrupt 117 Priority Mask
N#define NVIC_PRI29_INTA_M       0x000000E0  // Interrupt 116 Priority Mask
N#define NVIC_PRI29_INTD_S       29
N#define NVIC_PRI29_INTC_S       21
N#define NVIC_PRI29_INTB_S       13
N#define NVIC_PRI29_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI30 register.
N//
N//*****************************************************************************
N#define NVIC_PRI30_INTD_M       0xE0000000  // Interrupt 123 Priority Mask
N#define NVIC_PRI30_INTC_M       0x00E00000  // Interrupt 122 Priority Mask
N#define NVIC_PRI30_INTB_M       0x0000E000  // Interrupt 121 Priority Mask
N#define NVIC_PRI30_INTA_M       0x000000E0  // Interrupt 120 Priority Mask
N#define NVIC_PRI30_INTD_S       29
N#define NVIC_PRI30_INTC_S       21
N#define NVIC_PRI30_INTB_S       13
N#define NVIC_PRI30_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI31 register.
N//
N//*****************************************************************************
N#define NVIC_PRI31_INTD_M       0xE0000000  // Interrupt 127 Priority Mask
N#define NVIC_PRI31_INTC_M       0x00E00000  // Interrupt 126 Priority Mask
N#define NVIC_PRI31_INTB_M       0x0000E000  // Interrupt 125 Priority Mask
N#define NVIC_PRI31_INTA_M       0x000000E0  // Interrupt 124 Priority Mask
N#define NVIC_PRI31_INTD_S       29
N#define NVIC_PRI31_INTC_S       21
N#define NVIC_PRI31_INTB_S       13
N#define NVIC_PRI31_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI32 register.
N//
N//*****************************************************************************
N#define NVIC_PRI32_INTD_M       0xE0000000  // Interrupt 131 Priority Mask
N#define NVIC_PRI32_INTC_M       0x00E00000  // Interrupt 130 Priority Mask
N#define NVIC_PRI32_INTB_M       0x0000E000  // Interrupt 129 Priority Mask
N#define NVIC_PRI32_INTA_M       0x000000E0  // Interrupt 128 Priority Mask
N#define NVIC_PRI32_INTD_S       29
N#define NVIC_PRI32_INTC_S       21
N#define NVIC_PRI32_INTB_S       13
N#define NVIC_PRI32_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI33 register.
N//
N//*****************************************************************************
N#define NVIC_PRI33_INTD_M       0xE0000000  // Interrupt Priority for Interrupt
N                                            // [4n+3]
N#define NVIC_PRI33_INTC_M       0x00E00000  // Interrupt Priority for Interrupt
N                                            // [4n+2]
N#define NVIC_PRI33_INTB_M       0x0000E000  // Interrupt Priority for Interrupt
N                                            // [4n+1]
N#define NVIC_PRI33_INTA_M       0x000000E0  // Interrupt Priority for Interrupt
N                                            // [4n]
N#define NVIC_PRI33_INTD_S       29
N#define NVIC_PRI33_INTC_S       21
N#define NVIC_PRI33_INTB_S       13
N#define NVIC_PRI33_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_PRI34 register.
N//
N//*****************************************************************************
N#define NVIC_PRI34_INTD_M       0xE0000000  // Interrupt Priority for Interrupt
N                                            // [4n+3]
N#define NVIC_PRI34_INTC_M       0x00E00000  // Interrupt Priority for Interrupt
N                                            // [4n+2]
N#define NVIC_PRI34_INTB_M       0x0000E000  // Interrupt Priority for Interrupt
N                                            // [4n+1]
N#define NVIC_PRI34_INTA_M       0x000000E0  // Interrupt Priority for Interrupt
N                                            // [4n]
N#define NVIC_PRI34_INTD_S       29
N#define NVIC_PRI34_INTC_S       21
N#define NVIC_PRI34_INTB_S       13
N#define NVIC_PRI34_INTA_S       5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_CPUID register.
N//
N//*****************************************************************************
N#define NVIC_CPUID_IMP_M        0xFF000000  // Implementer Code
N#define NVIC_CPUID_IMP_ARM      0x41000000  // ARM
N#define NVIC_CPUID_VAR_M        0x00F00000  // Variant Number
N#define NVIC_CPUID_CON_M        0x000F0000  // Constant
N#define NVIC_CPUID_PARTNO_M     0x0000FFF0  // Part Number
N#define NVIC_CPUID_PARTNO_CM4   0x0000C240  // Cortex-M4 processor
N#define NVIC_CPUID_REV_M        0x0000000F  // Revision Number
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_INT_CTRL register.
N//
N//*****************************************************************************
N#define NVIC_INT_CTRL_NMI_SET   0x80000000  // NMI Set Pending
N#define NVIC_INT_CTRL_PEND_SV   0x10000000  // PendSV Set Pending
N#define NVIC_INT_CTRL_UNPEND_SV 0x08000000  // PendSV Clear Pending
N#define NVIC_INT_CTRL_PENDSTSET 0x04000000  // SysTick Set Pending
N#define NVIC_INT_CTRL_PENDSTCLR 0x02000000  // SysTick Clear Pending
N#define NVIC_INT_CTRL_ISR_PRE   0x00800000  // Debug Interrupt Handling
N#define NVIC_INT_CTRL_ISR_PEND  0x00400000  // Interrupt Pending
N#define NVIC_INT_CTRL_VEC_PEN_M 0x000FF000  // Interrupt Pending Vector Number
N#define NVIC_INT_CTRL_VEC_PEN_NMI                                             \
N                                0x00002000  // NMI
X#define NVIC_INT_CTRL_VEC_PEN_NMI                                                                             0x00002000  
N#define NVIC_INT_CTRL_VEC_PEN_HARD                                            \
N                                0x00003000  // Hard fault
X#define NVIC_INT_CTRL_VEC_PEN_HARD                                                                            0x00003000  
N#define NVIC_INT_CTRL_VEC_PEN_MEM                                             \
N                                0x00004000  // Memory management fault
X#define NVIC_INT_CTRL_VEC_PEN_MEM                                                                             0x00004000  
N#define NVIC_INT_CTRL_VEC_PEN_BUS                                             \
N                                0x00005000  // Bus fault
X#define NVIC_INT_CTRL_VEC_PEN_BUS                                                                             0x00005000  
N#define NVIC_INT_CTRL_VEC_PEN_USG                                             \
N                                0x00006000  // Usage fault
X#define NVIC_INT_CTRL_VEC_PEN_USG                                                                             0x00006000  
N#define NVIC_INT_CTRL_VEC_PEN_SVC                                             \
N                                0x0000B000  // SVCall
X#define NVIC_INT_CTRL_VEC_PEN_SVC                                                                             0x0000B000  
N#define NVIC_INT_CTRL_VEC_PEN_PNDSV                                           \
N                                0x0000E000  // PendSV
X#define NVIC_INT_CTRL_VEC_PEN_PNDSV                                                                           0x0000E000  
N#define NVIC_INT_CTRL_VEC_PEN_TICK                                            \
N                                0x0000F000  // SysTick
X#define NVIC_INT_CTRL_VEC_PEN_TICK                                                                            0x0000F000  
N#define NVIC_INT_CTRL_RET_BASE  0x00000800  // Return to Base
N#define NVIC_INT_CTRL_VEC_ACT_M 0x000000FF  // Interrupt Pending Vector Number
N#define NVIC_INT_CTRL_VEC_ACT_S 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_VTABLE register.
N//
N//*****************************************************************************
N#define NVIC_VTABLE_BASE        0x20000000  // Vector Table Base
N#define NVIC_VTABLE_OFFSET_M    0x1FFFFC00  // Vector Table Offset
N#define NVIC_VTABLE_OFFSET_S    10
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_APINT register.
N//
N//*****************************************************************************
N#define NVIC_APINT_VECTKEY_M    0xFFFF0000  // Register Key
N#define NVIC_APINT_VECTKEY      0x05FA0000  // Vector key
N#define NVIC_APINT_ENDIANESS    0x00008000  // Data Endianess
N#define NVIC_APINT_PRIGROUP_M   0x00000700  // Interrupt Priority Grouping
N#define NVIC_APINT_PRIGROUP_7_1 0x00000000  // Priority group 7.1 split
N#define NVIC_APINT_PRIGROUP_6_2 0x00000100  // Priority group 6.2 split
N#define NVIC_APINT_PRIGROUP_5_3 0x00000200  // Priority group 5.3 split
N#define NVIC_APINT_PRIGROUP_4_4 0x00000300  // Priority group 4.4 split
N#define NVIC_APINT_PRIGROUP_3_5 0x00000400  // Priority group 3.5 split
N#define NVIC_APINT_PRIGROUP_2_6 0x00000500  // Priority group 2.6 split
N#define NVIC_APINT_PRIGROUP_1_7 0x00000600  // Priority group 1.7 split
N#define NVIC_APINT_PRIGROUP_0_8 0x00000700  // Priority group 0.8 split
N#define NVIC_APINT_SYSRESETREQ  0x00000004  // System Reset Request
N#define NVIC_APINT_VECT_CLR_ACT 0x00000002  // Clear Active NMI / Fault
N#define NVIC_APINT_VECT_RESET   0x00000001  // System Reset
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_SYS_CTRL register.
N//
N//*****************************************************************************
N#define NVIC_SYS_CTRL_SEVONPEND 0x00000010  // Wake Up on Pending
N#define NVIC_SYS_CTRL_SLEEPDEEP 0x00000004  // Deep Sleep Enable
N#define NVIC_SYS_CTRL_SLEEPEXIT 0x00000002  // Sleep on ISR Exit
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_CFG_CTRL register.
N//
N//*****************************************************************************
N#define NVIC_CFG_CTRL_STKALIGN  0x00000200  // Stack Alignment on Exception
N                                            // Entry
N#define NVIC_CFG_CTRL_BFHFNMIGN 0x00000100  // Ignore Bus Fault in NMI and
N                                            // Fault
N#define NVIC_CFG_CTRL_DIV0      0x00000010  // Trap on Divide by 0
N#define NVIC_CFG_CTRL_UNALIGNED 0x00000008  // Trap on Unaligned Access
N#define NVIC_CFG_CTRL_MAIN_PEND 0x00000002  // Allow Main Interrupt Trigger
N#define NVIC_CFG_CTRL_BASE_THR  0x00000001  // Thread State Control
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_SYS_PRI1 register.
N//
N//*****************************************************************************
N#define NVIC_SYS_PRI1_USAGE_M   0x00E00000  // Usage Fault Priority
N#define NVIC_SYS_PRI1_BUS_M     0x0000E000  // Bus Fault Priority
N#define NVIC_SYS_PRI1_MEM_M     0x000000E0  // Memory Management Fault Priority
N#define NVIC_SYS_PRI1_USAGE_S   21
N#define NVIC_SYS_PRI1_BUS_S     13
N#define NVIC_SYS_PRI1_MEM_S     5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_SYS_PRI2 register.
N//
N//*****************************************************************************
N#define NVIC_SYS_PRI2_SVC_M     0xE0000000  // SVCall Priority
N#define NVIC_SYS_PRI2_SVC_S     29
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_SYS_PRI3 register.
N//
N//*****************************************************************************
N#define NVIC_SYS_PRI3_TICK_M    0xE0000000  // SysTick Exception Priority
N#define NVIC_SYS_PRI3_PENDSV_M  0x00E00000  // PendSV Priority
N#define NVIC_SYS_PRI3_DEBUG_M   0x000000E0  // Debug Priority
N#define NVIC_SYS_PRI3_TICK_S    29
N#define NVIC_SYS_PRI3_PENDSV_S  21
N#define NVIC_SYS_PRI3_DEBUG_S   5
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_SYS_HND_CTRL
N// register.
N//
N//*****************************************************************************
N#define NVIC_SYS_HND_CTRL_USAGE 0x00040000  // Usage Fault Enable
N#define NVIC_SYS_HND_CTRL_BUS   0x00020000  // Bus Fault Enable
N#define NVIC_SYS_HND_CTRL_MEM   0x00010000  // Memory Management Fault Enable
N#define NVIC_SYS_HND_CTRL_SVC   0x00008000  // SVC Call Pending
N#define NVIC_SYS_HND_CTRL_BUSP  0x00004000  // Bus Fault Pending
N#define NVIC_SYS_HND_CTRL_MEMP  0x00002000  // Memory Management Fault Pending
N#define NVIC_SYS_HND_CTRL_USAGEP                                              \
N                                0x00001000  // Usage Fault Pending
X#define NVIC_SYS_HND_CTRL_USAGEP                                                                              0x00001000  
N#define NVIC_SYS_HND_CTRL_TICK  0x00000800  // SysTick Exception Active
N#define NVIC_SYS_HND_CTRL_PNDSV 0x00000400  // PendSV Exception Active
N#define NVIC_SYS_HND_CTRL_MON   0x00000100  // Debug Monitor Active
N#define NVIC_SYS_HND_CTRL_SVCA  0x00000080  // SVC Call Active
N#define NVIC_SYS_HND_CTRL_USGA  0x00000008  // Usage Fault Active
N#define NVIC_SYS_HND_CTRL_BUSA  0x00000002  // Bus Fault Active
N#define NVIC_SYS_HND_CTRL_MEMA  0x00000001  // Memory Management Fault Active
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_FAULT_STAT
N// register.
N//
N//*****************************************************************************
N#define NVIC_FAULT_STAT_DIV0    0x02000000  // Divide-by-Zero Usage Fault
N#define NVIC_FAULT_STAT_UNALIGN 0x01000000  // Unaligned Access Usage Fault
N#define NVIC_FAULT_STAT_NOCP    0x00080000  // No Coprocessor Usage Fault
N#define NVIC_FAULT_STAT_INVPC   0x00040000  // Invalid PC Load Usage Fault
N#define NVIC_FAULT_STAT_INVSTAT 0x00020000  // Invalid State Usage Fault
N#define NVIC_FAULT_STAT_UNDEF   0x00010000  // Undefined Instruction Usage
N                                            // Fault
N#define NVIC_FAULT_STAT_BFARV   0x00008000  // Bus Fault Address Register Valid
N#define NVIC_FAULT_STAT_BLSPERR 0x00002000  // Bus Fault on Floating-Point Lazy
N                                            // State Preservation
N#define NVIC_FAULT_STAT_BSTKE   0x00001000  // Stack Bus Fault
N#define NVIC_FAULT_STAT_BUSTKE  0x00000800  // Unstack Bus Fault
N#define NVIC_FAULT_STAT_IMPRE   0x00000400  // Imprecise Data Bus Error
N#define NVIC_FAULT_STAT_PRECISE 0x00000200  // Precise Data Bus Error
N#define NVIC_FAULT_STAT_IBUS    0x00000100  // Instruction Bus Error
N#define NVIC_FAULT_STAT_MMARV   0x00000080  // Memory Management Fault Address
N                                            // Register Valid
N#define NVIC_FAULT_STAT_MLSPERR 0x00000020  // Memory Management Fault on
N                                            // Floating-Point Lazy State
N                                            // Preservation
N#define NVIC_FAULT_STAT_MSTKE   0x00000010  // Stack Access Violation
N#define NVIC_FAULT_STAT_MUSTKE  0x00000008  // Unstack Access Violation
N#define NVIC_FAULT_STAT_DERR    0x00000002  // Data Access Violation
N#define NVIC_FAULT_STAT_IERR    0x00000001  // Instruction Access Violation
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_HFAULT_STAT
N// register.
N//
N//*****************************************************************************
N#define NVIC_HFAULT_STAT_DBG    0x80000000  // Debug Event
N#define NVIC_HFAULT_STAT_FORCED 0x40000000  // Forced Hard Fault
N#define NVIC_HFAULT_STAT_VECT   0x00000002  // Vector Table Read Fault
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_DEBUG_STAT
N// register.
N//
N//*****************************************************************************
N#define NVIC_DEBUG_STAT_EXTRNL  0x00000010  // EDBGRQ asserted
N#define NVIC_DEBUG_STAT_VCATCH  0x00000008  // Vector catch
N#define NVIC_DEBUG_STAT_DWTTRAP 0x00000004  // DWT match
N#define NVIC_DEBUG_STAT_BKPT    0x00000002  // Breakpoint instruction
N#define NVIC_DEBUG_STAT_HALTED  0x00000001  // Halt request
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MM_ADDR register.
N//
N//*****************************************************************************
N#define NVIC_MM_ADDR_M          0xFFFFFFFF  // Fault Address
N#define NVIC_MM_ADDR_S          0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_FAULT_ADDR
N// register.
N//
N//*****************************************************************************
N#define NVIC_FAULT_ADDR_M       0xFFFFFFFF  // Fault Address
N#define NVIC_FAULT_ADDR_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_CPAC register.
N//
N//*****************************************************************************
N#define NVIC_CPAC_CP11_M        0x00C00000  // CP11 Coprocessor Access
N                                            // Privilege
N#define NVIC_CPAC_CP11_DIS      0x00000000  // Access Denied
N#define NVIC_CPAC_CP11_PRIV     0x00400000  // Privileged Access Only
N#define NVIC_CPAC_CP11_FULL     0x00C00000  // Full Access
N#define NVIC_CPAC_CP10_M        0x00300000  // CP10 Coprocessor Access
N                                            // Privilege
N#define NVIC_CPAC_CP10_DIS      0x00000000  // Access Denied
N#define NVIC_CPAC_CP10_PRIV     0x00100000  // Privileged Access Only
N#define NVIC_CPAC_CP10_FULL     0x00300000  // Full Access
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_TYPE register.
N//
N//*****************************************************************************
N#define NVIC_MPU_TYPE_IREGION_M 0x00FF0000  // Number of I Regions
N#define NVIC_MPU_TYPE_DREGION_M 0x0000FF00  // Number of D Regions
N#define NVIC_MPU_TYPE_SEPARATE  0x00000001  // Separate or Unified MPU
N#define NVIC_MPU_TYPE_IREGION_S 16
N#define NVIC_MPU_TYPE_DREGION_S 8
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_CTRL register.
N//
N//*****************************************************************************
N#define NVIC_MPU_CTRL_PRIVDEFEN 0x00000004  // MPU Default Region
N#define NVIC_MPU_CTRL_HFNMIENA  0x00000002  // MPU Enabled During Faults
N#define NVIC_MPU_CTRL_ENABLE    0x00000001  // MPU Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_NUMBER
N// register.
N//
N//*****************************************************************************
N#define NVIC_MPU_NUMBER_M       0x00000007  // MPU Region to Access
N#define NVIC_MPU_NUMBER_S       0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_BASE register.
N//
N//*****************************************************************************
N#define NVIC_MPU_BASE_ADDR_M    0xFFFFFFE0  // Base Address Mask
N#define NVIC_MPU_BASE_VALID     0x00000010  // Region Number Valid
N#define NVIC_MPU_BASE_REGION_M  0x00000007  // Region Number
N#define NVIC_MPU_BASE_ADDR_S    5
N#define NVIC_MPU_BASE_REGION_S  0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_ATTR register.
N//
N//*****************************************************************************
N#define NVIC_MPU_ATTR_XN        0x10000000  // Instruction Access Disable
N#define NVIC_MPU_ATTR_AP_M      0x07000000  // Access Privilege
N#define NVIC_MPU_ATTR_TEX_M     0x00380000  // Type Extension Mask
N#define NVIC_MPU_ATTR_SHAREABLE 0x00040000  // Shareable
N#define NVIC_MPU_ATTR_CACHEABLE 0x00020000  // Cacheable
N#define NVIC_MPU_ATTR_BUFFRABLE 0x00010000  // Bufferable
N#define NVIC_MPU_ATTR_SRD_M     0x0000FF00  // Subregion Disable Bits
N#define NVIC_MPU_ATTR_SIZE_M    0x0000003E  // Region Size Mask
N#define NVIC_MPU_ATTR_ENABLE    0x00000001  // Region Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_BASE1 register.
N//
N//*****************************************************************************
N#define NVIC_MPU_BASE1_ADDR_M   0xFFFFFFE0  // Base Address Mask
N#define NVIC_MPU_BASE1_VALID    0x00000010  // Region Number Valid
N#define NVIC_MPU_BASE1_REGION_M 0x00000007  // Region Number
N#define NVIC_MPU_BASE1_ADDR_S   5
N#define NVIC_MPU_BASE1_REGION_S 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_ATTR1 register.
N//
N//*****************************************************************************
N#define NVIC_MPU_ATTR1_XN       0x10000000  // Instruction Access Disable
N#define NVIC_MPU_ATTR1_AP_M     0x07000000  // Access Privilege
N#define NVIC_MPU_ATTR1_TEX_M    0x00380000  // Type Extension Mask
N#define NVIC_MPU_ATTR1_SHAREABLE                                              \
N                                0x00040000  // Shareable
X#define NVIC_MPU_ATTR1_SHAREABLE                                                                              0x00040000  
N#define NVIC_MPU_ATTR1_CACHEABLE                                              \
N                                0x00020000  // Cacheable
X#define NVIC_MPU_ATTR1_CACHEABLE                                                                              0x00020000  
N#define NVIC_MPU_ATTR1_BUFFRABLE                                              \
N                                0x00010000  // Bufferable
X#define NVIC_MPU_ATTR1_BUFFRABLE                                                                              0x00010000  
N#define NVIC_MPU_ATTR1_SRD_M    0x0000FF00  // Subregion Disable Bits
N#define NVIC_MPU_ATTR1_SIZE_M   0x0000003E  // Region Size Mask
N#define NVIC_MPU_ATTR1_ENABLE   0x00000001  // Region Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_BASE2 register.
N//
N//*****************************************************************************
N#define NVIC_MPU_BASE2_ADDR_M   0xFFFFFFE0  // Base Address Mask
N#define NVIC_MPU_BASE2_VALID    0x00000010  // Region Number Valid
N#define NVIC_MPU_BASE2_REGION_M 0x00000007  // Region Number
N#define NVIC_MPU_BASE2_ADDR_S   5
N#define NVIC_MPU_BASE2_REGION_S 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_ATTR2 register.
N//
N//*****************************************************************************
N#define NVIC_MPU_ATTR2_XN       0x10000000  // Instruction Access Disable
N#define NVIC_MPU_ATTR2_AP_M     0x07000000  // Access Privilege
N#define NVIC_MPU_ATTR2_TEX_M    0x00380000  // Type Extension Mask
N#define NVIC_MPU_ATTR2_SHAREABLE                                              \
N                                0x00040000  // Shareable
X#define NVIC_MPU_ATTR2_SHAREABLE                                                                              0x00040000  
N#define NVIC_MPU_ATTR2_CACHEABLE                                              \
N                                0x00020000  // Cacheable
X#define NVIC_MPU_ATTR2_CACHEABLE                                                                              0x00020000  
N#define NVIC_MPU_ATTR2_BUFFRABLE                                              \
N                                0x00010000  // Bufferable
X#define NVIC_MPU_ATTR2_BUFFRABLE                                                                              0x00010000  
N#define NVIC_MPU_ATTR2_SRD_M    0x0000FF00  // Subregion Disable Bits
N#define NVIC_MPU_ATTR2_SIZE_M   0x0000003E  // Region Size Mask
N#define NVIC_MPU_ATTR2_ENABLE   0x00000001  // Region Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_BASE3 register.
N//
N//*****************************************************************************
N#define NVIC_MPU_BASE3_ADDR_M   0xFFFFFFE0  // Base Address Mask
N#define NVIC_MPU_BASE3_VALID    0x00000010  // Region Number Valid
N#define NVIC_MPU_BASE3_REGION_M 0x00000007  // Region Number
N#define NVIC_MPU_BASE3_ADDR_S   5
N#define NVIC_MPU_BASE3_REGION_S 0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_MPU_ATTR3 register.
N//
N//*****************************************************************************
N#define NVIC_MPU_ATTR3_XN       0x10000000  // Instruction Access Disable
N#define NVIC_MPU_ATTR3_AP_M     0x07000000  // Access Privilege
N#define NVIC_MPU_ATTR3_TEX_M    0x00380000  // Type Extension Mask
N#define NVIC_MPU_ATTR3_SHAREABLE                                              \
N                                0x00040000  // Shareable
X#define NVIC_MPU_ATTR3_SHAREABLE                                                                              0x00040000  
N#define NVIC_MPU_ATTR3_CACHEABLE                                              \
N                                0x00020000  // Cacheable
X#define NVIC_MPU_ATTR3_CACHEABLE                                                                              0x00020000  
N#define NVIC_MPU_ATTR3_BUFFRABLE                                              \
N                                0x00010000  // Bufferable
X#define NVIC_MPU_ATTR3_BUFFRABLE                                                                              0x00010000  
N#define NVIC_MPU_ATTR3_SRD_M    0x0000FF00  // Subregion Disable Bits
N#define NVIC_MPU_ATTR3_SIZE_M   0x0000003E  // Region Size Mask
N#define NVIC_MPU_ATTR3_ENABLE   0x00000001  // Region Enable
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_DBG_CTRL register.
N//
N//*****************************************************************************
N#define NVIC_DBG_CTRL_DBGKEY_M  0xFFFF0000  // Debug key mask
N#define NVIC_DBG_CTRL_DBGKEY    0xA05F0000  // Debug key
N#define NVIC_DBG_CTRL_S_RESET_ST                                              \
N                                0x02000000  // Core has reset since last read
X#define NVIC_DBG_CTRL_S_RESET_ST                                                                              0x02000000  
N#define NVIC_DBG_CTRL_S_RETIRE_ST                                             \
N                                0x01000000  // Core has executed insruction
X#define NVIC_DBG_CTRL_S_RETIRE_ST                                                                             0x01000000  
N                                            // since last read
N#define NVIC_DBG_CTRL_S_LOCKUP  0x00080000  // Core is locked up
N#define NVIC_DBG_CTRL_S_SLEEP   0x00040000  // Core is sleeping
N#define NVIC_DBG_CTRL_S_HALT    0x00020000  // Core status on halt
N#define NVIC_DBG_CTRL_S_REGRDY  0x00010000  // Register read/write available
N#define NVIC_DBG_CTRL_C_SNAPSTALL                                             \
N                                0x00000020  // Breaks a stalled load/store
X#define NVIC_DBG_CTRL_C_SNAPSTALL                                                                             0x00000020  
N#define NVIC_DBG_CTRL_C_MASKINT 0x00000008  // Mask interrupts when stepping
N#define NVIC_DBG_CTRL_C_STEP    0x00000004  // Step the core
N#define NVIC_DBG_CTRL_C_HALT    0x00000002  // Halt the core
N#define NVIC_DBG_CTRL_C_DEBUGEN 0x00000001  // Enable debug
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_DBG_XFER register.
N//
N//*****************************************************************************
N#define NVIC_DBG_XFER_REG_WNR   0x00010000  // Write or not read
N#define NVIC_DBG_XFER_REG_SEL_M 0x0000001F  // Register
N#define NVIC_DBG_XFER_REG_R0    0x00000000  // Register R0
N#define NVIC_DBG_XFER_REG_R1    0x00000001  // Register R1
N#define NVIC_DBG_XFER_REG_R2    0x00000002  // Register R2
N#define NVIC_DBG_XFER_REG_R3    0x00000003  // Register R3
N#define NVIC_DBG_XFER_REG_R4    0x00000004  // Register R4
N#define NVIC_DBG_XFER_REG_R5    0x00000005  // Register R5
N#define NVIC_DBG_XFER_REG_R6    0x00000006  // Register R6
N#define NVIC_DBG_XFER_REG_R7    0x00000007  // Register R7
N#define NVIC_DBG_XFER_REG_R8    0x00000008  // Register R8
N#define NVIC_DBG_XFER_REG_R9    0x00000009  // Register R9
N#define NVIC_DBG_XFER_REG_R10   0x0000000A  // Register R10
N#define NVIC_DBG_XFER_REG_R11   0x0000000B  // Register R11
N#define NVIC_DBG_XFER_REG_R12   0x0000000C  // Register R12
N#define NVIC_DBG_XFER_REG_R13   0x0000000D  // Register R13
N#define NVIC_DBG_XFER_REG_R14   0x0000000E  // Register R14
N#define NVIC_DBG_XFER_REG_R15   0x0000000F  // Register R15
N#define NVIC_DBG_XFER_REG_FLAGS 0x00000010  // xPSR/Flags register
N#define NVIC_DBG_XFER_REG_MSP   0x00000011  // Main SP
N#define NVIC_DBG_XFER_REG_PSP   0x00000012  // Process SP
N#define NVIC_DBG_XFER_REG_DSP   0x00000013  // Deep SP
N#define NVIC_DBG_XFER_REG_CFBP  0x00000014  // Control/Fault/BasePri/PriMask
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_DBG_DATA register.
N//
N//*****************************************************************************
N#define NVIC_DBG_DATA_M         0xFFFFFFFF  // Data temporary cache
N#define NVIC_DBG_DATA_S         0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_DBG_INT register.
N//
N//*****************************************************************************
N#define NVIC_DBG_INT_HARDERR    0x00000400  // Debug trap on hard fault
N#define NVIC_DBG_INT_INTERR     0x00000200  // Debug trap on interrupt errors
N#define NVIC_DBG_INT_BUSERR     0x00000100  // Debug trap on bus error
N#define NVIC_DBG_INT_STATERR    0x00000080  // Debug trap on usage fault state
N#define NVIC_DBG_INT_CHKERR     0x00000040  // Debug trap on usage fault check
N#define NVIC_DBG_INT_NOCPERR    0x00000020  // Debug trap on coprocessor error
N#define NVIC_DBG_INT_MMERR      0x00000010  // Debug trap on mem manage fault
N#define NVIC_DBG_INT_RESET      0x00000008  // Core reset status
N#define NVIC_DBG_INT_RSTPENDCLR 0x00000004  // Clear pending core reset
N#define NVIC_DBG_INT_RSTPENDING 0x00000002  // Core reset is pending
N#define NVIC_DBG_INT_RSTVCATCH  0x00000001  // Reset vector catch
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_SW_TRIG register.
N//
N//*****************************************************************************
N#define NVIC_SW_TRIG_INTID_M    0x000000FF  // Interrupt ID
N#define NVIC_SW_TRIG_INTID_S    0
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_FPCC register.
N//
N//*****************************************************************************
N#define NVIC_FPCC_ASPEN         0x80000000  // Automatic State Preservation
N                                            // Enable
N#define NVIC_FPCC_LSPEN         0x40000000  // Lazy State Preservation Enable
N#define NVIC_FPCC_MONRDY        0x00000100  // Monitor Ready
N#define NVIC_FPCC_BFRDY         0x00000040  // Bus Fault Ready
N#define NVIC_FPCC_MMRDY         0x00000020  // Memory Management Fault Ready
N#define NVIC_FPCC_HFRDY         0x00000010  // Hard Fault Ready
N#define NVIC_FPCC_THREAD        0x00000008  // Thread Mode
N#define NVIC_FPCC_USER          0x00000002  // User Privilege Level
N#define NVIC_FPCC_LSPACT        0x00000001  // Lazy State Preservation Active
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_FPCA register.
N//
N//*****************************************************************************
N#define NVIC_FPCA_ADDRESS_M     0xFFFFFFF8  // Address
N#define NVIC_FPCA_ADDRESS_S     3
N
N//*****************************************************************************
N//
N// The following are defines for the bit fields in the NVIC_FPDSC register.
N//
N//*****************************************************************************
N#define NVIC_FPDSC_AHP          0x04000000  // AHP Bit Default
N#define NVIC_FPDSC_DN           0x02000000  // DN Bit Default
N#define NVIC_FPDSC_FZ           0x01000000  // FZ Bit Default
N#define NVIC_FPDSC_RMODE_M      0x00C00000  // RMODE Bit Default
N#define NVIC_FPDSC_RMODE_RN     0x00000000  // Round to Nearest (RN) mode
N#define NVIC_FPDSC_RMODE_RP     0x00400000  // Round towards Plus Infinity (RP)
N                                            // mode
N#define NVIC_FPDSC_RMODE_RM     0x00800000  // Round towards Minus Infinity
N                                            // (RM) mode
N#define NVIC_FPDSC_RMODE_RZ     0x00C00000  // Round towards Zero (RZ) mode
N
N#endif // __TM4C123GH6PM_H__
L 7 "..\i2c\i2c.h" 2
N
N#define MASTER 0x10
N#define SLAVE 0x20
N
Ntypedef struct{
N    uint8_t MODULE_NUM;
N
N//the slave address
N    uint8_t SLAVE_ADDRESS;
N//    uint8_t SPEED_MODE
N    uint8_t RULE;
N
N}I2C_ConfigType;
N
Nextern const I2C_ConfigType I2C_GROUPS[I2C_GROUPS_NUMBER];
Xextern const I2C_ConfigType I2C_GROUPS[1u];
N
Nvoid I2C_init(void);
N
N
N#endif /* _I2C_H_INCLUDED_ */
L 8 "../i2c/i2c_config.c" 2
N#include "i2c_config.h"
N
Nconst I2C_ConfigType I2C_GROUPS[ I2C_GROUPS_NUMBER ] = {
Xconst I2C_ConfigType I2C_GROUPS[ 1u ] = {
N                                      {
N                                       2,
N                                       0x2f
N                                      }
N};
