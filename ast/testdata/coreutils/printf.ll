; ModuleID = 'coreutils-8.27/src/printf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Usage: %s FORMAT [ARGUMENT]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Print ARGUMENT(s) according to FORMAT, or execute according to OPTION:\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"\0AFORMAT controls the output as in C printf.  Interpreted sequences are:\0A\0A  \5C\22      double quote\0A\00", align 1
@.str.6 = private unnamed_addr constant [229 x i8] c"  \5C\5C      backslash\0A  \5Ca      alert (BEL)\0A  \5Cb      backspace\0A  \5Cc      produce no further output\0A  \5Ce      escape\0A  \5Cf      form feed\0A  \5Cn      new line\0A  \5Cr      carriage return\0A  \5Ct      horizontal tab\0A  \5Cv      vertical tab\0A\00", align 1
@.str.7 = private unnamed_addr constant [252 x i8] c"  \5CNNN    byte with octal value NNN (1 to 3 digits)\0A  \5CxHH    byte with hexadecimal value HH (1 to 2 digits)\0A  \5CuHHHH  Unicode (ISO/IEC 10646) character with hex value HHHH (4 digits)\0A  \5CUHHHHHHHH  Unicode character with hex value HHHHHHHH (8 digits)\0A\00", align 1
@.str.8 = private unnamed_addr constant [448 x i8] c"  %%      a single %\0A  %b      ARGUMENT as a string with '\5C' escapes interpreted,\0A          except that octal escapes are of the form \5C0 or \5C0NNN\0A  %q      ARGUMENT is printed in a format that can be reused as shell input,\0A          escaping non-printable characters with the proposed POSIX $'' syntax.\0A\0Aand all C format specifications ending with one of diouxXfeEgGcs, with\0AARGUMENTs converted to proper type first.  Variable widths are handled.\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@exit_status = internal unnamed_addr global i1 false, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@posixly_correct = internal unnamed_addr global i8 0, align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"invalid field width: %s\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"invalid precision: %s\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"%.*s: invalid conversion specification\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.40 = private unnamed_addr constant [73 x i8] c"warning: %s: character(s) following character constant have been ignored\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"warning: ignoring excess arguments, starting with %s\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"%s: expected a numeric value\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"%s: value not completely converted\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"missing hexadecimal number in escape\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"\22\5Cabcefnrtv\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"invalid universal character name \5C%c%0*x\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8
@.str.22 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16
@.str.52 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.53 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.54 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.55 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.56 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.57 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.58 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.59 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.60 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.61 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@unicode_to_mb.initialized = internal unnamed_addr global i1 false, align 4
@.str.75 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@unicode_to_mb.is_utf8 = internal unnamed_addr global i32 0, align 4
@unicode_to_mb.utf8_to_local = internal unnamed_addr global i8* null, align 8
@.str.1.76 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.2.77 = private unnamed_addr constant [26 x i8] c"iconv function not usable\00", align 1
@.str.3.78 = private unnamed_addr constant [23 x i8] c"character out of range\00", align 1
@.str.6.81 = private unnamed_addr constant [7 x i8] c"\5Cu%04X\00", align 1
@.str.7.82 = private unnamed_addr constant [7 x i8] c"\5CU%08X\00", align 1
@.str.4.83 = private unnamed_addr constant [45 x i8] c"cannot convert U+%04X to local character set\00", align 1
@.str.5.84 = private unnamed_addr constant [49 x i8] c"cannot convert U+%04X to local character set: %s\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.90 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.103 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.107 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.108 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"cannot perform formatted output\00", align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.136 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.137 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.138 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.139 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.140 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11
  br label %50

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 5) #11
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #11
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0), i32 5) #11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.6, i64 0, i64 0), i32 5) #11
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([252 x i8], [252 x i8]* @.str.7, i64 0, i64 0), i32 5) #11
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([448 x i8], [448 x i8]* @.str.8, i64 0, i64 0), i32 5) #11
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #11
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #11
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #11
  %37 = tail call i8* @setlocale(i32 5, i8* null) #11
  %38 = icmp eq i8* %37, null
  br i1 %38, label %45, label %39

; <label>:39:                                     ; preds = %8
  %40 = tail call i32 @strncmp(i8* nonnull %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

; <label>:42:                                     ; preds = %39
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #11
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11
  br label %45

; <label>:45:                                     ; preds = %8, %39, %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #11
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #11
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #11
  br label %50

; <label>:50:                                     ; preds = %45, %3
  tail call void @exit(i32 %0) #14
  unreachable
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #6 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %6) #11
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #11
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #11
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11
  store i1 false, i1* @exit_status, align 4
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #11
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i8
  store i8 %13, i8* @posixly_correct, align 1
  %14 = icmp eq i32 %0, 2
  br i1 %14, label %15, label %27

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %1, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %15
  tail call void @usage(i32 0) #15
  unreachable

; <label>:21:                                     ; preds = %15
  %22 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* null) #11
  br label %423

; <label>:27:                                     ; preds = %2
  %28 = icmp sgt i32 %0, 1
  br i1 %28, label %29, label %51

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds i8*, i8** %1, i64 1
  %31 = load i8*, i8** %30, align 8
  br label %32

; <label>:32:                                     ; preds = %29, %21
  %33 = phi i8** [ %30, %29 ], [ %16, %21 ]
  %34 = phi i8* [ %31, %29 ], [ %17, %21 ]
  %35 = load i8, i8* %34, align 1
  %36 = icmp eq i8 %35, 45
  br i1 %36, label %37, label %53

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds i8, i8* %34, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = icmp eq i8 %39, 45
  br i1 %40, label %41, label %53

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %34, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %53

; <label>:45:                                     ; preds = %41
  %46 = icmp slt i32 %0, 3
  br i1 %46, label %51, label %47

; <label>:47:                                     ; preds = %45
  %48 = add nsw i32 %0, -1
  %49 = getelementptr inbounds i8*, i8** %1, i64 2
  %50 = load i8*, i8** %49, align 8
  br label %53

; <label>:51:                                     ; preds = %27, %45
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:53:                                     ; preds = %47, %32, %37, %41
  %54 = phi i8* [ %50, %47 ], [ %34, %41 ], [ %34, %37 ], [ %34, %32 ]
  %55 = phi i32 [ %48, %47 ], [ %0, %41 ], [ %0, %37 ], [ %0, %32 ]
  %56 = phi i8** [ %33, %47 ], [ %1, %41 ], [ %1, %37 ], [ %1, %32 ]
  %57 = add nsw i32 %55, -2
  %58 = getelementptr inbounds i8*, i8** %56, i64 2
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 88
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 120
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 117
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 115
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 111
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 105
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 71
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 70
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 69
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 101
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 100
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 99
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 65
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 97
  %74 = bitcast i8** %4 to i8*
  %75 = bitcast i8** %3 to i8*
  br label %76

; <label>:76:                                     ; preds = %407, %53
  %77 = phi i8** [ %58, %53 ], [ %411, %407 ]
  %78 = phi i32 [ %57, %53 ], [ %408, %407 ]
  call void @llvm.lifetime.start(i64 256, i8* nonnull %59) #11
  %79 = load i8, i8* %54, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %407, label %81

; <label>:81:                                     ; preds = %76
  br label %82

; <label>:82:                                     ; preds = %81, %397
  %83 = phi i8 [ %404, %397 ], [ %79, %81 ]
  %84 = phi i32 [ %402, %397 ], [ %78, %81 ]
  %85 = phi i8** [ %401, %397 ], [ %77, %81 ]
  %86 = phi i8* [ %403, %397 ], [ %54, %81 ]
  %87 = phi i32 [ %399, %397 ], [ 0, %81 ]
  %88 = phi i32 [ %398, %397 ], [ 0, %81 ]
  %89 = sext i8 %83 to i32
  switch i32 %89, label %385 [
    i32 37, label %90
    i32 92, label %381
  ]

; <label>:90:                                     ; preds = %82
  %91 = getelementptr inbounds i8, i8* %86, i64 1
  %92 = load i8, i8* %91, align 1
  switch i8 %92, label %142 [
    i8 37, label %93
    i8 98, label %104
    i8 113, label %133
  ]

; <label>:93:                                     ; preds = %90
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %95 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %94, i64 0, i32 5
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %94, i64 0, i32 6
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ult i8* %96, %98
  br i1 %99, label %102, label %100

; <label>:100:                                    ; preds = %93
  %101 = call i32 @__overflow(%struct._IO_FILE* %94, i32 37) #11
  br label %397

; <label>:102:                                    ; preds = %93
  %103 = getelementptr inbounds i8, i8* %96, i64 1
  store i8* %103, i8** %95, align 8
  store i8 37, i8* %96, align 1
  br label %397

; <label>:104:                                    ; preds = %90
  %105 = icmp sgt i32 %84, 0
  br i1 %105, label %106, label %397

; <label>:106:                                    ; preds = %104
  %107 = load i8*, i8** %85, align 8
  br label %108

; <label>:108:                                    ; preds = %127, %106
  %109 = phi i8* [ %107, %106 ], [ %129, %127 ]
  %110 = load i8, i8* %109, align 1
  switch i8 %110, label %115 [
    i8 0, label %130
    i8 92, label %111
  ]

; <label>:111:                                    ; preds = %108
  %112 = call fastcc i32 @print_esc(i8* %109, i1 zeroext true) #11
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  br label %127

; <label>:115:                                    ; preds = %108
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 5
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 6
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ult i8* %118, %120
  br i1 %121, label %125, label %122

; <label>:122:                                    ; preds = %115
  %123 = zext i8 %110 to i32
  %124 = call i32 @__overflow(%struct._IO_FILE* %116, i32 %123) #11
  br label %127

; <label>:125:                                    ; preds = %115
  %126 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %126, i8** %117, align 8
  store i8 %110, i8* %118, align 1
  br label %127

; <label>:127:                                    ; preds = %125, %122, %111
  %128 = phi i8* [ %114, %111 ], [ %109, %122 ], [ %109, %125 ]
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  br label %108

; <label>:130:                                    ; preds = %108
  %131 = getelementptr inbounds i8*, i8** %85, i64 1
  %132 = add nsw i32 %84, -1
  br label %397

; <label>:133:                                    ; preds = %90
  %134 = icmp sgt i32 %84, 0
  br i1 %134, label %135, label %397

; <label>:135:                                    ; preds = %133
  %136 = load i8*, i8** %85, align 8
  %137 = call i8* @quotearg_style(i32 3, i8* %136) #11
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %139 = call i32 @fputs_unlocked(i8* %137, %struct._IO_FILE* %138) #11
  %140 = getelementptr inbounds i8*, i8** %85, i64 1
  %141 = add nsw i32 %84, -1
  br label %397

; <label>:142:                                    ; preds = %90
  call void @llvm.memset.p0i8.i64(i8* nonnull %59, i8 0, i64 256, i32 16, i1 false) #11
  store i8 1, i8* %60, align 8
  store i8 1, i8* %61, align 8
  store i8 1, i8* %62, align 1
  store i8 1, i8* %63, align 1
  store i8 1, i8* %64, align 1
  store i8 1, i8* %65, align 1
  store i8 1, i8* %66, align 1
  store i8 1, i8* %67, align 2
  store i8 1, i8* %68, align 1
  store i8 1, i8* %72, align 1
  store i8 1, i8* %73, align 1
  call void @llvm.memset.p0i8.i64(i8* %71, i8 1, i64 5, i32 1, i1 false) #11
  br label %143

; <label>:143:                                    ; preds = %151, %142
  %144 = phi i64 [ 1, %142 ], [ %153, %151 ]
  %145 = phi i8* [ %91, %142 ], [ %152, %151 ]
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  switch i32 %147, label %154 [
    i32 73, label %148
    i32 39, label %148
    i32 45, label %151
    i32 43, label %151
    i32 32, label %151
    i32 35, label %149
    i32 48, label %150
  ]

; <label>:148:                                    ; preds = %143, %143
  store i8 0, i8* %60, align 8
  store i8 0, i8* %61, align 8
  store i8 0, i8* %63, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %68, align 1
  store i8 0, i8* %69, align 1
  store i8 0, i8* %71, align 1
  store i8 0, i8* %72, align 1
  store i8 0, i8* %73, align 1
  br label %151

; <label>:149:                                    ; preds = %143
  store i8 0, i8* %62, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %70, align 4
  store i8 0, i8* %71, align 1
  br label %151

; <label>:150:                                    ; preds = %143
  store i8 0, i8* %63, align 1
  store i8 0, i8* %71, align 1
  br label %151

; <label>:151:                                    ; preds = %150, %149, %148, %143, %143, %143
  %152 = getelementptr inbounds i8, i8* %145, i64 1
  %153 = add i64 %144, 1
  br label %143

; <label>:154:                                    ; preds = %143
  %155 = icmp eq i8 %146, 42
  br i1 %155, label %160, label %156

