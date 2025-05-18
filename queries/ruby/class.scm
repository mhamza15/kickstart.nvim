; Capture class values in method calls with hash_key_symbol class: parameter
(call
  method: (identifier)
  arguments: (argument_list
    (pair
      key: (hash_key_symbol) @_key
      (#eq? @_key "class")
      value: [
        ; Direct string case
        (string
          (string_content) @tailwind)
        
        ; cn() function case
        (call
          method: (identifier) @_cn_method
          (#eq? @_cn_method "cn")
          arguments: (argument_list
            (string (string_content) @tailwind)
            .
            (_)* 
          )
        )
      ]
    )
  )
)

; Capture classes in standalone cn() function calls
(call
  method: (identifier) @_cn_method
  (#eq? @_cn_method "cn")
  arguments: (argument_list
    (string (string_content) @tailwind)
    .
    (_)*
  )
)
