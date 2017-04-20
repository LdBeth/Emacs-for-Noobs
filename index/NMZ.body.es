<h2><a name="query" id="query">CONSULTA</a></h2>

<h3><a name="query-term" id="query-term">Consulta de un sólo término</a></h3>
<p>
La consulta especifica sólo un término para recibir todos los documentos que contienen el término.  Ej:
</p>

<p class="example">
namazu
</p>

<h3><a name="query-and" id="query-and">Consulta AND</a></h3> 

<p>
La consulta especifica dos o más términos para recibir todos los documentos que contienen ambos términos.  Tu puedes insertar el operador <code class="operator">and</code> entre los términos.  Ej:
</p>

<p class="example">
Linux and Netscape
</p>

<p>
Tu puedes omitir el operador <code class="operator">and</code>.  Los términos los cuales están separados por uno o más espacios se asume que son una consulta AND.
</p>

<h3><a name="query-or" id="query-or">Consulta OR</a></h3>
<p>
La consulta especifica dos o más términos para recibir todos los documentos que contienen alguno de los términos.  Tu puedes insertar el operador
<code class="operator">or</code> entre los términos.  Ej:
</p>

<p class="example">
Linux or FreeBSD
</p>

<h3><a name="query-not" id="query-not">Operador NOT</a></h3>
<p>
La consulta especifica dos o más terminos para recibir todos los documentos
que contienen el primer término pero no contienen los términos siguientes.  
Tu puedes insertar el operador <code class="operator">not</code>
entre los términos para hacer una consulta NOT.  Ej:
</p>

<p class="example">
Linux not UNIX
</p>


<h3><a name="query-grouping" id="query-grouping">Agrupando</a></h3>
<p>
Tu puedes agrupar consultas encerrándolas entre paréntesis.  Los paréntesis 
deben estar separados por uno o más espacios.  Ej:
</p>

<p class="example">
( Linux or FreeBSD ) and Netscape not Windows
</p>

<h3><a name="query-phrase" id="query-phrase">Buscandos frases</a></h3>
<p>
Tu puedes buscar una frase la cuál consiste de dos o más términos encerrados
entre comillas como
<code class="operator">"..."</code> o con llaves como
<code class="operator">{...}</code>.
La precisión de la búsqueda por frase no es el 100 %, y puede causar ocasionalmente algún resultado erróneo.  Ej:
</p>

<p class="example">
{GNU Emacs}
</p>

<!-- foo
<p>
You must choose the latter with Tkanamzu or namazu.el.
</p>
-->

<h3><a name="query-substring" id="query-substring">Substring matching</a></h3>
<p>
The are three types of substring matching searching.
</p>

<dl> 
<dt>Prefix matching</dt>
<dd><code class="example">inter*</code> (terms which begin with <code>inter</code>)</dd>
<dt>Inside matching</dt>
<dd><code class="example">*text*</code> (terms which contain <code>text</code>)</dd>
<dt>Suffix matching</dt>
<dd><code class="example">*net</code> (terms which terminated
with <code>net</code>)</dd>
</dl>


<h3><a name="query-regex" id="query-regex">Regular expressions</a></h3>

<p>
You can use regular expressions for pattern matching. The
regular expressions must be surrounded by slashes like <code
class="operator">/.../</code>. Namazu uses <a
href="http://www.ruby-lang.org/">Ruby</a>'s regular
regular expressions engine. It offers generally <a
href="http://www.perl.com/">Perl</a> compatible flavor.
e.g.,
</p>

<p class="example">
/pro(gram|blem)s?/
</p>


<h3><a name="query-field" id="query-field">Field-specified searching</a></h3>
<p>
You can limit your search to specific fields such as
<code>Subject:</code>, <code>From:</code>,
<code>Message-Id:</code>. It's especially convenient for
Mail/News documents. e.g.,
</p>

<ul>
<li><code class="example">+subject:Linux</code><br>
(Retrieving all documents which contain <code>Linux</code>
in a <code>Subject:</code> field)
</li>

<li><code class="example">+subject:"GNU Emacs"</code><br>
(Retrieving all documents which contain <code>GNU Emacs</code>
in a <code>Subject:</code> field)
</li>

<li><code class="example">+from:foo@example.jp</code><br>
(Retrieving all documents which contain <code>foo@example.jp</code>
in a <code>From:</code> field)
</li>


<li><code class="example">+message-id:&lt;199801240555.OAA18737@foo.example.jp&gt;</code><br>
(Retrieving a certain document which contains specified
<code>Message-Id:</code>)
</li>
</ul>

<h3><a name="query-notes" id="query-notes">Notes</a></h3>

<ul>
<li>In any queries, Namazu ignores case distinctions of
alphabet characters. In other words, Namazu does
case-insensitive pattern matching in any time.
</li>


<li>Japanese phrases are forced to be segmented into
morphemes automatically and are handled them as <a
href="#query-phrase">phrase searching</a>. This processing
causes invalid segmentation occasionally.
</li>


<li>Alphabet, numbers or a part of symbols (duplicated in
ASCII) characters which defined in JIS X 0208 (Japanese
Industrial Standards) are handled as ASCII characters.
</li>

<li>Namazu can handle a term which contains symbols like
<code>TCP/IP</code>.  Since this handling isn't complete,
you can describe <code>TCP and IP</code> instead of
<code>TCP/IP</code>, but it may cause noisy results.
</li>


<li>Substring matching and field-specified searching takes
more time than other methods.
</li>

<li>If you want to use <code class="operator">and</code>,
<code class="operator">or</code> or <code
class="operator">not</code> simply as terms, you can
surround them respectively with double quotes like <code
class="operator">"..."</code> or braces like <code
class="operator">{...}</code>. 

<!-- foo
You must choose the latter with Tkanamzu or namazu.el.
-->
</li>

</ul>