; <label>:156:                                    ; preds = %154
  %157 = add nsw i32 %147, -48
  %158 = icmp ult i32 %157, 10
  br i1 %158, label %159, label %187

; <label>:159:                                    ; preds = %156
  br label %177

; <label>:160:                                    ; preds = %154
  %161 = getelementptr inbounds i8, i8* %145, i64 1
  %162 = add i64 %144, 1
  %163 = icmp sgt i32 %84, 0
  br i1 %163, label %164, label %187

; <label>:164:                                    ; preds = %160
  %165 = load i8*, i8** %85, align 8
  %166 = call fastcc i64 @vstrtoimax(i8* %165) #11
  %167 = add i64 %166, 2147483648
  %168 = icmp ult i64 %167, 4294967296
  br i1 %168, label %169, label %173

; <label>:169:                                    ; preds = %164
  %170 = trunc i64 %166 to i32
  %171 = getelementptr inbounds i8*, i8** %85, i64 1
  %172 = add nsw i32 %84, -1
  br label %187

; <label>:173:                                    ; preds = %164
  %174 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i32 5) #11
  %175 = load i8*, i8** %85, align 8
  %176 = call i8* @quote(i8* %175) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %174, i8* %176) #11
  unreachable

; <label>:177:                                    ; preds = %159, %177
  %178 = phi i8* [ %180, %177 ], [ %145, %159 ]
  %179 = phi i64 [ %181, %177 ], [ %144, %159 ]
  %180 = getelementptr inbounds i8, i8* %178, i64 1
  %181 = add i64 %179, 1
  %182 = load i8, i8* %180, align 1
  %183 = sext i8 %182 to i32
  %184 = add nsw i32 %183, -48
  %185 = icmp ult i32 %184, 10
  br i1 %185, label %177, label %186

; <label>:186:                                    ; preds = %177
  br label %187

; <label>:187:                                    ; preds = %186, %169, %160, %156
  %188 = phi i64 [ %162, %160 ], [ %162, %169 ], [ %144, %156 ], [ %181, %186 ]
  %189 = phi i1 [ true, %160 ], [ true, %169 ], [ false, %156 ], [ false, %186 ]
  %190 = phi i32 [ 0, %160 ], [ %170, %169 ], [ %88, %156 ], [ %88, %186 ]
  %191 = phi i8* [ %161, %160 ], [ %161, %169 ], [ %145, %156 ], [ %180, %186 ]
  %192 = phi i8** [ %85, %160 ], [ %171, %169 ], [ %85, %156 ], [ %85, %186 ]
  %193 = phi i32 [ %84, %160 ], [ %172, %169 ], [ %84, %156 ], [ %84, %186 ]
  %194 = load i8, i8* %191, align 1
  %195 = icmp eq i8 %194, 46
  br i1 %195, label %196, label %228

; <label>:196:                                    ; preds = %187
  %197 = getelementptr inbounds i8, i8* %191, i64 1
  store i8 0, i8* %71, align 1
  %198 = load i8, i8* %197, align 1
  %199 = icmp eq i8 %198, 42
  br i1 %199, label %207, label %200

; <label>:200:                                    ; preds = %196
  %201 = add i64 %188, 1
  %202 = sext i8 %198 to i32
  %203 = add nsw i32 %202, -48
  %204 = icmp ult i32 %203, 10
  br i1 %204, label %205, label %228

; <label>:205:                                    ; preds = %200
  %206 = getelementptr inbounds i8, i8* %191, i64 2
  br label %235

; <label>:207:                                    ; preds = %196
  %208 = getelementptr inbounds i8, i8* %191, i64 2
  %209 = add i64 %188, 2
  %210 = icmp sgt i32 %193, 0
  br i1 %210, label %211, label %228

; <label>:211:                                    ; preds = %207
  %212 = load i8*, i8** %192, align 8
  %213 = call fastcc i64 @vstrtoimax(i8* %212) #11
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %223, label %215

; <label>:215:                                    ; preds = %211
  %216 = icmp sgt i64 %213, 2147483647
  br i1 %216, label %217, label %221

; <label>:217:                                    ; preds = %215
  %218 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 5) #11
  %219 = load i8*, i8** %192, align 8
  %220 = call i8* @quote(i8* %219) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %218, i8* %220) #11
  unreachable

; <label>:221:                                    ; preds = %215
  %222 = trunc i64 %213 to i32
  br label %223

; <label>:223:                                    ; preds = %221, %211
  %224 = phi i32 [ %222, %221 ], [ -1, %211 ]
  %225 = getelementptr inbounds i8*, i8** %192, i64 1
  %226 = add nsw i32 %193, -1
  br label %228

; <label>:227:                                    ; preds = %235
  br label %228

; <label>:228:                                    ; preds = %227, %200, %223, %207, %187
  %229 = phi i64 [ %209, %223 ], [ %209, %207 ], [ %188, %187 ], [ %201, %200 ], [ %239, %227 ]
  %230 = phi i8 [ 1, %223 ], [ 1, %207 ], [ 0, %187 ], [ 0, %200 ], [ 0, %227 ]
  %231 = phi i32 [ %224, %223 ], [ 0, %207 ], [ %87, %187 ], [ %87, %200 ], [ %87, %227 ]
  %232 = phi i8* [ %208, %223 ], [ %208, %207 ], [ %191, %187 ], [ %197, %200 ], [ %236, %227 ]
  %233 = phi i8** [ %225, %223 ], [ %192, %207 ], [ %192, %187 ], [ %192, %200 ], [ %192, %227 ]
  %234 = phi i32 [ %226, %223 ], [ %193, %207 ], [ %193, %187 ], [ %193, %200 ], [ %193, %227 ]
  br label %244

; <label>:235:                                    ; preds = %205, %235
  %236 = phi i8* [ %243, %235 ], [ %206, %205 ]
  %237 = phi i64 [ %239, %235 ], [ %201, %205 ]
  %238 = load i8, i8* %236, align 1
  %239 = add i64 %237, 1
  %240 = sext i8 %238 to i32
  %241 = add nsw i32 %240, -48
  %242 = icmp ult i32 %241, 10
  %243 = getelementptr inbounds i8, i8* %236, i64 1
  br i1 %242, label %235, label %227

; <label>:244:                                    ; preds = %247, %228
  %245 = phi i8* [ %248, %247 ], [ %232, %228 ]
  %246 = load i8, i8* %245, align 1
  switch i8 %246, label %249 [
    i8 108, label %247
    i8 76, label %247
    i8 104, label %247
    i8 106, label %247
    i8 116, label %247
    i8 122, label %247
  ]

; <label>:247:                                    ; preds = %244, %244, %244, %244, %244, %244
  %248 = getelementptr inbounds i8, i8* %245, i64 1
  br label %244

; <label>:249:                                    ; preds = %244
  %250 = zext i8 %246 to i64
  %251 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %261

; <label>:254:                                    ; preds = %249
  %255 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i32 5) #11
  %256 = getelementptr inbounds i8, i8* %245, i64 1
  %257 = ptrtoint i8* %256 to i64
  %258 = ptrtoint i8* %86 to i64
  %259 = sub i64 %257, %258
  %260 = trunc i64 %259 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %255, i32 %260, i8* %86) #11
  unreachable

; <label>:261:                                    ; preds = %249
  %262 = icmp ne i8 %230, 0
  %263 = icmp slt i32 %234, 1
  br i1 %263, label %268, label %264

; <label>:264:                                    ; preds = %261
  %265 = add nsw i32 %234, -1
  %266 = getelementptr inbounds i8*, i8** %233, i64 1
  %267 = load i8*, i8** %233, align 8
  br label %268

; <label>:268:                                    ; preds = %264, %261
  %269 = phi i8** [ %233, %261 ], [ %266, %264 ]
  %270 = phi i32 [ %234, %261 ], [ %265, %264 ]
  %271 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %261 ], [ %267, %264 ]
  %272 = sext i8 %246 to i32
  switch i32 %272, label %274 [
    i32 100, label %275
    i32 105, label %275
    i32 111, label %275
    i32 117, label %275
    i32 120, label %275
    i32 88, label %275
    i32 97, label %273
    i32 101, label %273
    i32 102, label %273
    i32 103, label %273
    i32 65, label %273
    i32 69, label %273
    i32 70, label %273
    i32 71, label %273
  ]

; <label>:273:                                    ; preds = %268, %268, %268, %268, %268, %268, %268, %268
  br label %275

; <label>:274:                                    ; preds = %268
  br label %275

; <label>:275:                                    ; preds = %274, %273, %268, %268, %268, %268, %268, %268
  %276 = phi i64 [ 0, %274 ], [ 1, %273 ], [ 1, %268 ], [ 1, %268 ], [ 1, %268 ], [ 1, %268 ], [ 1, %268 ], [ 1, %268 ]
  %277 = phi i8* [ %86, %274 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %273 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %268 ]
  %278 = add i64 %229, 2
  %279 = add i64 %278, %276
  %280 = call noalias i8* @xmalloc(i64 %279) #11
  %281 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %280, i1 false) #11
  %282 = call i8* @__mempcpy_chk(i8* nonnull %280, i8* nonnull %86, i64 %229, i64 %281) #11
  %283 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %282, i1 false) #11
  %284 = call i8* @__mempcpy_chk(i8* nonnull %282, i8* nonnull %277, i64 %276, i64 %283) #11
  %285 = getelementptr inbounds i8, i8* %284, i64 1
  store i8 %246, i8* %284, align 1
  store i8 0, i8* %285, align 1
  switch i32 %272, label %380 [
    i32 100, label %286
    i32 105, label %286
    i32 111, label %298
    i32 117, label %298
    i32 120, label %298
    i32 88, label %298
    i32 97, label %330
    i32 65, label %330
    i32 101, label %330
    i32 69, label %330
    i32 102, label %330
    i32 70, label %330
    i32 103, label %330
    i32 71, label %330
    i32 99, label %362
    i32 115, label %369
  ]

; <label>:286:                                    ; preds = %275, %275
  %287 = call fastcc i64 @vstrtoimax(i8* %271) #11
  br i1 %189, label %293, label %288

; <label>:288:                                    ; preds = %286
  br i1 %262, label %291, label %289

; <label>:289:                                    ; preds = %288
  %290 = call i32 (i8*, ...) @xprintf(i8* %280, i64 %287) #11
  br label %380

; <label>:291:                                    ; preds = %288
  %292 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %231, i64 %287) #11
  br label %380

; <label>:293:                                    ; preds = %286
  br i1 %262, label %296, label %294

; <label>:294:                                    ; preds = %293
  %295 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i64 %287) #11
  br label %380

; <label>:296:                                    ; preds = %293
  %297 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i32 %231, i64 %287) #11
  br label %380

; <label>:298:                                    ; preds = %275, %275, %275, %275
  call void @llvm.lifetime.start(i64 8, i8* nonnull %74) #11
  %299 = load i8, i8* %271, align 1
  switch i8 %299, label %314 [
    i8 34, label %300
    i8 39, label %300
  ]

; <label>:300:                                    ; preds = %298, %298
  %301 = getelementptr inbounds i8, i8* %271, i64 1
  %302 = load i8, i8* %301, align 1
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %314, label %304

; <label>:304:                                    ; preds = %300
  %305 = zext i8 %302 to i64
  %306 = getelementptr inbounds i8, i8* %271, i64 2
  %307 = load i8, i8* %306, align 1
  %308 = icmp ne i8 %307, 0
  %309 = load i8, i8* @posixly_correct, align 1
  %310 = icmp eq i8 %309, 0
  %311 = and i1 %308, %310
  br i1 %311, label %312, label %318

; <label>:312:                                    ; preds = %304
  %313 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %313, i8* %306) #11
  br label %318

; <label>:314:                                    ; preds = %300, %298
  %315 = tail call i32* @__errno_location() #1
  store i32 0, i32* %315, align 4
  %316 = call i64 @__strtoul_internal(i8* nonnull %271, i8** nonnull %4, i32 0, i32 0) #11
  %317 = load i8*, i8** %4, align 8
  call fastcc void @verify_numeric(i8* nonnull %271, i8* %317) #11
  br label %318

; <label>:318:                                    ; preds = %314, %312, %304
  %319 = phi i64 [ %316, %314 ], [ %305, %304 ], [ %305, %312 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %74) #11
  br i1 %189, label %325, label %320

; <label>:320:                                    ; preds = %318
  br i1 %262, label %323, label %321

; <label>:321:                                    ; preds = %320
  %322 = call i32 (i8*, ...) @xprintf(i8* %280, i64 %319) #11
  br label %380

; <label>:323:                                    ; preds = %320
  %324 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %231, i64 %319) #11
  br label %380

; <label>:325:                                    ; preds = %318
  br i1 %262, label %328, label %326

; <label>:326:                                    ; preds = %325
  %327 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i64 %319) #11
  br label %380

; <label>:328:                                    ; preds = %325
  %329 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i32 %231, i64 %319) #11
  br label %380

