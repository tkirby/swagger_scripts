" fix up all the errors reported by editor.swagger.io

" --- Fix syntactic  errors
" * Fix typos (intger -> integer, String -> string)…

" --- Fix semantic errors
" * Fix incorrect types in swagger spec (require: ‘true’ -> require: true)
" * Fix invalid JSON types: date -> string, stringtime-> string, double -> number…

" --- Fixed Schema Errors
" * Remove invalid swagger directives. NOTE: This mostly consists of remove example tags where they are invalid. These are probably no big deal but might as well make it validate 100%


g/type: date/s//type: string/g
g/type: double/s//type: number/g
g/intger/s//integer/g
g/stringTime/s//string/g
g/type: String/s//type: string/g
g/required: 'true'/s//required: true/g
g/type: string\_$\_s*example: 34973/normal j dd
g/required: true\_$\_s*type: integer\_$\_s*example: 475112/normal j j dd
g/required: true\_$\_s*type: string\_$\_s*example: 94a269b6-76cc-48a0-884f-5b97afb61683/normal j j dd
g/required: true\_$\_s*type: integer\_$\_s*example: 3/normal j j dd
