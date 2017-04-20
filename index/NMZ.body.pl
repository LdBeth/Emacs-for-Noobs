<h2><a name="query" id="query">Zapytania</a></h2>

<h3><a name="query-term" id="query-term">Zapytanie pojedyñcze</a></h3>
<p>
To zapytanie wyszczególnia tylko jedno okre¶lenie dla wyszukiwania wszystkich
dokumentów, które zawieraj± to okre¶lenie, np.:
</p>

<p class="example">
namazu
</p>

<h3><a name="query-and" id="query-and">Zapytanie typu AND(logiczne i)</a></h3>

<p>
To zapytanie wyszczególnia 2 lub wiêcej okre¶leñ dla wyszukiwania wszystkich
dokumentów, które zawieraj± wszystkie podane okre¶lenia. Mo¿esz wpisaæ operator
<code class="operator">and</code> pomiêdzy dwoma lub wiêcej okre¶leniami, np.:
</p>

<p class="example">
Linux and Netscape
</p>

<p>
Mo¿esz pomin±æ operator
<code class="operator">and</code> .
Okre¶lenia, które s± oddzielone jedn± lub wiêcej spacj± s± uwa¿ane za zapytanie typu AND.
</p>

<h3><a name="query-or" id="query-or">Zapytanie typu OR(logiczne lub)</a></h3>
<p>
To zapytanie wyszczególnia 2 lub wiêcej okre¶leñ dla wyszukiwania wszystkich
dokumentów, które zawieraj± jakiekolwiek z podanych okre¶leñ. Mo¿esz wpisaæ operator
<code class="operator">or</code> pomiêdzy dwoma lub wiêcej okre¶leniami, np.:
</p>

<p class="example">
Linux or FreeBSD
</p>

<h3><a name="query-not" id="query-not">Zapytanie typu NOT(przeczenie)</a></h3>
<p>
To zapytanie wyszczególnia 2 lub wiêcej okre¶leñ dla wyszukiwania wszystkich
dokumentów, które zawieraj± pierwsze okre¶lenie, ale nie zawieraj±
nastêpnych okre¶leñ. Mo¿esz wpisaæ operator <code class="operator">not</code>
 pomiêdzy dwoma lub wiêcej okre¶leniami, np.:
</p>

<p class="example">
Linux not UNIX
</p>


<h3><a name="query-grouping" id="query-grouping">Grupowanie</a></h3>
<p>
Mo¿esz grupowaæ zapytania przez zawarcie ich
w nawiasach okrag³ych. Nawiasy powinny byæ oddzielone przez jedn± lub
wiêcej spacji, np.:
</p>

<p class="example">
( Linux or FreeBSD ) and Netscape not Windows
</p>

<h3><a name="query-phrase" id="query-phrase">Wyszukiwanie fraz</a></h3>
<p>
Mo¿esz szukaæ wyra¿enia, które sk³ada siê z dwóch lub wiêcej okre¶leñ
otaczaj±c je podwójnym cudzys³owem jak
<code class="operator">"..."</code> lub klamrami jak <code class="operator">{...}</code>.
Precyzja Namazu  w wyszukiwaniu fraz nie jest 100%,
lecz b³êdne wyniki trafiaj± siê bardzo rzadko, np.:
</p>

<p class="example">
{GNU Emacs}
</p>

<!-- foo
<p>
You must choose the latter with Tkanamzu or namazu.el.
Musisz wybraæ ten ostatni z  Tkanamzu lub namazu.el. ???
</p>
-->

<h3><a name="query-substring" id="query-substring">Wyszukiwanie okrojonych s³ów</a></h3>
<p>
S± trzy typy wyszukiwania okrojonych s³ów.
</p>

