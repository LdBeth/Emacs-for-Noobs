<h2><a name="query" id="query">Zapytania</a></h2>

<h3><a name="query-term" id="query-term">Zapytanie pojedy�cze</a></h3>
<p>
To zapytanie wyszczeg�lnia tylko jedno okre�lenie dla wyszukiwania wszystkich
dokument�w, kt�re zawieraj� to okre�lenie, np.:
</p>

<p class="example">
namazu
</p>

<h3><a name="query-and" id="query-and">Zapytanie typu AND(logiczne i)</a></h3>

<p>
To zapytanie wyszczeg�lnia 2 lub wi�cej okre�le� dla wyszukiwania wszystkich
dokument�w, kt�re zawieraj� wszystkie podane okre�lenia. Mo�esz wpisa� operator
<code class="operator">and</code> pomi�dzy dwoma lub wi�cej okre�leniami, np.:
</p>

<p class="example">
Linux and Netscape
</p>

<p>
Mo�esz pomin�� operator
<code class="operator">and</code> .
Okre�lenia, kt�re s� oddzielone jedn� lub wi�cej spacj� s� uwa�ane za zapytanie typu AND.
</p>

<h3><a name="query-or" id="query-or">Zapytanie typu OR(logiczne lub)</a></h3>
<p>
To zapytanie wyszczeg�lnia 2 lub wi�cej okre�le� dla wyszukiwania wszystkich
dokument�w, kt�re zawieraj� jakiekolwiek z podanych okre�le�. Mo�esz wpisa� operator
<code class="operator">or</code> pomi�dzy dwoma lub wi�cej okre�leniami, np.:
</p>

<p class="example">
Linux or FreeBSD
</p>

<h3><a name="query-not" id="query-not">Zapytanie typu NOT(przeczenie)</a></h3>
<p>
To zapytanie wyszczeg�lnia 2 lub wi�cej okre�le� dla wyszukiwania wszystkich
dokument�w, kt�re zawieraj� pierwsze okre�lenie, ale nie zawieraj�
nast�pnych okre�le�. Mo�esz wpisa� operator <code class="operator">not</code>
 pomi�dzy dwoma lub wi�cej okre�leniami, np.:
</p>

<p class="example">
Linux not UNIX
</p>


<h3><a name="query-grouping" id="query-grouping">Grupowanie</a></h3>
<p>
Mo�esz grupowa� zapytania przez zawarcie ich
w nawiasach okrag�ych. Nawiasy powinny by� oddzielone przez jedn� lub
wi�cej spacji, np.:
</p>

<p class="example">
( Linux or FreeBSD ) and Netscape not Windows
</p>

<h3><a name="query-phrase" id="query-phrase">Wyszukiwanie fraz</a></h3>
<p>
Mo�esz szuka� wyra�enia, kt�re sk�ada si� z dw�ch lub wi�cej okre�le�
otaczaj�c je podw�jnym cudzys�owem jak
<code class="operator">"..."</code> lub klamrami jak <code class="operator">{...}</code>.
Precyzja Namazu  w wyszukiwaniu fraz nie jest 100%,
lecz b��dne wyniki trafiaj� si� bardzo rzadko, np.:
</p>

<p class="example">
{GNU Emacs}
</p>

<!-- foo
<p>
You must choose the latter with Tkanamzu or namazu.el.
Musisz wybra� ten ostatni z  Tkanamzu lub namazu.el. ???
</p>
-->

<h3><a name="query-substring" id="query-substring">Wyszukiwanie okrojonych s��w</a></h3>
<p>
S� trzy typy wyszukiwania okrojonych s��w.
</p>

<dl>
<dt>Przedrostkowe dopasowanie</dt>
<dd><code class="example">inter*</code> (okre�lenia rozpoczynaj�ce si� na <code>inter</code>)</dd>
<dt>Wewn�trzne dopasowanie</dt>
<dd><code class="example">*text*</code> (okre�lenia zawieraj�ce si� wewn�trz <code>text</code>)</dd>
<dt>Przyrostkowe dopasowanie</dt>
<dd><code class="example">*net</code> (okre�lenia ko�cz�ce si� na <code>net</code>)</dd>
</dl>