; <label>:330:                                    ; preds = %275, %275, %275, %275, %275, %275, %275, %275
  call void @llvm.lifetime.start(i64 8, i8* nonnull %75) #11
  %331 = load i8, i8* %271, align 1
  switch i8 %331, label %346 [
    i8 34, label %332
    i8 39, label %332
  ]

; <label>:332:                                    ; preds = %330, %330
  %333 = getelementptr inbounds i8, i8* %271, i64 1
  %334 = load i8, i8* %333, align 1
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %346, label %336

; <label>:336:                                    ; preds = %332
  %337 = uitofp i8 %334 to x86_fp80
  %338 = getelementptr inbounds i8, i8* %271, i64 2
  %339 = load i8, i8* %338, align 1
  %340 = icmp ne i8 %339, 0
  %341 = load i8, i8* @posixly_correct, align 1
  %342 = icmp eq i8 %341, 0
  %343 = and i1 %340, %342
  br i1 %343, label %344, label %350

; <label>:344:                                    ; preds = %336
  %345 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %345, i8* %338) #11
  br label %350

; <label>:346:                                    ; preds = %332, %330
  %347 = tail call i32* @__errno_location() #1
  store i32 0, i32* %347, align 4
  %348 = call x86_fp80 @c_strtold(i8* nonnull %271, i8** nonnull %3) #11
  %349 = load i8*, i8** %3, align 8
  call fastcc void @verify_numeric(i8* nonnull %271, i8* %349) #11
  br label %350

; <label>:350:                                    ; preds = %346, %344, %336
  %351 = phi x86_fp80 [ %348, %346 ], [ %337, %336 ], [ %337, %344 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %75) #11
  br i1 %189, label %357, label %352

; <label>:352:                                    ; preds = %350
  br i1 %262, label %355, label %353

; <label>:353:                                    ; preds = %352
  %354 = call i32 (i8*, ...) @xprintf(i8* %280, x86_fp80 %351) #11
  br label %380

; <label>:355:                                    ; preds = %352
  %356 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %231, x86_fp80 %351) #11
  br label %380

; <label>:357:                                    ; preds = %350
  br i1 %262, label %360, label %358

; <label>:358:                                    ; preds = %357
  %359 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, x86_fp80 %351) #11
  br label %380

; <label>:360:                                    ; preds = %357
  %361 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i32 %231, x86_fp80 %351) #11
  br label %380

; <label>:362:                                    ; preds = %275
  %363 = load i8, i8* %271, align 1
  %364 = sext i8 %363 to i32
  br i1 %189, label %367, label %365

; <label>:365:                                    ; preds = %362
  %366 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %364) #11
  br label %380

; <label>:367:                                    ; preds = %362
  %368 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i32 %364) #11
  br label %380

; <label>:369:                                    ; preds = %275
  br i1 %189, label %375, label %370

; <label>:370:                                    ; preds = %369
  br i1 %262, label %373, label %371

; <label>:371:                                    ; preds = %370
  %372 = call i32 (i8*, ...) @xprintf(i8* %280, i8* %271) #11
  br label %380

; <label>:373:                                    ; preds = %370
  %374 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %231, i8* %271) #11
  br label %380

; <label>:375:                                    ; preds = %369
  br i1 %262, label %378, label %376

; <label>:376:                                    ; preds = %375
  %377 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i8* %271) #11
  br label %380

; <label>:378:                                    ; preds = %375
  %379 = call i32 (i8*, ...) @xprintf(i8* %280, i32 %190, i32 %231, i8* %271) #11
  br label %380

; <label>:380:                                    ; preds = %378, %376, %373, %371, %367, %365, %360, %358, %355, %353, %328, %326, %323, %321, %296, %294, %291, %289, %275
  call void @free(i8* %280) #11
  br label %397

; <label>:381:                                    ; preds = %82
  %382 = call fastcc i32 @print_esc(i8* %86, i1 zeroext false) #11
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %86, i64 %383
  br label %397

; <label>:385:                                    ; preds = %82
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %387 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %386, i64 0, i32 5
  %388 = load i8*, i8** %387, align 8
  %389 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %386, i64 0, i32 6
  %390 = load i8*, i8** %389, align 8
  %391 = icmp ult i8* %388, %390
  br i1 %391, label %395, label %392

; <label>:392:                                    ; preds = %385
  %393 = and i32 %89, 255
  %394 = call i32 @__overflow(%struct._IO_FILE* %386, i32 %393) #11
  br label %397

; <label>:395:                                    ; preds = %385
  %396 = getelementptr inbounds i8, i8* %388, i64 1
  store i8* %396, i8** %387, align 8
  store i8 %83, i8* %388, align 1
  br label %397

; <label>:397:                                    ; preds = %395, %392, %381, %380, %135, %133, %130, %104, %102, %100
  %398 = phi i32 [ %88, %381 ], [ %88, %130 ], [ %88, %104 ], [ %88, %135 ], [ %88, %133 ], [ %190, %380 ], [ %88, %100 ], [ %88, %102 ], [ %88, %392 ], [ %88, %395 ]
  %399 = phi i32 [ %87, %381 ], [ %87, %130 ], [ %87, %104 ], [ %87, %135 ], [ %87, %133 ], [ %231, %380 ], [ %87, %100 ], [ %87, %102 ], [ %87, %392 ], [ %87, %395 ]
  %400 = phi i8* [ %384, %381 ], [ %91, %130 ], [ %91, %104 ], [ %91, %135 ], [ %91, %133 ], [ %245, %380 ], [ %91, %100 ], [ %91, %102 ], [ %86, %392 ], [ %86, %395 ]
  %401 = phi i8** [ %85, %381 ], [ %131, %130 ], [ %85, %104 ], [ %140, %135 ], [ %85, %133 ], [ %269, %380 ], [ %85, %100 ], [ %85, %102 ], [ %85, %392 ], [ %85, %395 ]
  %402 = phi i32 [ %84, %381 ], [ %132, %130 ], [ %84, %104 ], [ %141, %135 ], [ %84, %133 ], [ %270, %380 ], [ %84, %100 ], [ %84, %102 ], [ %84, %392 ], [ %84, %395 ]
  %403 = getelementptr inbounds i8, i8* %400, i64 1
  %404 = load i8, i8* %403, align 1
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %406, label %82

; <label>:406:                                    ; preds = %397
  br label %407

; <label>:407:                                    ; preds = %406, %76
  %408 = phi i32 [ %78, %76 ], [ %402, %406 ]
  %409 = sub nsw i32 %78, %408
  call void @llvm.lifetime.end(i64 256, i8* nonnull %59) #11
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8*, i8** %77, i64 %410
  %412 = icmp sgt i32 %409, 0
  %413 = icmp sgt i32 %408, 0
  %414 = and i1 %413, %412
  br i1 %414, label %76, label %415

; <label>:415:                                    ; preds = %407
  br i1 %413, label %416, label %420

; <label>:416:                                    ; preds = %415
  %417 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 5) #11
  %418 = load i8*, i8** %411, align 8
  %419 = call i8* @quote(i8* %418) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %417, i8* %419) #11
  br label %420

; <label>:420:                                    ; preds = %416, %415
  %421 = load i1, i1* @exit_status, align 4
  %422 = zext i1 %421 to i32
  br label %423

; <label>:423:                                    ; preds = %420, %24
  %424 = phi i32 [ 0, %24 ], [ %422, %420 ]
  ret i32 %424
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @print_esc(i8*, i1 zeroext) unnamed_addr #6 {
  %3 = getelementptr inbounds i8, i8* %0, i64 1
  %4 = load i8, i8* %3, align 1
  %5 = icmp eq i8 %4, 120
  br i1 %5, label %6, label %51

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %0, i64 2
  %8 = tail call i16** @__ctype_b_loc() #1
  %9 = load i16*, i16** %8, align 8
  %10 = load i8, i8* %7, align 1
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i16, i16* %9, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = and i16 %13, 4096
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %34, label %16

; <label>:16:                                     ; preds = %6
  %17 = sext i8 %10 to i32
  %18 = add i8 %10, -97
  %19 = icmp ult i8 %18, 6
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %16
  %21 = add i8 %10, -65
  %22 = icmp ult i8 %21, 6
  %23 = select i1 %22, i32 -55, i32 -48
  br label %24

; <label>:24:                                     ; preds = %16, %20
  %25 = phi i32 [ %23, %20 ], [ -87, %16 ]
  %26 = add nsw i32 %17, %25
  %27 = getelementptr inbounds i8, i8* %0, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i16, i16* %9, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = and i16 %31, 4096
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %274

; <label>:34:                                     ; preds = %6
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %35) #11
  unreachable

; <label>:36:                                     ; preds = %24, %283
  %37 = phi i32 [ %286, %283 ], [ %26, %24 ]
  %38 = phi i8* [ %287, %283 ], [ %27, %24 ]
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ult i8* %41, %43
  br i1 %44, label %48, label %45

; <label>:45:                                     ; preds = %36
  %46 = and i32 %37, 255
  %47 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %46) #11
  br label %267

; <label>:48:                                     ; preds = %36
  %49 = trunc i32 %37 to i8
  %50 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %50, i8** %40, align 8
  store i8 %49, i8* %41, align 1
  br label %267

; <label>:51:                                     ; preds = %2
  %52 = and i8 %4, -8
  %53 = icmp eq i8 %52, 48
  br i1 %53, label %54, label %84

; <label>:54:                                     ; preds = %51
  %55 = icmp eq i8 %4, 48
  %56 = and i1 %55, %1
  %57 = zext i1 %56 to i64
  %58 = getelementptr inbounds i8, i8* %3, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = and i8 %59, -8
  %61 = icmp eq i8 %60, 48
  br i1 %61, label %62, label %69

; <label>:62:                                     ; preds = %54
  %63 = sext i8 %59 to i32
  %64 = add nsw i32 %63, -48
  %65 = getelementptr inbounds i8, i8* %58, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = and i8 %66, -8
  %68 = icmp eq i8 %67, 48
  br i1 %68, label %288, label %69

; <label>:69:                                     ; preds = %297, %288, %62, %54
  %70 = phi i32 [ 0, %54 ], [ %64, %62 ], [ %292, %288 ], [ %301, %297 ]
  %71 = phi i8* [ %58, %54 ], [ %65, %62 ], [ %293, %288 ], [ %302, %297 ]
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 6
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ult i8* %74, %76
  br i1 %77, label %81, label %78

; <label>:78:                                     ; preds = %69
  %79 = and i32 %70, 255
  %80 = tail call i32 @__overflow(%struct._IO_FILE* %72, i32 %79) #11
  br label %267

; <label>:81:                                     ; preds = %69
  %82 = trunc i32 %70 to i8
  %83 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %83, i8** %73, align 8
  store i8 %82, i8* %74, align 1
  br label %267

; <label>:84:                                     ; preds = %51
  %85 = icmp eq i8 %4, 0
  br i1 %85, label %239, label %86

; <label>:86:                                     ; preds = %84
  %87 = sext i8 %4 to i32
  %88 = tail call i8* @memchr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 %87, i64 12)
  %89 = icmp eq i8* %88, null
  br i1 %89, label %193, label %90

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds i8, i8* %0, i64 2
  switch i32 %87, label %181 [
    i32 97, label %92
    i32 98, label %103
    i32 99, label %114
    i32 101, label %115
    i32 102, label %126
    i32 110, label %137
    i32 114, label %148
    i32 116, label %159
    i32 118, label %170
  ]

; <label>:92:                                     ; preds = %90
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %94 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %93, i64 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %93, i64 0, i32 6
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ult i8* %95, %97
  br i1 %98, label %101, label %99

; <label>:99:                                     ; preds = %92
  %100 = tail call i32 @__overflow(%struct._IO_FILE* %93, i32 7) #11
  br label %267

; <label>:101:                                    ; preds = %92
  %102 = getelementptr inbounds i8, i8* %95, i64 1
  store i8* %102, i8** %94, align 8
  store i8 7, i8* %95, align 1
  br label %267

; <label>:103:                                    ; preds = %90
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 5
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 6
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ult i8* %106, %108
  br i1 %109, label %112, label %110

; <label>:110:                                    ; preds = %103
  %111 = tail call i32 @__overflow(%struct._IO_FILE* %104, i32 8) #11
  br label %267

; <label>:112:                                    ; preds = %103
  %113 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %113, i8** %105, align 8
  store i8 8, i8* %106, align 1
  br label %267

; <label>:114:                                    ; preds = %90
  tail call void @exit(i32 0) #14
  unreachable

; <label>:115:                                    ; preds = %90
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 5
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 6
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ult i8* %118, %120
  br i1 %121, label %124, label %122

; <label>:122:                                    ; preds = %115
  %123 = tail call i32 @__overflow(%struct._IO_FILE* %116, i32 27) #11
  br label %267

; <label>:124:                                    ; preds = %115
  %125 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %125, i8** %117, align 8
  store i8 27, i8* %118, align 1
  br label %267