<dl>
<dt>Przedrostkowe dopasowanie</dt>
<dd><code class="example">inter*</code> (okre¶lenia rozpoczynaj±ce siê na <code>inter</code>)</dd>
<dt>Wewnêtrzne dopasowanie</dt>
<dd><code class="example">*text*</code> (okre¶lenia zawieraj±ce siê wewn±trz <code>text</code>)</dd>
<dt>Przyrostkowe dopasowanie</dt>
<dd><code class="example">*net</code> (okre¶lenia koñcz±ce siê na <code>net</code>)</dd>
</dl>


<h3><a name="query-regex" id="query-regex">Wyra¿enia regularne (man grep)</a></h3>

<p>
Mo¿esz u¿ywaæ wyra¿eñ regularnych jako wzór do dopasowywania.
Wyra¿enia regularne musz± byæ otoczone przez uko¶niki tak, jak
<code
class="operator">/.../</code>. Namazu wykorzystuje silnik wyra¿eñ regularnych
<ahref="http://www.ruby-lang.org/">Ruby</a>. Ogólnie jest on kompatybilny z <a
href="http://www.perl.com/">Perl</a> ,
np.:
</p>

<p class="example">
/pro(gram|blem)s?/
</p>


<h3><a name="query-field" id="query-field">Wyszukiwanie po wyspecyfikowanych polach</a></h3>
<p>
Mo¿esz ograniczyæ przeszukiwanie do okre¶lonych pól jak
<code>Subject:</code>, <code>From:</code>,
<code>Message-Id:</code>. Jest to zw³aszcza dogodne dla dokumentów typu
Mail/News, np.:
</p>

<ul>
<li><code class="example">+subject:Linux</code><br>
(Zwraca wszystkie dokument zawieraj±ce pola <code>Linux</code>
w <code>Subject:</code> )
</li>

<li><code class="example">+subject:"GNU Emacs"</code><br>
(Zwraca wszystkie dokumenty zawieraj±ce pola <code>GNU Emacs</code>
w <code>Subject:</code> )
</li>

<li><code class="example">+from:foo@example.jp</code><br>
(Zwraca wszystkie dokument zawieraj±ce pola <code>foo@example.jp</code>
w <code>From:</code> )
</li>


<li><code class="example">+message-id:&lt;199801240555.OAA18737@foo.example.jp&gt;</code><br>
(Zwraca pewien dokument zawieraj±cy wyszczególnione
<code>Message-Id:</code>)
</li>
</ul>

<h3><a name="query-notes" id="query-notes">Uwagi</a></h3>

<ul>
<li>We wszystkich zapytaniach, Namazu ignoruje wielko¶æ znaków alfabetu.
</li>

<li>Japanese phrases are forced to be segmented into
morphemes automatically and are handled them as <a
href="#query-phrase">phrase searching</a>. This processing
causes invalid segmentation occasionally.
<br>Po cholere to t³umaczyli na angielski? Ja. w ka¿dym b±d¼ razie nie bêdê, bo nie zamierzam pos³ugiwaæ
siê jêz. japoñskim.
</li>

<li>Alphabet, numbers or a part of symbols (duplicated in
ASCII) characters which defined in JIS X 0208 (Japanese
Industrial Standards) are handled as ASCII characters.
<br>Ju¿ mam sko¶ne oczy wed³ug normy przemys³owej JIS X 0208.
</li>

<li>Namazu radzi sobie z okre¶leniami zawieraj±cymi znaki takie jak
<code>TCP/IP</code>, ale to radzenie sobie nie jest kompletne
mo¿esz opisaæ
<code>TCP and IP</code> zamiast
<code>TCP/IP</code>, ale mo¿e to byæ powodem zbyt wielu dopasowañ (szumu informacyjnego)
</li>

<li>Dopasowania okrojonych s³ów i szukania po wybranych polach zabieraj±
wiêcej czasu, ni¿ inne metody.
</li>

<li>Je¿eli chcesz u¿ywaæ <code class="operator">and</code>,
<code class="operator">or</code> lub <code
class="operator">not</code> po prostu jako okre¶leñ, mo¿esz
otoczyæ je odpowiednio podwójnym cudzys³owem tak, jak
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