<h3><a name="query-regex" id="query-regex">Wyra�enia regularne (man grep)</a></h3>

<p>
Mo�esz u�ywa� wyra�e� regularnych jako wz�r do dopasowywania.
Wyra�enia regularne musz� by� otoczone przez uko�niki tak, jak
<code
class="operator">/.../</code>. Namazu wykorzystuje silnik wyra�e� regularnych
<ahref="http://www.ruby-lang.org/">Ruby</a>. Og�lnie jest on kompatybilny z <a
href="http://www.perl.com/">Perl</a> ,
np.:
</p>

<p class="example">
/pro(gram|blem)s?/
</p>


<h3><a name="query-field" id="query-field">Wyszukiwanie po wyspecyfikowanych polach</a></h3>
<p>
Mo�esz ograniczy� przeszukiwanie do okre�lonych p�l jak
<code>Subject:</code>, <code>From:</code>,
<code>Message-Id:</code>. Jest to zw�aszcza dogodne dla dokument�w typu
Mail/News, np.:
</p>

<ul>
<li><code class="example">+subject:Linux</code><br>
(Zwraca wszystkie dokument zawieraj�ce pola <code>Linux</code>
w <code>Subject:</code> )
</li>

<li><code class="example">+subject:"GNU Emacs"</code><br>
(Zwraca wszystkie dokumenty zawieraj�ce pola <code>GNU Emacs</code>
w <code>Subject:</code> )
</li>

<li><code class="example">+from:foo@example.jp</code><br>
(Zwraca wszystkie dokument zawieraj�ce pola <code>foo@example.jp</code>
w <code>From:</code> )
</li>


<li><code class="example">+message-id:&lt;199801240555.OAA18737@foo.example.jp&gt;</code><br>
(Zwraca pewien dokument zawieraj�cy wyszczeg�lnione
<code>Message-Id:</code>)
</li>
</ul>

<h3><a name="query-notes" id="query-notes">Uwagi</a></h3>

<ul>
<li>We wszystkich zapytaniach, Namazu ignoruje wielko�� znak�w alfabetu.
</li>

<li>Japanese phrases are forced to be segmented into
morphemes automatically and are handled them as <a
href="#query-phrase">phrase searching</a>. This processing
causes invalid segmentation occasionally.
<br>Po cholere to t�umaczyli na angielski? Ja. w ka�dym b�d� razie nie b�d�, bo nie zamierzam pos�ugiwa�
si� j�z. japo�skim.
</li>

<li>Alphabet, numbers or a part of symbols (duplicated in
ASCII) characters which defined in JIS X 0208 (Japanese
Industrial Standards) are handled as ASCII characters.
<br>Ju� mam sko�ne oczy wed�ug normy przemys�owej JIS X 0208.
</li>

<li>Namazu radzi sobie z okre�leniami zawieraj�cymi znaki takie jak
<code>TCP/IP</code>, ale to radzenie sobie nie jest kompletne
mo�esz opisa�
<code>TCP and IP</code> zamiast
<code>TCP/IP</code>, ale mo�e to by� powodem zbyt wielu dopasowa� (szumu informacyjnego)
</li>

<li>Dopasowania okrojonych s��w i szukania po wybranych polach zabieraj�
wi�cej czasu, ni� inne metody.
</li>

<li>Je�eli chcesz u�ywa� <code class="operator">and</code>,
<code class="operator">or</code> lub <code
class="operator">not</code> po prostu jako okre�le�, mo�esz
otoczy� je odpowiednio podw�jnym cudzys�owem tak, jak
<code
class="operator">"..."</code> lub klamrami tak, jak <code
class="operator">{...}</code>.

<!-- foo
You must choose the latter with Tkanamzu or namazu.el.
???????????????????????????????????? ho ku jank siu?
ja nie znaju sztoo eto.
-->
</li>

</ul>