; <label>:126:                                    ; preds = %90
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %128 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %127, i64 0, i32 5
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %127, i64 0, i32 6
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ult i8* %129, %131
  br i1 %132, label %135, label %133

; <label>:133:                                    ; preds = %126
  %134 = tail call i32 @__overflow(%struct._IO_FILE* %127, i32 12) #11
  br label %267

; <label>:135:                                    ; preds = %126
  %136 = getelementptr inbounds i8, i8* %129, i64 1
  store i8* %136, i8** %128, align 8
  store i8 12, i8* %129, align 1
  br label %267

; <label>:137:                                    ; preds = %90
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 5
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 6
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ult i8* %140, %142
  br i1 %143, label %146, label %144

; <label>:144:                                    ; preds = %137
  %145 = tail call i32 @__overflow(%struct._IO_FILE* %138, i32 10) #11
  br label %267

; <label>:146:                                    ; preds = %137
  %147 = getelementptr inbounds i8, i8* %140, i64 1
  store i8* %147, i8** %139, align 8
  store i8 10, i8* %140, align 1
  br label %267

; <label>:148:                                    ; preds = %90
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %150 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %149, i64 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %149, i64 0, i32 6
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ult i8* %151, %153
  br i1 %154, label %157, label %155

; <label>:155:                                    ; preds = %148
  %156 = tail call i32 @__overflow(%struct._IO_FILE* %149, i32 13) #11
  br label %267

; <label>:157:                                    ; preds = %148
  %158 = getelementptr inbounds i8, i8* %151, i64 1
  store i8* %158, i8** %150, align 8
  store i8 13, i8* %151, align 1
  br label %267

; <label>:159:                                    ; preds = %90
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %161 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 5
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 6
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ult i8* %162, %164
  br i1 %165, label %168, label %166

; <label>:166:                                    ; preds = %159
  %167 = tail call i32 @__overflow(%struct._IO_FILE* %160, i32 9) #11
  br label %267

; <label>:168:                                    ; preds = %159
  %169 = getelementptr inbounds i8, i8* %162, i64 1
  store i8* %169, i8** %161, align 8
  store i8 9, i8* %162, align 1
  br label %267

; <label>:170:                                    ; preds = %90
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %172 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 5
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 6
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ult i8* %173, %175
  br i1 %176, label %179, label %177

; <label>:177:                                    ; preds = %170
  %178 = tail call i32 @__overflow(%struct._IO_FILE* %171, i32 11) #11
  br label %267

; <label>:179:                                    ; preds = %170
  %180 = getelementptr inbounds i8, i8* %173, i64 1
  store i8* %180, i8** %172, align 8
  store i8 11, i8* %173, align 1
  br label %267

; <label>:181:                                    ; preds = %90
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %183 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 5
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 6
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ult i8* %184, %186
  br i1 %187, label %191, label %188

; <label>:188:                                    ; preds = %181
  %189 = and i32 %87, 255
  %190 = tail call i32 @__overflow(%struct._IO_FILE* %182, i32 %189) #11
  br label %267

; <label>:191:                                    ; preds = %181
  %192 = getelementptr inbounds i8, i8* %184, i64 1
  store i8* %192, i8** %183, align 8
  store i8 %4, i8* %184, align 1
  br label %267

; <label>:193:                                    ; preds = %86
  switch i8 %4, label %239 [
    i8 117, label %194
    i8 85, label %194
  ]

; <label>:194:                                    ; preds = %193, %193
  %195 = sext i8 %4 to i32
  %196 = icmp eq i8 %4, 117
  %197 = select i1 %196, i32 4, i32 8
  %198 = getelementptr inbounds i8, i8* %0, i64 2
  %199 = tail call i16** @__ctype_b_loc() #1
  %200 = load i16*, i16** %199, align 8
  br label %201

; <label>:201:                                    ; preds = %194, %222
  %202 = phi i32 [ 0, %194 ], [ %225, %222 ]
  %203 = phi i8* [ %198, %194 ], [ %227, %222 ]
  %204 = phi i32 [ %197, %194 ], [ %226, %222 ]
  %205 = load i8, i8* %203, align 1
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds i16, i16* %200, i64 %206
  %208 = load i16, i16* %207, align 2
  %209 = and i16 %208, 4096
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %211, label %213

; <label>:211:                                    ; preds = %201
  %212 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %212) #11
  unreachable

; <label>:213:                                    ; preds = %201
  %214 = shl i32 %202, 4
  %215 = sext i8 %205 to i32
  %216 = add i8 %205, -97
  %217 = icmp ult i8 %216, 6
  br i1 %217, label %222, label %218

; <label>:218:                                    ; preds = %213
  %219 = add i8 %205, -65
  %220 = icmp ult i8 %219, 6
  %221 = select i1 %220, i32 -55, i32 -48
  br label %222

; <label>:222:                                    ; preds = %213, %218
  %223 = phi i32 [ %221, %218 ], [ -87, %213 ]
  %224 = add i32 %215, %214
  %225 = add i32 %224, %223
  %226 = add nsw i32 %204, -1
  %227 = getelementptr inbounds i8, i8* %203, i64 1
  %228 = icmp sgt i32 %204, 1
  br i1 %228, label %201, label %229

; <label>:229:                                    ; preds = %222
  %230 = icmp ult i32 %225, 160
  br i1 %230, label %231, label %232

; <label>:231:                                    ; preds = %229
  switch i32 %225, label %235 [
    i32 96, label %232
    i32 64, label %232
    i32 36, label %232
  ]

; <label>:232:                                    ; preds = %231, %231, %231, %229
  %233 = and i32 %225, -2048
  %234 = icmp eq i32 %233, 55296
  br i1 %234, label %235, label %237

; <label>:235:                                    ; preds = %231, %232
  %236 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %236, i32 %195, i32 %197, i32 %225) #11
  unreachable

; <label>:237:                                    ; preds = %232
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  tail call void @print_unicode_char(%struct._IO_FILE* %238, i32 %225, i32 0) #11
  br label %267

; <label>:239:                                    ; preds = %84, %193
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %241 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %240, i64 0, i32 5
  %242 = load i8*, i8** %241, align 8
  %243 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %240, i64 0, i32 6
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ult i8* %242, %244
  br i1 %245, label %248, label %246

; <label>:246:                                    ; preds = %239
  %247 = tail call i32 @__overflow(%struct._IO_FILE* %240, i32 92) #11
  br label %250

; <label>:248:                                    ; preds = %239
  %249 = getelementptr inbounds i8, i8* %242, i64 1
  store i8* %249, i8** %241, align 8
  store i8 92, i8* %242, align 1
  br label %250

; <label>:250:                                    ; preds = %246, %248
  %251 = load i8, i8* %3, align 1
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %267, label %253

; <label>:253:                                    ; preds = %250
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %255 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %254, i64 0, i32 5
  %256 = load i8*, i8** %255, align 8
  %257 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %254, i64 0, i32 6
  %258 = load i8*, i8** %257, align 8
  %259 = icmp ult i8* %256, %258
  br i1 %259, label %263, label %260

; <label>:260:                                    ; preds = %253
  %261 = zext i8 %251 to i32
  %262 = tail call i32 @__overflow(%struct._IO_FILE* %254, i32 %261) #11
  br label %265

; <label>:263:                                    ; preds = %253
  %264 = getelementptr inbounds i8, i8* %256, i64 1
  store i8* %264, i8** %255, align 8
  store i8 %251, i8* %256, align 1
  br label %265

; <label>:265:                                    ; preds = %260, %263
  %266 = getelementptr inbounds i8, i8* %0, i64 2
  br label %267

; <label>:267:                                    ; preds = %191, %188, %179, %177, %168, %166, %157, %155, %146, %144, %135, %133, %124, %122, %112, %110, %101, %99, %81, %78, %48, %45, %250, %237, %265
  %268 = phi i8* [ %227, %237 ], [ %266, %265 ], [ %3, %250 ], [ %38, %45 ], [ %38, %48 ], [ %71, %78 ], [ %71, %81 ], [ %91, %99 ], [ %91, %101 ], [ %91, %110 ], [ %91, %112 ], [ %91, %122 ], [ %91, %124 ], [ %91, %133 ], [ %91, %135 ], [ %91, %144 ], [ %91, %146 ], [ %91, %155 ], [ %91, %157 ], [ %91, %166 ], [ %91, %168 ], [ %91, %177 ], [ %91, %179 ], [ %91, %188 ], [ %91, %191 ]
  %269 = ptrtoint i8* %268 to i64
  %270 = ptrtoint i8* %0 to i64
  %271 = sub i64 4294967295, %270
  %272 = add i64 %271, %269
  %273 = trunc i64 %272 to i32
  ret i32 %273

; <label>:274:                                    ; preds = %24
  %275 = shl nsw i32 %26, 4
  %276 = sext i8 %28 to i32
  %277 = add i8 %28, -97
  %278 = icmp ult i8 %277, 6
  br i1 %278, label %283, label %279

; <label>:279:                                    ; preds = %274
  %280 = add i8 %28, -65
  %281 = icmp ult i8 %280, 6
  %282 = select i1 %281, i32 -55, i32 -48
  br label %283

; <label>:283:                                    ; preds = %279, %274
  %284 = phi i32 [ %282, %279 ], [ -87, %274 ]
  %285 = add nsw i32 %276, %275
  %286 = add nsw i32 %285, %284
  %287 = getelementptr inbounds i8, i8* %0, i64 4
  br label %36

; <label>:288:                                    ; preds = %62
  %289 = shl nsw i32 %64, 3
  %290 = sext i8 %66 to i32
  %291 = add nsw i32 %289, -48
  %292 = add nsw i32 %291, %290
  %293 = getelementptr inbounds i8, i8* %65, i64 1
  %294 = load i8, i8* %293, align 1
  %295 = and i8 %294, -8
  %296 = icmp eq i8 %295, 48
  br i1 %296, label %297, label %69

; <label>:297:                                    ; preds = %288
  %298 = shl nsw i32 %292, 3
  %299 = sext i8 %294 to i32
  %300 = add nsw i32 %298, -48
  %301 = add i32 %300, %299
  %302 = getelementptr inbounds i8, i8* %293, i64 1
  br label %69
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vstrtoimax(i8*) unnamed_addr #6 {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #11
  %4 = load i8, i8* %0, align 1
  switch i8 %4, label %19 [
    i8 34, label %5
    i8 39, label %5
  ]

; <label>:5:                                      ; preds = %1, %1
  %6 = getelementptr inbounds i8, i8* %0, i64 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

; <label>:9:                                      ; preds = %5
  %10 = zext i8 %7 to i64
  %11 = getelementptr inbounds i8, i8* %0, i64 2
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  %14 = load i8, i8* @posixly_correct, align 1
  %15 = icmp eq i8 %14, 0
  %16 = and i1 %13, %15
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18, i8* %11) #11
  br label %23

; <label>:19:                                     ; preds = %1, %5
  %20 = tail call i32* @__errno_location() #1
  store i32 0, i32* %20, align 4
  %21 = call i64 @__strtol_internal(i8* nonnull %0, i8** nonnull %2, i32 0, i32 0) #11
  %22 = load i8*, i8** %2, align 8
  call fastcc void @verify_numeric(i8* nonnull %0, i8* %22)
  br label %23

; <label>:23:                                     ; preds = %17, %9, %19
  %24 = phi i64 [ %21, %19 ], [ %10, %9 ], [ %10, %17 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11
  ret i64 %24
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @verify_numeric(i8*, i8* readonly) unnamed_addr #6 {
  %3 = tail call i32* @__errno_location() #1
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @quote(i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* %7) #11
  br label %19

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %1, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

; <label>:11:                                     ; preds = %8
  %12 = icmp eq i8* %0, %1
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %11
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0), i32 5) #11
  %15 = tail call i8* @quote(i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %14, i8* %15) #11
  br label %19

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0), i32 5) #11
  %18 = tail call i8* @quote(i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %18) #11
  br label %19

; <label>:19:                                     ; preds = %13, %16, %6
  store i1 true, i1* @exit_status, align 4
  br label %20

; <label>:20:                                     ; preds = %8, %19
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #9

; Function Attrs: nounwind sspstrong uwtable
define x86_fp80 @c_strtold(i8*, i8**) local_unnamed_addr #6 {
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8
  %4 = icmp eq %struct.__locale_struct* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %struct.__locale_struct* null) #11
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8
  br label %7

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8
  %9 = icmp eq %struct.__locale_struct* %8, null
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8
  br label %15

; <label>:13:                                     ; preds = %7
  %14 = tail call x86_fp80 @strtold_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #11
  br label %15

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi x86_fp80 [ %14, %13 ], [ 0xK00000000000000000000, %10 ], [ 0xK00000000000000000000, %12 ]
  ret x86_fp80 %16
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare x86_fp80 @strtold_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 {
  store i8* %0, i8** @file_name, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1
  %6 = icmp eq i8 %5, 0
  %7 = tail call i32* @__errno_location() #1
  br i1 %6, label %11, label %8

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %21, label %11

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 5) #11
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.26, i64 0, i64 0), i8* %17, i8* %12) #11
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.27, i64 0, i64 0), i8* %12) #11
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #14
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %26) #14
  unreachable

