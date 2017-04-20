<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<!-- LINK-REV-MADE -->
<link rev="made" href="mailto:webmaster@Costume-Party.local">
<!-- LINK-REV-MADE -->
<title>Namazu: System Wyszukiwania Pe³notekstowego </title>
<style type="text/css"><!--
  strong.keyword { color: Red; }
  p.example      { text-indent: 1em;
                   color: Navy;
		   font-weight: bold;
                   font-family: monospace; }
  code           { color: Navy;
                   font-family: monospace; }
  code.example   { color: Navy;
		   font-weight: bold;
                   font-family: monospace; }
  code.operator  { color: Navy;
                   font-family: monospace;
		   font-weight: bold; }
--></style>
</head>
<body lang="pl">
<h1>Namazu: System Wyszukiwania Pe³notekstowego</h1>
<p>
Ten indeks zawiera <!-- FILE --> 8 <!-- FILE --> dokumentów i
<!-- KEY --> 4,325 <!-- KEY --> s³ów kluczowych.
</p>
<p>
<strong>Ostatnio zmodyfikowano: <!-- DATE --> 2017-04-20 <!-- DATE --></strong>
</p>
<hr>
<form method="get" action="{cgi}">
<p>
<strong>Query:</strong>
<input type="text" name="query" size="40">
<input type="submit" name="submit" value="Szukaj!">
<!-- <input type="hidden" name="idxname" value="foobar"> -->
<a href="{cgi}">[Jak szukaæ, ¿eby znale¼æ a nie zab³±dziæ]</a>
</p>
<p>
<strong>Pokazuj:</strong>
<select name="max">
<option value="10">10</option>
<option selected value="20">20</option>
<option value="30">30</option>
<option value="50">50</option>
<option value="100">100</option>
</select>
<strong>Opis:</strong>
<select name="result">
<option selected value="normal">normalny</option>
<option value="short">skrócony</option>
</select>
<strong>Kryterium sortowania:</strong>
<select name="sort">
<option selected value="score">wynik</option>
<option value="date:late">data, od najnowszych</option>
<option value="date:early">data, od najstarszych</option>
<option value="field:subject:ascending">tytu³, w porz±dku rosn±cym</option>
<option value="field:subject:descending">tytu³, w porz±dku malej±cym</option>
<option value="field:from:ascending">autor, w porz±dku rosn±cym</option>
<option value="field:from:descending">autor, w porz±dku malej±cym</option>
<option value="field:size:ascending">rozmiar, w porz±dku rosn±cym</option>
<option value="field:size:descending">rozmiar, w porz±dku malej±cym</option>
<option value="field:uri:ascending">URI, w porz±dku rosn±cym</option>
<option value="field:uri:descending">URI, w porz±dku malej±cym</option>
</select>
</p>
<!--
<p>
<strong>Cel:</strong>
<ul>
<li><input type="checkbox" name="idxname" value="foo" checked>aptgept</li>
<li><input type="checkbox" name="idxname" value="bar">fooshmoo</li>
<li><input type="checkbox" name="idxname" value="baz">grepgzip</li>
</ul>
</p>
-->
</form>
