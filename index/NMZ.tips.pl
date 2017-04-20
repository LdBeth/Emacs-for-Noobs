<h2><a name="tips" id="tips">Porady dotycz�ce wyszukiwania</a></h2>

<p>
Je�eli masz problem ze znalezieniem podanej przez Ciebie informacji, spr�buj zastosowa� poni�sze rady
</p>

<ul>
<li>Sprawd� pisowni� podanych s��w kluczowych<br>
Namazu nic nie znajdzie z b��dami w pisowni.
</li>

<li>Dodaj s��w-kluczy<br>

Je�eli nie otrzymujesz wynik�w, lub otrzymujesz ich za ma�o, mo�esz doda� jedno
lub wi�cej pokrewnych s��w z operatorem
<code
class="operator">or</code> . Powiniene� otrzyma� wi�cej rezultat�w np.:
<br>
<code class="example">tex or ptex or latex or latex2e</code><br>

Jezeli otrzymujesz za du�o wynikow, mo�esz doda� jedno lub wi�cej
pokrewnych s��w z operatorem
<code class="operator">and</code>
. To ograniczy bardziej zakres przeszukiwania np.:<br>
<code class="example">latex and dvi2ps and eps</code>
</li>

<li>Spr�buj wyszukiwania okrojonych s��w<br>

Je�eli nie otrzymujesz wynik�w, lub otrzymujesz ich za ma�o, mo�esz spr�bowa�
dopasowywania okrojonych s��w.
Mo�esz wyszczeg�lni�<code class="example">tex*</code> dla wyszukania okre�le� zaczynaj�cych si� na
<code>tex</code> (e.g., <code>tex</code>,
<code>texi2html</code>,
<code>texindex</code>, <code>text</code>).
<br>
Mo�esz wyszczeg�lni�<code class="example">*tex</code> to
wyszukiwanie dla okre�le� ko�cz�cych si� na
<code>tex</code> (np.:
<code>bibtex</code>,
<code>jlatex</code>, <code>latex</code>,
<code>platex</code>, <code>ptex</code>, <code>vertex</code>).
<br>

Mo�esz wyszczeg�lni�
<code class="example">*tex*</code> to
wyszukiwanie dla okre�le� zawieraj�cych
<code>tex</code> (wiele).
<br>
</li>

<li>You tried phrase searching but it hit documents which
Spr�bowa�e� wyszukiwania fraz, ale to nie zwr�ci�o �adnych wynik�w zawieraj�cych twoj� fraz�?
<br>
To jest usterka Namazu. Precyzja wyszukiwania fraz nie jest
100%, ale z�e wyniki s� rzadkie.
</li>

<li>Je�eli chcesz u�y� <code class="operator">and</code>,
<code class="operator">or</code> lub <code
class="operator">not</code> jako zwyk�ych s��w kluczowych <br>
mo�esz otoczy� je odpowiednio podw�jnymi cudzys�owami tak, jak
<code
class="operator">"..."</code> lub takimi nawiasami <code
class="operator">{...}</code>.
</li>

</ul>