; <label>:27:                                     ; preds = %21
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
  tail call void @abort() #14
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #9
  %8 = icmp ne i8* %7, null
  %9 = getelementptr inbounds i8, i8* %7, i64 1
  %10 = select i1 %8, i8* %9, i8* %0
  %11 = ptrtoint i8* %10 to i64
  %12 = ptrtoint i8* %0 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 6
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3
  store i8* %23, i8** @program_invocation_short_name, align 8
  br label %24

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  store i8* %25, i8** @program_name, align 8
  store i8* %25, i8** @program_invocation_name, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 {
  %2 = tail call i32* @__errno_location() #1
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = bitcast %struct.quoting_options* %0 to i8*
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*)
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 {
  %2 = icmp ne %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp ne %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %6 = lshr i8 %1, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7
  %9 = and i8 %1, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = and i32 %2, 1
  %15 = xor i32 %13, %14
  %16 = shl i32 %15, %10
  %17 = xor i32 %16, %11
  store i32 %17, i32* %8, align 4
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %1, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 {
  %6 = icmp ne %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18)
  store i32 %9, i32* %8, align 4
  ret i64 %19
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11
  %14 = icmp eq i64 %13, 1
  %15 = lshr i32 %5, 1
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27

; <label>:27:                                     ; preds = %614, %9
  %28 = phi i32 [ %4, %9 ], [ %96, %614 ]
  %29 = phi i8* [ %7, %9 ], [ %97, %614 ]
  %30 = phi i8* [ %8, %9 ], [ %98, %614 ]
  %31 = phi i64 [ 0, %9 ], [ %126, %614 ]
  %32 = phi i8* [ null, %9 ], [ %100, %614 ]
  %33 = phi i64 [ 0, %9 ], [ %101, %614 ]
  %34 = phi i8 [ 0, %9 ], [ %102, %614 ]
  %35 = phi i64 [ %3, %9 ], [ %598, %614 ]
  %36 = phi i8 [ %17, %9 ], [ %103, %614 ]
  %37 = phi i8 [ 0, %9 ], [ %128, %614 ]
  %38 = phi i8 [ 0, %9 ], [ %129, %614 ]
  %39 = phi i8 [ 1, %9 ], [ %130, %614 ]
  %40 = phi i64 [ %1, %9 ], [ %126, %614 ]
  switch i32 %28, label %94 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %95
    i32 0, label %93
    i32 2, label %85
    i32 4, label %79
    i32 3, label %76
    i32 1, label %77
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ]

; <label>:41:                                     ; preds = %27
  br label %95

; <label>:42:                                     ; preds = %27
  %43 = and i8 %36, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %95

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0
  br i1 %46, label %95, label %47

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1
  br label %95

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %28)
  br label %51

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  %54 = and i8 %36, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %73

; <label>:56:                                     ; preds = %51
  %57 = load i8, i8* %52, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

; <label>:59:                                     ; preds = %56
  br label %60

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63
  store i8 %61, i8* %66, align 1
  br label %67

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1
  %69 = getelementptr inbounds i8, i8* %62, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %60

; <label>:72:                                     ; preds = %67
  br label %73

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  %75 = call i64 @strlen(i8* %53) #9
  br label %95

; <label>:76:                                     ; preds = %27
  br label %77

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  br label %79

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i8 1, i8 %80
  br label %85

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %95

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0
  br i1 %91, label %95, label %92

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1
  br label %95

; <label>:93:                                     ; preds = %27
  br label %95

; <label>:94:                                     ; preds = %27
  call void @abort() #14
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  %104 = and i8 %102, 1
  %105 = icmp ne i8 %104, 0
  %106 = icmp ne i32 %96, 2
  %107 = and i1 %106, %105
  %108 = icmp ne i64 %101, 0
  %109 = and i1 %108, %107
  %110 = icmp ugt i64 %101, 1
  %111 = and i8 %103, 1
  %112 = icmp eq i8 %111, 0
  %113 = xor i1 %105, true
  %114 = icmp eq i32 %96, 2
  %115 = icmp ne i8 %111, 0
  %116 = and i1 %114, %115
  %117 = and i1 %21, %115
  %118 = or i1 %106, %112
  %119 = and i8 %102, %103
  %120 = and i8 %119, 1
  %121 = icmp ne i8 %120, 0
  %122 = and i1 %121, %108
  br label %123

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  %132 = icmp eq i64 %127, -1
  br i1 %132, label %135, label %133

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127
  br i1 %134, label %597, label %139

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124
  %137 = load i8, i8* %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %597, label %139

; <label>:139:                                    ; preds = %133, %135
  br i1 %109, label %140, label %155

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101
  %142 = and i1 %110, %132
  br i1 %142, label %143, label %145

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #9
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #9
  %151 = icmp ne i32 %150, 0
  %152 = or i1 %151, %112
  %153 = xor i1 %151, true
  %154 = zext i1 %153 to i8
  br i1 %152, label %155, label %644

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  %158 = getelementptr inbounds i8, i8* %2, i64 %124
  %159 = load i8, i8* %158, align 1
  switch i8 %159, label %298 [
    i8 0, label %160
    i8 63, label %210
    i8 7, label %257
    i8 8, label %247
    i8 12, label %248
    i8 10, label %255
    i8 13, label %249
    i8 9, label %250
    i8 11, label %251
    i8 92, label %252
    i8 123, label %259
    i8 125, label %259
    i8 35, label %270
    i8 126, label %270
    i8 32, label %272
    i8 33, label %273
    i8 34, label %273
    i8 36, label %273
    i8 38, label %273
    i8 40, label %273
    i8 41, label %273
    i8 42, label %273
    i8 59, label %273
    i8 60, label %273
    i8 61, label %273
    i8 62, label %273
    i8 91, label %273
    i8 94, label %273
    i8 96, label %273
    i8 124, label %273
    i8 39, label %275
    i8 37, label %476
    i8 43, label %476
    i8 44, label %476
    i8 45, label %476
    i8 46, label %476
    i8 47, label %476
    i8 48, label %476
    i8 49, label %476
    i8 50, label %476
    i8 51, label %476
    i8 52, label %476
    i8 53, label %476
    i8 54, label %476
    i8 55, label %476
    i8 56, label %476
    i8 57, label %476
    i8 58, label %476
    i8 65, label %476
    i8 66, label %476
    i8 67, label %476
    i8 68, label %476
    i8 69, label %476
    i8 70, label %476
    i8 71, label %476
    i8 72, label %476
    i8 73, label %476
    i8 74, label %476
    i8 75, label %476
    i8 76, label %476
    i8 77, label %476
    i8 78, label %476
    i8 79, label %476
    i8 80, label %476
    i8 81, label %476
    i8 82, label %476
    i8 83, label %476
    i8 84, label %476
    i8 85, label %476
    i8 86, label %476
    i8 87, label %476
    i8 88, label %476
    i8 89, label %476
    i8 90, label %476
    i8 93, label %476
    i8 95, label %476
    i8 97, label %476
    i8 98, label %476
    i8 99, label %476
    i8 100, label %476
    i8 101, label %476
    i8 102, label %476
    i8 103, label %476
    i8 104, label %476
    i8 105, label %476
    i8 106, label %476
    i8 107, label %476
    i8 108, label %476
    i8 109, label %476
    i8 110, label %476
    i8 111, label %476
    i8 112, label %476
    i8 113, label %476
    i8 114, label %476
    i8 115, label %476
    i8 116, label %476
    i8 117, label %476
    i8 118, label %476
    i8 119, label %476
    i8 120, label %476
    i8 121, label %476
    i8 122, label %476
  ]

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644

; <label>:162:                                    ; preds = %161
  %163 = and i8 %128, 1
  %164 = icmp eq i8 %163, 0
  %165 = and i1 %114, %164
  br i1 %165, label %166, label %182

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131
  br i1 %167, label %168, label %170

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %169, align 1
  br label %170

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1
  %172 = icmp ult i64 %171, %131
  br i1 %172, label %173, label %175

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171
  store i8 36, i8* %174, align 1
  br label %175

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2
  %177 = icmp ult i64 %176, %131
  br i1 %177, label %178, label %180

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176
  store i8 39, i8* %179, align 1
  br label %180

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3
  br label %182

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  %185 = icmp ult i64 %183, %131
  br i1 %185, label %186, label %188

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183
  store i8 92, i8* %187, align 1
  br label %188

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1
  br i1 %106, label %190, label %476

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1
  %192 = icmp ult i64 %191, %156
  br i1 %192, label %193, label %476

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191
  %195 = load i8, i8* %194, align 1
  %196 = add i8 %195, -48
  %197 = icmp ult i8 %196, 10
  br i1 %197, label %198, label %476

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189
  store i8 48, i8* %201, align 1
  br label %202

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2
  %204 = icmp ult i64 %203, %131
  br i1 %204, label %205, label %207

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203
  store i8 48, i8* %206, align 1
  br label %207

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3
  br label %476

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ]

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2
  %215 = icmp ult i64 %214, %156
  br i1 %215, label %216, label %476

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1
  %218 = getelementptr inbounds i8, i8* %2, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = icmp eq i8 %219, 63
  br i1 %220, label %221, label %476

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  switch i32 %224, label %476 [
    i32 33, label %225
    i32 39, label %225
    i32 40, label %225
    i32 41, label %225
    i32 45, label %225
    i32 47, label %225
    i32 60, label %225
    i32 61, label %225
    i32 62, label %225
  ]

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644

; <label>:226:                                    ; preds = %225
  %227 = icmp ult i64 %125, %131
  br i1 %227, label %228, label %230

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 63, i8* %229, align 1
  br label %230

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1
  %232 = icmp ult i64 %231, %131
  br i1 %232, label %233, label %235

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231
  store i8 34, i8* %234, align 1
  br label %235

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2
  %237 = icmp ult i64 %236, %131
  br i1 %237, label %238, label %240

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236
  store i8 34, i8* %239, align 1
  br label %240

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3
  %242 = icmp ult i64 %241, %131
  br i1 %242, label %243, label %245

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241
  store i8 63, i8* %244, align 1
  br label %245

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4
  br label %476

; <label>:247:                                    ; preds = %155
  br label %257

; <label>:248:                                    ; preds = %155
  br label %257

; <label>:249:                                    ; preds = %155
  br label %255

; <label>:250:                                    ; preds = %155
  br label %255

; <label>:251:                                    ; preds = %155
  br label %257

; <label>:252:                                    ; preds = %155
  br i1 %114, label %253, label %254

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  br i1 %118, label %257, label %644

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  br i1 %105, label %503, label %476

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1
  br i1 %260, label %261, label %266

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1
  %263 = icmp ne i8 %262, 0
  %264 = icmp ne i64 %124, 0
  %265 = or i1 %264, %263
  br i1 %265, label %476, label %272

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1
  %268 = icmp ne i64 %124, 0
  %269 = or i1 %268, %267
  br i1 %269, label %476, label %272

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0
  br i1 %271, label %272, label %476

; <label>:272:                                    ; preds = %270, %266, %261, %155
  br label %273

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  br i1 %118, label %476, label %644

; <label>:275:                                    ; preds = %155
  br i1 %114, label %276, label %476

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0
  %279 = icmp ne i64 %126, 0
  %280 = or i1 %279, %278
  %281 = select i1 %280, i64 %126, i64 %131
  %282 = select i1 %280, i64 %131, i64 0
  %283 = icmp ult i64 %125, %282
  br i1 %283, label %284, label %286

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %285, align 1
  br label %286

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1
  %288 = icmp ult i64 %287, %282
  br i1 %288, label %289, label %291

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287
  store i8 92, i8* %290, align 1
  br label %291

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2
  %293 = icmp ult i64 %292, %282
  br i1 %293, label %294, label %296

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292
  store i8 39, i8* %295, align 1
  br label %296

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3
  br label %476

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308

; <label>:299:                                    ; preds = %298
  %300 = tail call i16** @__ctype_b_loc() #1
  %301 = load i16*, i16** %300, align 8
  %302 = zext i8 %159 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2
  %305 = lshr i16 %304, 14
  %306 = trunc i16 %305 to i8
  %307 = and i8 %306, 1
  br label %368

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11
  store i64 0, i64* %10, align 8
  %309 = icmp eq i64 %156, -1
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #9
  br label %312

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ]

; <label>:321:                                    ; preds = %314
  %322 = icmp ugt i64 %313, %317
  br i1 %322, label %323, label %351

