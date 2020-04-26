	" Archivo de configuración en Vim | Carlos Aguilar Salazar
" Estimado Lector: Este archivo de configuración para el editor de texto conocido como Vim es liberado al dominio público para ser modificado según su conveniencia. Aunque me adjudiqué la autoría de este documento, debo confesar que esto es, en parte, una mentira. Si bien el acomodo, la inclusión -y la exclusión- de ciertos parámetros de configuración es artificio mío, el conocimiento necesario para lograr armar este documento fue tomado de otros escritores que, ahora como yo, decidieron, de manera desinteresada, el poner a la disposición de otros parte del bagaje acumulado en el tiempo en relación con este singular programa. 

" -------Atajos del teclado:

" Mapear F3 para poner y quitar los números de líneas.
	"nmap <F3> :set nu! <CR>

" Mapear leader + F3 para poner y quitar los números de líneas relativos.
	"nmap <leader><F3> :set rnu! <CR>

" Mapaer jj para ser utilizada como 'Esc'
	imap ff <Esc>

" Mapear F4 para entrar y salir de Goyo 
	nmap <F4> :Goyo <CR>

"Mapear F5 para utilizae vifm de modo que cuando este se abra, lo haga siempre desde el directorio actual.
	map <F5> :EditVifm .<CR>
	
" Remapear las teclas para moverse entre splits de acuerdo con las teclas para moverse en vim (h-j-k-l):
	nnoremap <C-h> <C-W>h
	nnoremap <C-j> <C-W>j
	nnoremap <C-k> <C-W>k
	nnoremap <C-l> <C-W>l  

" Remapeo de los comandos para copiar y pegar. Gracias a la instalación de gvim (mediante el comado 'apt install vim-gtk' en distribuciones derivadas de Debian), ahora Vim tiene acceso al clipboard del sistema, habilitando el copiado y pegado de texto entre Vim y las distintas aplicaciones del sistema operativo. Cabe mencionar que, desde que se instaló este último programa, se hizo presente un bug con el esquema de color 'gruvbox': el tema claro se instauró como el default y no permite se sobreescrito con otro tema. Sin embargo, este bug parece ser válido sólo para Vim, ya que al utilizar a otra de sus encarnaciones, NeoVim, la paleta oscura de gruvbox funciona sin problema.
	vnoremap <C-c> "+y
	map <C-v> "+P

"Para copiar tanto en el clipboard y en la selección primaria.
	vnoremap <C-c> "*y :let @+=@*<CR>

" Permitir el mover líneas seleccionadas hacia arriba y hacia abajo en el modo visual. Esencialmente, permite el desmontaje y remontaje de líneas de texto a lo largo del documento según el criterio del editor de turno (con 'editor' me refiero, claro está, a la persona que maneja el programa de edición y no al programa en sí mismo, ja). 
	xnoremap K :move '<-2<CR>gv-gv
	xnoremap J :move '>+1<CR>gv-gv


" -------Configuraciones básicas en la exposición de información:

" Habilitar el mostrar los números de línea y el número de línea relativo por default.
	set number relativenumber

" Configurar los diccionarios de vim para inglés y español.
	set spell spelllang=en_us,es  	

" Habilitar autocompletado en la barra de estatusi con soporte para mouse.
	set wildmenu
	set wildmode=longest,list,full
	set mouse=a

" Resaltar la línea en donde se encuentra posicionado el cursor.
	set cursorline

"Siempre mostrar la columna de signos.
	"set scl=yes

" Detectar la sintaxis de un documento.
	syntax on 

" Configuración para mostrar determinados parámetros en la barra de estado.
	"set statusline=
	"set statusline+=\ %M
	"set statusline+=\ %y
	"set statusline+=\ %r
	"set statusline+=\ %F 

" Configuraciones en el lado derecho de la pantalla en la barra de estado.
	"set statusline+=\%=
	"set statusline+=\ %c:%l/%L
	"set statusline+=\ %p%%
	"set statusline+=\ [%n]
	

" -------PLUG-INS: Experimento para la instalación de plug-ins con vim-plug: 

" Lista de plug-ins.
	call plug#begin(expand('~/.vim/pluged'))
	Plug 'arcticicestudio/nord-vim' "Instala y habilita el uso de la paleta 'nord' como tema de Vim.
	Plug 'morhetz/gruvbox' "Instala y habilita el uso de la paleta 'gruvbox' como tema de Vim. 
	Plug 'junegunn/goyo.vim' "Da un formato más legible y libre de distracciones para escribir en Vim.
	Plug 'lervag/vimtex' "Incrementa la compatibilidad entre Vim y LaTeX. Además incluye un set de herramientas útiles para escribir documentos en LaTeX.
	Plug 'vim-airline/vim-airline' "Habilita la barra de estado llamada airline.
	Plug 'vim-airline/vim-airline-themes' "Permite que la barra de estado 'airline' herede la paleta del tema que Vim esté utilizando.
	Plug 'airblade/vim-gitgutter' "Permite el rastreo de cambios en los archivos que estén vinculados a Github.
	Plug 'vifm/vifm.vim' "Habilita el uso de Vifm dentro de vim.
	call plug#end()

	
" -------Apariencia visual de Vim:

" Esquema de color, para escoger un tema remueva las comillas de citación del tema a escoger.
	"colorscheme nord
	colorscheme gruvbox
