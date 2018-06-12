<?php

$doc = new DOMDocument;

// We don't want to bother with white spaces
$doc->preserveWhiteSpace = false;

// Most HTML Developers are chimps and produce invalid markup...
$doc->strictErrorChecking = false;
$doc->recover = true;

$doc->loadHTMLFile('https://plusportals.com/Amsacs');

$xpath = new DOMXPath($doc);

$query = "/html/body/div[1]/img";

$entries = $xpath->query($query);
var_dump($entries->item(0)->textContent);

?>
<?php print_r(stream_get_wrappers()); ?>