; <label>:323:                                    ; preds = %321
  br label %324

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325
  %328 = load i8, i8* %327, align 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %348, label %330

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1
  %332 = add i64 %331, %124
  %333 = icmp ult i64 %332, %313
  br i1 %333, label %324, label %348

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1
  %336 = and i1 %116, %335
  br i1 %336, label %337, label %355

; <label>:337:                                    ; preds = %334
  br label %338

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317
  %341 = getelementptr inbounds i8, i8* %2, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ]

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1
  %346 = icmp ult i64 %345, %320
  br i1 %346, label %338, label %354

; <label>:347:                                    ; preds = %314
  br label %351

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351

; <label>:350:                                    ; preds = %314
  br label %351

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #11
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #9
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  %372 = and i8 %371, 1
  %373 = icmp ne i8 %372, 0
  %374 = icmp ult i64 %370, 2
  %375 = or i1 %373, %113
  %376 = and i1 %374, %375
  br i1 %376, label %476, label %377

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124
  br label %379

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  br i1 %375, label %432, label %386

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643

; <label>:387:                                    ; preds = %386
  %388 = and i8 %382, 1
  %389 = icmp eq i8 %388, 0
  %390 = and i1 %114, %389
  br i1 %390, label %391, label %407

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131
  br i1 %392, label %393, label %395

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 39, i8* %394, align 1
  br label %395

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1
  %397 = icmp ult i64 %396, %131
  br i1 %397, label %398, label %400

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396
  store i8 36, i8* %399, align 1
  br label %400

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2
  %402 = icmp ult i64 %401, %131
  br i1 %402, label %403, label %405

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401
  store i8 39, i8* %404, align 1
  br label %405

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3
  br label %407

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  %410 = icmp ult i64 %408, %131
  br i1 %410, label %411, label %413

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408
  store i8 92, i8* %412, align 1
  br label %413

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1
  %415 = icmp ult i64 %414, %131
  br i1 %415, label %416, label %420

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6
  %418 = or i8 %417, 48
  %419 = getelementptr inbounds i8, i8* %0, i64 %414
  store i8 %418, i8* %419, align 1
  br label %420

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2
  %422 = icmp ult i64 %421, %131
  br i1 %422, label %423, label %428

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3
  %425 = and i8 %424, 7
  %426 = or i8 %425, 48
  %427 = getelementptr inbounds i8, i8* %0, i64 %421
  store i8 %426, i8* %427, align 1
  br label %428

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3
  %430 = and i8 %383, 7
  %431 = or i8 %430, 48
  br label %441

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %441, label %435

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131
  br i1 %436, label %437, label %439

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 92, i8* %438, align 1
  br label %439

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1
  br label %441

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  %447 = add i64 %380, 1
  %448 = icmp ugt i64 %378, %447
  br i1 %448, label %449, label %541

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1
  %451 = icmp ne i8 %450, 0
  %452 = and i8 %446, 1
  %453 = icmp eq i8 %452, 0
  %454 = and i1 %451, %453
  br i1 %454, label %455, label %466

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131
  br i1 %456, label %457, label %459

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442
  store i8 39, i8* %458, align 1
  br label %459

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1
  %461 = icmp ult i64 %460, %131
  br i1 %461, label %462, label %464

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460
  store i8 39, i8* %463, align 1
  br label %464

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2
  br label %466

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  %469 = icmp ult i64 %467, %131
  br i1 %469, label %470, label %472

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467
  store i8 %444, i8* %471, align 1
  br label %472

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1
  %474 = getelementptr inbounds i8, i8* %2, i64 %447
  %475 = load i8, i8* %474, align 1
  br label %379

; <label>:476:                                    ; preds = %368, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %273, %188, %190, %193, %207, %209, %211, %212, %270, %266, %261, %275, %296, %257, %245, %221, %216, %213, %210
  %477 = phi i64 [ %124, %296 ], [ %124, %275 ], [ %124, %273 ], [ %124, %270 ], [ %124, %261 ], [ %124, %266 ], [ %124, %257 ], [ %124, %210 ], [ %124, %221 ], [ %214, %245 ], [ %124, %216 ], [ %124, %213 ], [ %124, %212 ], [ %124, %211 ], [ %124, %209 ], [ %124, %207 ], [ %124, %193 ], [ %124, %190 ], [ %124, %188 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %368 ]
  %478 = phi i64 [ %297, %296 ], [ %125, %275 ], [ %125, %273 ], [ %125, %270 ], [ %125, %261 ], [ %125, %266 ], [ %125, %257 ], [ %125, %210 ], [ %125, %221 ], [ %246, %245 ], [ %125, %216 ], [ %125, %213 ], [ %125, %212 ], [ %125, %211 ], [ %125, %209 ], [ %208, %207 ], [ %189, %193 ], [ %189, %190 ], [ %189, %188 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %368 ]
  %479 = phi i64 [ %281, %296 ], [ %126, %275 ], [ %126, %273 ], [ %126, %270 ], [ %126, %261 ], [ %126, %266 ], [ %126, %257 ], [ %126, %210 ], [ %126, %221 ], [ %126, %245 ], [ %126, %216 ], [ %126, %213 ], [ %126, %212 ], [ %126, %211 ], [ %126, %209 ], [ %126, %207 ], [ %126, %193 ], [ %126, %190 ], [ %126, %188 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %368 ]
  %480 = phi i64 [ %156, %296 ], [ %156, %275 ], [ %156, %273 ], [ %156, %270 ], [ -1, %261 ], [ %156, %266 ], [ %156, %257 ], [ %156, %210 ], [ %156, %221 ], [ %156, %245 ], [ %156, %216 ], [ %156, %213 ], [ %156, %212 ], [ %156, %211 ], [ %156, %209 ], [ %156, %207 ], [ %156, %193 ], [ %156, %190 ], [ %156, %188 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %369, %368 ]
  %481 = phi i8 [ 0, %296 ], [ %128, %275 ], [ %128, %273 ], [ %128, %270 ], [ %128, %261 ], [ %128, %266 ], [ %128, %257 ], [ %128, %210 ], [ %128, %221 ], [ %128, %245 ], [ %128, %216 ], [ %128, %213 ], [ %128, %212 ], [ %128, %211 ], [ %128, %209 ], [ %184, %207 ], [ %184, %193 ], [ %184, %190 ], [ %184, %188 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %368 ]
  %482 = phi i8 [ 1, %296 ], [ 1, %275 ], [ %129, %273 ], [ %129, %270 ], [ %129, %261 ], [ %129, %266 ], [ %129, %257 ], [ %129, %210 ], [ %129, %221 ], [ %129, %245 ], [ %129, %216 ], [ %129, %213 ], [ %129, %212 ], [ %129, %211 ], [ %129, %209 ], [ %129, %207 ], [ %129, %193 ], [ %129, %190 ], [ %129, %188 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %368 ]
  %483 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %159, %273 ], [ %159, %270 ], [ %159, %261 ], [ %159, %266 ], [ %159, %257 ], [ 63, %210 ], [ 63, %221 ], [ %223, %245 ], [ 63, %216 ], [ 63, %213 ], [ 63, %212 ], [ 63, %211 ], [ 0, %209 ], [ 48, %207 ], [ 48, %193 ], [ 48, %190 ], [ 48, %188 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %368 ]
  %484 = phi i8 [ 0, %296 ], [ 0, %275 ], [ 0, %273 ], [ 0, %270 ], [ 0, %261 ], [ 0, %266 ], [ 0, %257 ], [ 0, %210 ], [ 0, %221 ], [ 0, %245 ], [ 0, %216 ], [ 0, %213 ], [ 0, %212 ], [ 0, %211 ], [ 0, %209 ], [ 1, %207 ], [ 1, %193 ], [ 1, %190 ], [ 1, %188 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %368 ]
  %485 = phi i8 [ 1, %296 ], [ 1, %275 ], [ %274, %273 ], [ 0, %270 ], [ 0, %261 ], [ 0, %266 ], [ 0, %257 ], [ 0, %210 ], [ 0, %221 ], [ 0, %245 ], [ 0, %216 ], [ 0, %213 ], [ 0, %212 ], [ 0, %211 ], [ 0, %209 ], [ 0, %207 ], [ 0, %193 ], [ 0, %190 ], [ 0, %188 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ %372, %368 ]
  %486 = phi i64 [ %282, %296 ], [ %131, %275 ], [ %131, %273 ], [ %131, %270 ], [ %131, %261 ], [ %131, %266 ], [ %131, %257 ], [ %131, %210 ], [ %131, %221 ], [ %131, %245 ], [ %131, %216 ], [ %131, %213 ], [ %131, %212 ], [ %131, %211 ], [ %131, %209 ], [ %131, %207 ], [ %131, %193 ], [ %131, %190 ], [ %131, %188 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %368 ]
  br i1 %107, label %488, label %487

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds i32, i32* %6, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = and i8 %483, 31
  %495 = zext i8 %494 to i32
  %496 = shl i32 1, %495
  %497 = and i32 %493, %496
  %498 = icmp eq i32 %497, 0
  %499 = icmp eq i8 %157, 0
  %500 = and i1 %499, %498
  br i1 %500, label %542, label %503

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0
  br i1 %502, label %542, label %503

; <label>:503:                                    ; preds = %257, %489, %501
  %504 = phi i64 [ %477, %489 ], [ %477, %501 ], [ %124, %257 ]
  %505 = phi i64 [ %478, %489 ], [ %478, %501 ], [ %125, %257 ]
  %506 = phi i64 [ %479, %489 ], [ %479, %501 ], [ %126, %257 ]
  %507 = phi i64 [ %480, %489 ], [ %480, %501 ], [ %156, %257 ]
  %508 = phi i8 [ %481, %489 ], [ %481, %501 ], [ %128, %257 ]
  %509 = phi i8 [ %482, %489 ], [ %482, %501 ], [ %129, %257 ]
  %510 = phi i8 [ %483, %489 ], [ %483, %501 ], [ %258, %257 ]
  %511 = phi i8 [ %485, %489 ], [ %485, %501 ], [ 0, %257 ]
  %512 = phi i64 [ %486, %489 ], [ %486, %501 ], [ %131, %257 ]
  br i1 %112, label %513, label %644

; <label>:513:                                    ; preds = %503
  %514 = and i8 %508, 1
  %515 = icmp eq i8 %514, 0
  %516 = and i1 %114, %515
  br i1 %516, label %517, label %533

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512
  br i1 %518, label %519, label %521

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505
  store i8 39, i8* %520, align 1
  br label %521

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1
  %523 = icmp ult i64 %522, %512
  br i1 %523, label %524, label %526

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522
  store i8 36, i8* %525, align 1
  br label %526

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2
  %528 = icmp ult i64 %527, %512
  br i1 %528, label %529, label %531

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527
  store i8 39, i8* %530, align 1
  br label %531

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3
  br label %533

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  %536 = icmp ult i64 %534, %512
  br i1 %536, label %537, label %539

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534
  store i8 92, i8* %538, align 1
  br label %539

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1
  br label %569

; <label>:541:                                    ; preds = %441
  br label %542

; <label>:542:                                    ; preds = %541, %254, %489, %253, %501
  %543 = phi i64 [ %477, %501 ], [ %124, %253 ], [ %477, %489 ], [ %124, %254 ], [ %380, %541 ]
  %544 = phi i64 [ %478, %501 ], [ %125, %253 ], [ %478, %489 ], [ %125, %254 ], [ %442, %541 ]
  %545 = phi i64 [ %479, %501 ], [ %126, %253 ], [ %479, %489 ], [ %126, %254 ], [ %126, %541 ]
  %546 = phi i64 [ %480, %501 ], [ %156, %253 ], [ %480, %489 ], [ %156, %254 ], [ %369, %541 ]
  %547 = phi i8 [ %481, %501 ], [ %128, %253 ], [ %481, %489 ], [ %128, %254 ], [ %443, %541 ]
  %548 = phi i8 [ %482, %501 ], [ %129, %253 ], [ %482, %489 ], [ %129, %254 ], [ %129, %541 ]
  %549 = phi i8 [ %483, %501 ], [ 92, %253 ], [ %483, %489 ], [ 92, %254 ], [ %444, %541 ]
  %550 = phi i8 [ %484, %501 ], [ 0, %253 ], [ %484, %489 ], [ 0, %254 ], [ %446, %541 ]
  %551 = phi i8 [ %485, %501 ], [ 0, %253 ], [ %485, %489 ], [ 0, %254 ], [ %372, %541 ]
  %552 = phi i64 [ %486, %501 ], [ %131, %253 ], [ %486, %489 ], [ %131, %254 ], [ %131, %541 ]
  %553 = and i8 %547, 1
  %554 = icmp ne i8 %553, 0
  %555 = and i8 %550, 1
  %556 = icmp eq i8 %555, 0
  %557 = and i1 %554, %556
  br i1 %557, label %558, label %569

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552
  br i1 %559, label %560, label %562

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544
  store i8 39, i8* %561, align 1
  br label %562

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1
  %564 = icmp ult i64 %563, %552
  br i1 %564, label %565, label %567

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563
  store i8 39, i8* %566, align 1
  br label %567

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2
  br label %569

