;; extends

; Unreal Engine macros

; GENERATED_BODY()
(unreal_body_macro "GENERATED_BODY" @function.macro)
(unreal_body_macro ["(" ")"] @punctuation.special)

; Macro heads as attributes
"UCLASS" @attribute
"USTRUCT" @attribute
"UENUM" @attribute
"UPROPERTY" @attribute
"UFUNCTION" @attribute
"UMETA" @attribute

; Parentheses of macros
(unreal_argument_list ["(" ")"] @punctuation.special)

; Unreal API specifier (e.g. MYPROJECT_API)
(unreal_api_specifier) @type.qualifier

;; -----------------------------------------------------
;; Unreal Specifiers のハイライト設定
;; -----------------------------------------------------

; Highlight any key in a specifier
(unreal_specifier key: (_) @property)

; Highlight keywords
(unreal_specifier_keyword) @property

; 1. Values
(unreal_specifier_content (string_literal) @string)
(unreal_specifier_content (number_literal) @number)
(unreal_specifier_content (true) @boolean)
(unreal_specifier_content (false) @boolean)

; Nested parentheses punctuation
(unreal_specifier_content ["(" ")"] @punctuation.special)