; <label>:569:                                    ; preds = %539, %542, %567
  %570 = phi i64 [ %552, %567 ], [ %552, %542 ], [ %512, %539 ]
  %571 = phi i8 [ %551, %567 ], [ %551, %542 ], [ %511, %539 ]
  %572 = phi i8 [ %549, %567 ], [ %549, %542 ], [ %510, %539 ]
  %573 = phi i8 [ %548, %567 ], [ %548, %542 ], [ %509, %539 ]
  %574 = phi i64 [ %546, %567 ], [ %546, %542 ], [ %507, %539 ]
  %575 = phi i64 [ %545, %567 ], [ %545, %542 ], [ %506, %539 ]
  %576 = phi i64 [ %543, %567 ], [ %543, %542 ], [ %504, %539 ]
  %577 = phi i64 [ %568, %567 ], [ %544, %542 ], [ %540, %539 ]
  %578 = phi i8 [ 0, %567 ], [ %547, %542 ], [ %535, %539 ]
  %579 = icmp ult i64 %577, %570
  br i1 %579, label %580, label %582

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577
  store i8 %572, i8* %581, align 1
  br label %582

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1
  %584 = and i8 %571, 1
  %585 = icmp eq i8 %584, 0
  %586 = select i1 %585, i8 0, i8 %130
  br label %587

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1
  br label %123

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0
  %600 = and i1 %114, %599
  %601 = xor i1 %600, true
  %602 = or i1 %112, %601
  br i1 %602, label %603, label %648

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112
  %605 = xor i1 %604, true
  %606 = and i8 %129, 1
  %607 = icmp eq i8 %606, 0
  %608 = or i1 %607, %605
  br i1 %608, label %618, label %609

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %614, label %612

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98)
  br label %659

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0
  %616 = icmp ne i64 %126, 0
  %617 = and i1 %616, %615
  br i1 %617, label %27, label %618

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null
  %620 = and i1 %619, %112
  br i1 %620, label %621, label %638

; <label>:621:                                    ; preds = %618
  %622 = load i8, i8* %100, align 1
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %638, label %624

; <label>:624:                                    ; preds = %621
  br label %625

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131
  br i1 %629, label %630, label %632

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628
  store i8 %626, i8* %631, align 1
  br label %632

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1
  %634 = getelementptr inbounds i8, i8* %627, i64 1
  %635 = load i8, i8* %634, align 1
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %637, label %625

; <label>:637:                                    ; preds = %632
  br label %638

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  %640 = icmp ult i64 %639, %131
  br i1 %640, label %641, label %659

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639
  store i8 0, i8* %642, align 1
  br label %659

; <label>:643:                                    ; preds = %386
  br label %649

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649

; <label>:648:                                    ; preds = %597
  br label %649

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  %653 = icmp ne i32 %650, 2
  %654 = icmp eq i8 %104, 0
  %655 = or i1 %653, %654
  %656 = select i1 %655, i32 %650, i32 4
  %657 = and i32 %5, -3
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98)
  br label %659

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ]

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33
  %15 = icmp eq i32 %14, 84
  br i1 %15, label %16, label %72

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33
  %21 = icmp eq i32 %20, 70
  br i1 %21, label %22, label %72

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %26, label %72

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1
  %29 = icmp eq i8 %28, 56
  br i1 %29, label %30, label %72

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %72

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1
  %36 = icmp eq i8 %35, 96
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0)
  br label %75

; <label>:38:                                     ; preds = %5
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33
  %43 = icmp eq i32 %42, 66
  br i1 %43, label %44, label %72

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, 49
  br i1 %47, label %48, label %72

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = icmp eq i8 %50, 56
  br i1 %51, label %52, label %72

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 48
  br i1 %55, label %56, label %72

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 51
  br i1 %59, label %60, label %72

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1
  %63 = icmp eq i8 %62, 48
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1
  %70 = icmp eq i8 %69, 96
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11
  store i32 %7, i32* %6, align 4
  ret i8* %20
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 {
  %5 = icmp ne %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i64* %2, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = or i32 %10, %13
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21)
  %23 = add i64 %22, 1
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11
  %25 = load i32, i32* %15, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27)
  store i32 %8, i32* %7, align 4
  br i1 %11, label %29, label %30

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %2 = load i32, i32* @nslots, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %0
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1
  %8 = load i8*, i8** %7, align 8
  tail call void @free(i8* %8) #11
  %9 = add nuw i64 %6, 1
  %10 = load i32, i32* @nslots, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %5, label %13

; <label>:13:                                     ; preds = %5
  br label %14

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #11
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 {
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4
  %12 = icmp sgt i32 %11, %0
  br i1 %12, label %34, label %13

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0
  %15 = icmp ugt i32 %0, 2147483646
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*
  %19 = select i1 %14, i8* null, i8* %18
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8
  br i1 %14, label %25, label %26

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false)
  br label %26

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = sub nsw i32 %20, %27
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 4
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false)
  store i32 %20, i32* @nslots, align 4
  br label %34

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  %36 = sext i32 %0 to i64
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 1
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50)
  %52 = icmp ugt i64 %38, %51
  br i1 %52, label %63, label %53

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1
  store i64 %54, i64* %37, align 8
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %55, label %57, label %56

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11
  store i8* %58, i8** %39, align 8
  %59 = load i32, i32* %44, align 8
  %60 = load i8*, i8** %47, align 8
  %61 = load i8*, i8** %49, align 8
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61)
  br label %63

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  store i32 %6, i32* %5, align 4
  ret i8* %64
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %1, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6)
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false)
  %7 = icmp eq i32 %0, 10
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %0, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %6 = lshr i8 %2, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = shl i32 %14, %10
  %16 = xor i32 %15, %11
  store i32 %16, i32* %8, align 4
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %5 = lshr i8 %1, 5
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6
  %8 = and i8 %1, 31
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %7, align 4
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = shl i32 %13, %9
  %15 = xor i32 %14, %10
  store i32 %15, i32* %7, align 4
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false)
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %15 = bitcast i32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false)
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 67108864
  store i32 %18, i32* %16, align 4
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14
  unreachable

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @unicode_to_mb(i32, i64 (i8*, i64, i8*)* nocapture, i64 (i32, i8*, i8*)* nocapture, i8*) local_unnamed_addr #6 {
  %5 = alloca [6 x i8], align 1
  %6 = alloca [25 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 6, i8* nonnull %11) #11
  %12 = load i1, i1* @unicode_to_mb.initialized, align 4
  br i1 %12, label %24, label %13

; <label>:13:                                     ; preds = %4
  %14 = tail call i8* @locale_charset() #11
  %15 = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #11
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* @unicode_to_mb.is_utf8, align 4
  br i1 %16, label %23, label %18

; <label>:18:                                     ; preds = %13
  %19 = tail call i8* @iconv_open(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #11
  store i8* %19, i8** @unicode_to_mb.utf8_to_local, align 8
  %20 = icmp eq i8* %19, inttoptr (i64 -1 to i8*)
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %18
  %22 = tail call i8* @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0)) #11
  store i8* %22, i8** @unicode_to_mb.utf8_to_local, align 8
  br label %23

; <label>:23:                                     ; preds = %18, %21, %13
  store i1 true, i1* @unicode_to_mb.initialized, align 4
  br label %24

; <label>:24:                                     ; preds = %23, %4
  %25 = load i32, i32* @unicode_to_mb.is_utf8, align 4
  %26 = icmp eq i32 %25, 0
  %27 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8
  %28 = icmp eq i8* %27, inttoptr (i64 -1 to i8*)
  %29 = and i1 %26, %28
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %24
  %31 = tail call i64 %2(i32 %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.77, i64 0, i64 0), i8* %3) #11
  br label %78

; <label>:32:                                     ; preds = %24
  %33 = icmp ult i32 %0, 128
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %32
  %35 = trunc i32 %0 to i8
  store i8 %35, i8* %11, align 1
  br label %44

; <label>:36:                                     ; preds = %32
  %37 = call i32 @u8_uctomb_aux(i8* nonnull %11, i32 %0, i32 6) #11
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %42, label %39

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* @unicode_to_mb.is_utf8, align 4
  %41 = sext i32 %37 to i64
  br label %44

; <label>:42:                                     ; preds = %36
  %43 = call i64 %2(i32 %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.78, i64 0, i64 0), i8* %3) #11
  br label %78

; <label>:44:                                     ; preds = %39, %34
  %45 = phi i32 [ %25, %34 ], [ %40, %39 ]
  %46 = phi i64 [ 1, %34 ], [ %41, %39 ]
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %48, label %76

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 25, i8* nonnull %49) #11
  %50 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %50) #11
  %51 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %51) #11
  %52 = bitcast i8** %9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %52) #11
  %53 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %53) #11
  store i8* %11, i8** %7, align 8
  store i64 %46, i64* %8, align 8
  store i8* %49, i8** %9, align 8
  store i64 25, i64* %10, align 8
  %54 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8
  %55 = call i64 @iconv(i8* %54, i8** nonnull %7, i64* nonnull %8, i8** nonnull %9, i64* nonnull %10) #11
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  %58 = icmp eq i64 %55, -1
  %59 = or i1 %58, %57
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %48
  %61 = call i64 %2(i32 %0, i8* null, i8* %3) #11
  br label %74

; <label>:62:                                     ; preds = %48
  %63 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8
  %64 = call i64 @iconv(i8* %63, i8** null, i64* null, i8** nonnull %9, i64* nonnull %10) #11
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %62
  %67 = call i64 %2(i32 %0, i8* null, i8* %3) #11
  br label %74

; <label>:68:                                     ; preds = %62
  %69 = bitcast i8** %9 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = ptrtoint [25 x i8]* %6 to i64
  %72 = sub i64 %70, %71
  %73 = call i64 %1(i8* nonnull %49, i64 %72, i8* %3) #11
  br label %74

; <label>:74:                                     ; preds = %68, %66, %60
  %75 = phi i64 [ %61, %60 ], [ %67, %66 ], [ %73, %68 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %53) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %52) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %51) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %50) #11
  call void @llvm.lifetime.end(i64 25, i8* nonnull %49) #11
  br label %78

; <label>:76:                                     ; preds = %44
  %77 = call i64 %1(i8* nonnull %11, i64 %46, i8* %3) #11
  br label %78

; <label>:78:                                     ; preds = %76, %74, %42, %30
  %79 = phi i64 [ %31, %30 ], [ %43, %42 ], [ %77, %76 ], [ %75, %74 ]
  call void @llvm.lifetime.end(i64 6, i8* nonnull %11) #11
  ret i64 %79
}

declare i8* @iconv_open(i8*, i8*) local_unnamed_addr #3

declare i64 @iconv(i8*, i8**, i64*, i8**, i64*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @fwrite_success_callback(i8* nocapture, i64, i8* nocapture) #6 {
  %4 = bitcast i8* %2 to %struct._IO_FILE*
  %5 = tail call i64 @fwrite(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %4)
  ret i64 0
}

; Function Attrs: nounwind sspstrong uwtable
define void @print_unicode_char(%struct._IO_FILE*, i32, i32) local_unnamed_addr #6 {
  %4 = icmp ne i32 %2, 0
  %5 = select i1 %4, i64 (i32, i8*, i8*)* @exit_failure_callback, i64 (i32, i8*, i8*)* @fallback_failure_callback
  %6 = bitcast %struct._IO_FILE* %0 to i8*
  %7 = tail call i64 @unicode_to_mb(i32 %1, i64 (i8*, i64, i8*)* nonnull @fwrite_success_callback, i64 (i32, i8*, i8*)* %5, i8* %6)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @exit_failure_callback(i32, i8*, i8* nocapture readnone) #6 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4.83, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %6, i32 %0) #11
  br label %10

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.84, i64 0, i64 0), i32 5) #11
  %9 = tail call i8* @dcgettext(i8* null, i8* nonnull %1, i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %8, i32 %0, i8* %9) #11
  br label %10

; <label>:10:                                     ; preds = %7, %5
  ret i64 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @fallback_failure_callback(i32, i8* nocapture readnone, i8*) #6 {
  %4 = bitcast i8* %2 to %struct._IO_FILE*
  %5 = icmp ult i32 %0, 65536
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.81, i64 0, i64 0), i32 %0) #11
  br label %10

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.82, i64 0, i64 0), i32 %0) #11
  br label %10

; <label>:10:                                     ; preds = %8, %6
  ret i64 -1
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @u8_uctomb_aux(i8* nocapture, i32, i32) local_unnamed_addr #6 {
  %4 = icmp ult i32 %1, 128
  br i1 %4, label %43, label %5

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i32 %1, 2048
  br i1 %6, label %14, label %7

; <label>:7:                                      ; preds = %5
  %8 = icmp ult i32 %1, 65536
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %7
  %10 = and i32 %1, -2048
  %11 = icmp eq i32 %10, 55296
  br i1 %11, label %43, label %14

; <label>:12:                                     ; preds = %7
  %13 = icmp ult i32 %1, 1114112
  br i1 %13, label %14, label %43

; <label>:14:                                     ; preds = %12, %9, %5
  %15 = phi i32 [ 2, %5 ], [ 3, %9 ], [ 4, %12 ]
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %43, label %17

; <label>:17:                                     ; preds = %14
  %18 = trunc i32 %15 to i3
  switch i3 %18, label %43 [
    i3 -4, label %19
    i3 3, label %26
    i3 2, label %34
  ]

; <label>:19:                                     ; preds = %17
  %20 = trunc i32 %1 to i8
  %21 = and i8 %20, 63
  %22 = or i8 %21, -128
  %23 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %1, 6
  %25 = or i32 %24, 65536
  br label %26

; <label>:26:                                     ; preds = %17, %19
  %27 = phi i32 [ %1, %17 ], [ %25, %19 ]
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 63
  %30 = or i8 %29, -128
  %31 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %27, 6
  %33 = or i32 %32, 2048
  br label %34

; <label>:34:                                     ; preds = %17, %26
  %35 = phi i32 [ %1, %17 ], [ %33, %26 ]
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 63
  %38 = or i8 %37, -128
  %39 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %35, 6
  %41 = trunc i32 %40 to i8
  %42 = or i8 %41, -64
  store i8 %42, i8* %0, align 1
  br label %43

; <label>:43:                                     ; preds = %17, %34, %14, %12, %9, %3
  %44 = phi i32 [ -2, %3 ], [ -1, %9 ], [ -1, %12 ], [ -2, %14 ], [ %15, %34 ], [ %15, %17 ]
  ret i32 %44
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.88, i64 0, i64 0), i8* %2, i8* %3) #11
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i32 5) #11
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.90, i64 0, i64 0), i32 5) #11
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11
  switch i64 %5, label %126 [
    i64 0, label %17
    i64 1, label %18
    i64 2, label %22
    i64 3, label %28
    i64 4, label %36
    i64 5, label %46
    i64 6, label %58
    i64 7, label %72
    i64 8, label %88
    i64 9, label %106
  ]

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.91, i64 0, i64 0), i32 5) #11
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.92, i64 0, i64 0), i32 5) #11
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.93, i64 0, i64 0), i32 5) #11
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.94, i64 0, i64 0), i32 5) #11
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.95, i64 0, i64 0), i32 5) #11
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.96, i64 0, i64 0), i32 5) #11
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %4, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %4, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %4, i64 3
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %4, i64 4
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %4, i64 5
  %70 = load i8*, i8** %69, align 8
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.97, i64 0, i64 0), i32 5) #11
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8*, i8** %4, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %4, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %4, i64 3
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %4, i64 4
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %4, i64 5
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %4, i64 6
  %86 = load i8*, i8** %85, align 8
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.98, i64 0, i64 0), i32 5) #11
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %4, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %4, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %4, i64 3
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %4, i64 4
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %4, i64 5
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %4, i64 6
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %4, i64 7
  %104 = load i8*, i8** %103, align 8
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.99, i64 0, i64 0), i32 5) #11
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8*, i8** %4, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %4, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %4, i64 3
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %4, i64 4
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %4, i64 5
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %4, i64 6
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %4, i64 7
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %4, i64 8
  %124 = load i8*, i8** %123, align 8
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.100, i64 0, i64 0), i32 5) #11
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8*, i8** %4, i64 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %4, i64 2
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %4, i64 3
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %4, i64 4
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %4, i64 5
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %4, i64 6
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %4, i64 7
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %4, i64 8
  %144 = load i8*, i8** %143, align 8
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11
  br label %146

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 {
  br label %6

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 {
  %6 = alloca [10 x i8*], align 16
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8
  %15 = sext i32 %11 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %11, 8
  store i32 %17, i32* %8, align 8
  br label %21

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %10, align 8
  br label %21

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %25, i8** %26, align 16
  %27 = icmp eq i8* %25, null
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %21
  %29 = icmp ult i32 %22, 41
  br i1 %29, label %35, label %32

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31)
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11
  ret void

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %10, align 8
  br label %40

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8
  %37 = sext i32 %22 to i64
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = add i32 %22, 8
  store i32 %39, i32* %8, align 8
  br label %40

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* %44, i8** %45, align 8
  %46 = icmp eq i8* %44, null
  br i1 %46, label %30, label %47

; <label>:47:                                     ; preds = %40
  %48 = icmp ult i32 %41, 41
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr i8, i8* %50, i64 8
  store i8* %51, i8** %10, align 8
  br label %57

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = sext i32 %41 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  %56 = add i32 %41, 8
  store i32 %56, i32* %8, align 8
  br label %57

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %61, i8** %62, align 16
  %63 = icmp eq i8* %61, null
  br i1 %63, label %30, label %64

; <label>:64:                                     ; preds = %57
  %65 = icmp ult i32 %58, 41
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr i8, i8* %67, i64 8
  store i8* %68, i8** %10, align 8
  br label %74

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = sext i32 %58 to i64
  %72 = getelementptr i8, i8* %70, i64 %71
  %73 = add i32 %58, 8
  store i32 %73, i32* %8, align 8
  br label %74

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* %78, i8** %79, align 8
  %80 = icmp eq i8* %78, null
  br i1 %80, label %30, label %81

; <label>:81:                                     ; preds = %74
  %82 = icmp ult i32 %75, 41
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr i8, i8* %84, i64 8
  store i8* %85, i8** %10, align 8
  br label %91

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8
  %88 = sext i32 %75 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  %90 = add i32 %75, 8
  store i32 %90, i32* %8, align 8
  br label %91

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* %95, i8** %96, align 16
  %97 = icmp eq i8* %95, null
  br i1 %97, label %30, label %98

; <label>:98:                                     ; preds = %91
  %99 = icmp ult i32 %92, 41
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %10, align 8
  br label %108

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8
  %105 = sext i32 %92 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  %107 = add i32 %92, 8
  store i32 %107, i32* %8, align 8
  br label %108

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %111, i8** %112, align 8
  %113 = icmp eq i8* %111, null
  br i1 %113, label %30, label %114

; <label>:114:                                    ; preds = %108
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr i8, i8* %115, i64 8
  store i8* %116, i8** %10, align 8
  %117 = bitcast i8* %115 to i8**
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %118, i8** %119, align 16
  %120 = icmp eq i8* %118, null
  br i1 %120, label %30, label %121

; <label>:121:                                    ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr i8, i8* %122, i64 8
  store i8* %123, i8** %10, align 8
  %124 = bitcast i8* %122 to i8**
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %125, i8** %126, align 8
  %127 = icmp eq i8* %125, null
  br i1 %127, label %30, label %128

; <label>:128:                                    ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr i8, i8* %129, i64 8
  store i8* %130, i8** %10, align 8
  %131 = bitcast i8* %129 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* %132, i8** %133, align 16
  %134 = icmp eq i8* %132, null
  br i1 %134, label %30, label %135

; <label>:135:                                    ; preds = %128
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr i8, i8* %136, i64 8
  store i8* %137, i8** %10, align 8
  %138 = bitcast i8* %136 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9
  store i8* %139, i8** %140, align 8
  %141 = icmp eq i8* %139, null
  %142 = select i1 %141, i64 9, i64 10
  br label %30
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.103, i64 0, i64 0), i32 5) #11
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.104, i64 0, i64 0)) #11
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.105, i64 0, i64 0), i32 5) #11
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.106, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.107, i64 0, i64 0)) #11
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.108, i64 0, i64 0), i32 5) #11
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #11
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %6
  ret i8* %8
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 {
  %4 = udiv i64 9223372036854775807, %2
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1
  %9 = icmp eq i64 %8, 0
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %1, 0
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 {
  %4 = load i64, i64* %1, align 8
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2
  %10 = icmp ugt i64 %2, 128
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11
  br label %17

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2
  %15 = icmp ugt i64 %14, %4
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  store i64 %18, i64* %1, align 8
  %19 = mul i64 %18, %2
  br label %27

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1
  %22 = add i64 %4, 1
  %23 = add i64 %22, %21
  store i64 %23, i64* %1, align 8
  %24 = mul i64 %23, %2
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11
  %30 = icmp eq i8* %29, null
  %31 = icmp ne i64 %28, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 {
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  store i64 %7, i64* %1, align 8
  br label %17

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1
  %13 = add i64 %3, 1
  %14 = add i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11
  %20 = icmp eq i8* %19, null
  %21 = icmp ne i64 %18, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14
  unreachable

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false)
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %5
  ret i8* %6
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @malloc(i64 %1) #11
  %4 = icmp eq i8* %3, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #9
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #11
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #11
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xprintf(i8* noalias, ...) local_unnamed_addr #6 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #11
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %0, %struct.__va_list_tag* nonnull %4) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i32 @ferror(%struct._IO_FILE* %9) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %8
  %13 = load volatile i32, i32* @exit_failure, align 4
  %14 = tail call i32* @__errno_location() #1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 %13, i32 %15, i8* %16) #11
  br label %17

; <label>:17:                                     ; preds = %1, %8, %12
  call void @llvm.va_end(i8* nonnull %3)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #11
  ret i32 %6
}

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @xvprintf(i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #6 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %3, i32 1, i8* %0, %struct.__va_list_tag* %1) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %15

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = tail call i32 @ferror(%struct._IO_FILE* %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %6
  %11 = load volatile i32, i32* @exit_failure, align 4
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %11, i32 %13, i8* %14) #11
  br label %15

; <label>:15:                                     ; preds = %6, %10, %2
  ret i32 %4
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xfprintf(%struct._IO_FILE* noalias, i8* noalias, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #11
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %5) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %2
  %9 = call i32 @ferror(%struct._IO_FILE* %0) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %8
  %12 = load volatile i32, i32* @exit_failure, align 4
  %13 = tail call i32* @__errno_location() #1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 %14, i8* %15) #11
  br label %16

; <label>:16:                                     ; preds = %2, %8, %11
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #11
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xvfprintf(%struct._IO_FILE* noalias, i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #6 {
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* %2) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %14

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @ferror(%struct._IO_FILE* %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %6
  %10 = load volatile i32, i32* @exit_failure, align 4
  %11 = tail call i32* @__errno_location() #1
  %12 = load i32, i32* %11, align 4
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.123, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %10, i32 %12, i8* %13) #11
  br label %14

; <label>:14:                                     ; preds = %6, %9, %3
  ret i32 %4
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = udiv i64 %7, %1
  %9 = icmp eq i64 %8, %0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1
  store i32 12, i32* %11, align 4
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11
  %8 = icmp ne i32 %7, 0
  br i1 %6, label %9, label %19

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true
  %11 = icmp ne i64 %2, 0
  %12 = or i1 %11, %10
  %13 = sext i1 %8 to i32
  br i1 %12, label %22, label %14

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1
  store i32 0, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 {
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11
  %3 = icmp eq i8* %2, null
  br i1 %3, label %15, label %4

; <label>:4:                                      ; preds = %1
  %5 = load i8, i8* %2, align 1
  %6 = icmp eq i8 %5, 67
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0)) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #11
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.136, i64 0, i64 0)) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.137, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #9
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 47
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64
  %27 = add i64 %17, 14
  %28 = add i64 %27, %26
  %29 = tail call noalias i8* @malloc(i64 %28) #11
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.138, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.138, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.139, i64 0, i64 0)) #11
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11
  br label %62

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %59, i8** %46, align 8
  %60 = load i8, i8* %53, align 1
  %61 = zext i8 %60 to i32
  br label %62

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ]
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ]

; <label>:64:                                     ; preds = %62
  br label %65

; <label>:65:                                     ; preds = %64, %75
  %66 = load i8*, i8** %46, align 8
  %67 = load i8*, i8** %47, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %71, label %69

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11
  br label %75

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %72, i8** %46, align 8
  %73 = load i8, i8* %66, align 1
  %74 = zext i8 %73 to i32
  br label %75

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ]
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ]

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.140, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #9
  %83 = call i64 @strlen(i8* nonnull %45) #9
  %84 = icmp eq i64 %51, 0
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91

; <label>:88:                                     ; preds = %81
  %89 = add i64 %86, 2
  %90 = call noalias i8* @malloc(i64 %89) #11
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #11
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #11
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #11
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %24 ]
  store volatile i8* %126, i8** @charset_aliases, align 8
  br label %127

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %157, label %131

; <label>:131:                                    ; preds = %127
  br label %132

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42
  br i1 %138, label %139, label %147

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %147

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #9
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #9
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #9
  %152 = add i64 %151, 1
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %132

; <label>:156:                                    ; preds = %147
  br label %157

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1
  %20 = load i32, i32* %19, align 4
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4
  br label %24

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0)
  br label %17

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11
  br label %15

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0)
  br label %17

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8
  br label %30

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2)
  br label %30

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
