# Syntax Coverage

## Built-in Tags

| Tag | Status | Examples | Notes |
|---------|--------|----------|-------|
| apply | ✅ | `{% apply lower\|escape('html') %}...{% endapply %}` | Filter blocks |
| autoescape | ✅ | `{% autoescape 'html' %}...{% endautoescape %}` | Control escaping |
| block | ✅ | `{% block content %}...{% endblock %}` | Template inheritance |
| cache | ✅ | `{% cache 'cache_key' %}...{% endcache %}` | Cache blocks |
| deprecated | ✅ | `{% deprecated 'This template is deprecated' %}` | Mark deprecated |
| do | ✅ | `{% do 1 + 2 %}` | Execute without output |
| embed | ✅ | `{% embed 'base.twig' %}...{% endembed %}` | Embed with overrides |
| extends | ✅ | `{% extends 'base.twig' %}` | Template inheritance |
| guard | ✅ | `{% guard function importmap %}...{% endguard %}` | Conditional compilation |
| flush | ✅ | `{% flush %}` | Force output flush |
| for | ✅ | `{% for item in items %}...{% endfor %}` | Loops with else support |
| from | ✅ | `{% from 'forms.html' import input %}` | Import macros |
| if | ✅ | `{% if condition %}...{% endif %}` | Conditionals with elseif/else |
| import | ✅ | `{% import 'forms.html' as forms %}` | Import templates |
| include | ✅ | `{% include 'template.html' %}` | Include templates |
| macro | ✅ | `{% macro input(name) %}...{% endmacro %}` | Reusable functions |
| sandbox | ✅ | `{% sandbox %}...{% endsandbox %}` | Sandbox execution |
| set | ✅ | `{% set var = value %}` | Variable assignment (inline & block) |
| types | ✅ | `{% types { name: 'string', age?: 'int' } %}` | Variable type declarations |
| use | ✅ | `{% use 'blocks.html' %}` | Horizontal reuse |
| verbatim | ✅ | `{% verbatim %}...{% endverbatim %}` | Raw content output |
| with | ✅ | `{% with { var: value } %}...{% endwith %}` | Variable scope |

## Built-in Filters

| Filter | Status | Examples | Notes |
|---------|--------|----------|-------|
| abs | ✅ | `{{ -5\|abs }}` | Generic filter syntax |
| batch | ✅ | `{{ items\|batch(3) }}` | Generic filter syntax |
| capitalize | ✅ | `{{ name\|capitalize }}` | Generic filter syntax |
| column | ✅ | `{{ items\|column('name') }}` | Generic filter syntax |
| convert_encoding | ✅ | `{{ text\|convert_encoding('UTF-8', 'ISO-8859-1') }}` | Generic filter syntax |
| country_name | ✅ | `{{ 'US'\|country_name }}` | Generic filter syntax |
| currency_name | ✅ | `{{ 'USD'\|currency_name }}` | Generic filter syntax |
| currency_symbol | ✅ | `{{ 'USD'\|currency_symbol }}` | Generic filter syntax |
| data_uri | ✅ | `{{ 'image.png'\|data_uri }}` | Generic filter syntax |
| date | ✅ | `{{ date\|date('Y-m-d') }}` | Generic filter syntax |
| date_modify | ✅ | `{{ date\|date_modify('+1 day') }}` | Generic filter syntax |
| default | ✅ | `{{ var\|default('fallback') }}` | Generic filter syntax |
| escape | ✅ | `{{ text\|escape('html') }}` | Generic filter syntax |
| filter | ✅ | `{{ items\|filter(v => v.published) }}` | Generic filter syntax |
| find | ✅ | `{{ items\|find(v => v.id == 1) }}` | Generic filter syntax |
| first | ✅ | `{{ items\|first }}` | Generic filter syntax |
| format | ✅ | `{{ "Hello %s"\|format(name) }}` | Generic filter syntax |
| format_currency | ✅ | `{{ 1000\|format_currency('USD') }}` | Generic filter syntax |
| format_date | ✅ | `{{ date\|format_date }}` | Generic filter syntax |
| format_datetime | ✅ | `{{ date\|format_datetime }}` | Generic filter syntax |
| format_number | ✅ | `{{ 1234.5\|format_number }}` | Generic filter syntax |
| format_time | ✅ | `{{ date\|format_time }}` | Generic filter syntax |
| html_to_markdown | ✅ | `{{ html\|html_to_markdown }}` | Generic filter syntax |
| inline_css | ✅ | `{{ html\|inline_css }}` | Generic filter syntax |
| inky_to_html | ✅ | `{{ inky\|inky_to_html }}` | Generic filter syntax |
| join | ✅ | `{{ items\|join(', ') }}` | Generic filter syntax |
| json_encode | ✅ | `{{ data\|json_encode }}` | Generic filter syntax |
| keys | ✅ | `{{ object\|keys }}` | Generic filter syntax |
| language_name | ✅ | `{{ 'en'\|language_name }}` | Generic filter syntax |
| last | ✅ | `{{ items\|last }}` | Generic filter syntax |
| length | ✅ | `{{ items\|length }}` | Generic filter syntax |
| locale_name | ✅ | `{{ 'en_US'\|locale_name }}` | Generic filter syntax |
| lower | ✅ | `{{ text\|lower }}` | Generic filter syntax |
| map | ✅ | `{{ items\|map(i => i.name) }}` | Generic filter syntax |
| markdown_to_html | ✅ | `{{ markdown\|markdown_to_html }}` | Generic filter syntax |
| merge | ✅ | `{{ array1\|merge(array2) }}` | Generic filter syntax |
| nl2br | ✅ | `{{ text\|nl2br }}` | Generic filter syntax |
| number_format | ✅ | `{{ 1234.5\|number_format(2, '.', ',') }}` | Generic filter syntax |
| plural | ✅ | `{{ count\|plural }}` | Generic filter syntax |
| raw | ✅ | `{{ html\|raw }}` | Generic filter syntax |
| reduce | ✅ | `{{ items\|reduce((a, b) => a + b) }}` | Generic filter syntax |
| replace | ✅ | `{{ text\|replace({'foo': 'bar'}) }}` | Generic filter syntax |
| reverse | ✅ | `{{ items\|reverse }}` | Generic filter syntax |
| round | ✅ | `{{ 42.55\|round(1) }}` | Generic filter syntax |
| shuffle | ✅ | `{{ items\|shuffle }}` | Generic filter syntax |
| singular | ✅ | `{{ count\|singular }}` | Generic filter syntax |
| slice | ✅ | `{{ items\|slice(1, 3) }}` | Generic filter syntax |
| slug | ✅ | `{{ title\|slug }}` | Generic filter syntax |
| sort | ✅ | `{{ items\|sort }}` | Generic filter syntax |
| spaceless | ✅ | `{{ html\|spaceless }}` | Generic filter syntax |
| split | ✅ | `{{ text\|split(',') }}` | Generic filter syntax |
| striptags | ✅ | `{{ html\|striptags }}` | Generic filter syntax |
| timezone_name | ✅ | `{{ 'UTC'\|timezone_name }}` | Generic filter syntax |
| title | ✅ | `{{ text\|title }}` | Generic filter syntax |
| trim | ✅ | `{{ text\|trim }}` | Generic filter syntax |
| u | ✅ | `{{ text\|u.lower }}` | Generic filter syntax |
| upper | ✅ | `{{ text\|upper }}` | Generic filter syntax |
| url_encode | ✅ | `{{ text\|url_encode }}` | Generic filter syntax |

## Built-in Functions

| Function | Status | Examples | Notes |
|---------|--------|----------|-------|
| attribute | ✅ | `{{ attribute(object, method) }}` | Generic function call syntax |
| block | ✅ | `{{ block('content') }}` | Generic function call syntax |
| constant | ✅ | `{{ constant('CONST_NAME') }}` | Generic function call syntax |
| cycle | ✅ | `{{ cycle(['odd', 'even'], loop.index) }}` | Generic function call syntax |
| date | ✅ | `{{ date() }}` | Generic function call syntax |
| dump | ✅ | `{{ dump(variable) }}` | Generic function call syntax |
| enum | ✅ | `{{ enum('EnumClass::VALUE') }}` | Generic function call syntax |
| enum_cases | ✅ | `{{ enum_cases('EnumClass') }}` | Generic function call syntax |
| html_classes | ✅ | `{{ html_classes(['class1', 'class2']) }}` | Generic function call syntax |
| html_cva | ✅ | `{{ html_cva(variants, props) }}` | Generic function call syntax |
| include | ✅ | `{{ include('template.html') }}` | Generic function call syntax |
| max | ✅ | `{{ max(array) }}` | Generic function call syntax |
| min | ✅ | `{{ min(array) }}` | Generic function call syntax |
| parent | ✅ | `{{ parent() }}` | Generic function call syntax |
| random | ✅ | `{{ random(array) }}` | Generic function call syntax |
| range | ✅ | `{{ range(1, 10) }}` | Generic function call syntax |
| source | ✅ | `{{ source('template.html') }}` | Generic function call syntax |
| country_timezones | ✅ | `{{ country_timezones('US') }}` | Generic function call syntax |
| country_names | ✅ | `{{ country_names() }}` | Generic function call syntax |
| currency_names | ✅ | `{{ currency_names() }}` | Generic function call syntax |
| language_names | ✅ | `{{ language_names() }}` | Generic function call syntax |
| locale_names | ✅ | `{{ locale_names() }}` | Generic function call syntax |
| script_names | ✅ | `{{ script_names() }}` | Generic function call syntax |
| timezone_names | ✅ | `{{ timezone_names() }}` | Generic function call syntax |
| template_from_string | ✅ | `{{ template_from_string(template) }}` | Generic function call syntax |

## Built-in Tests

| Test | Status | Examples | Notes |
|---------|--------|----------|-------|
| constant | ✅ | `{{ value is constant }}` | Via generic `is` operator |
| defined | ✅ | `{{ variable is defined }}` | Via generic `is` operator |
| divisible by | ✅ | `{{ number is divisible by(3) }}` | Specific operator support |
| empty | ✅ | `{{ array is empty }}` | Via generic `is` operator |
| even | ✅ | `{{ number is even }}` | Via generic `is` operator |
| iterable | ✅ | `{{ value is iterable }}` | Via generic `is` operator |
| null | ✅ | `{{ variable is null }}` | Via generic `is` operator |
| odd | ✅ | `{{ number is odd }}` | Via generic `is` operator |
| same as | ✅ | `{{ foo is same as bar }}` | Specific operator support |

## Craft CMS-Specific Tags

| Tag | Status | Examples | Notes |
|---------|--------|----------|-------|
| cache | ✅ | `{% cache for 3600 %}...{% endcache %}` | Craft CMS caching with duration/key |
| css | ✅ | `{% css '/assets/css/style.css' %}`, `{% css %}...{% endcss %}` | Register CSS files or CSS code blocks |
| header | ✅ | `{% header 'X-Custom': 'value' %}` | Set HTTP headers |
| js | ✅ | `{% js '/assets/js/script.js' %}`, `{% js %}...{% endjs %}` | Register JavaScript files or JS code blocks |
| namespace | ✅ | `{% namespace 'foo' %}...{% endnamespace %}` | Namespace HTML attributes |
| nav | ✅ | `{% nav entry in entries %}...{% endnav %}` | Hierarchical navigation |
| paginate | ✅ | `{% paginate craft.entries() as pageInfo, entries %}` | Paginate query results |
| requireAdmin | ✅ | `{% requireAdmin %}` | Require admin access |
| requireLogin | ✅ | `{% requireLogin %}` | Require user login |
| requirePermission | ✅ | `{% requirePermission 'editEntries' %}` | Require specific permission |
| dd | ✅ | `{% dd variable %}` | Output variable and end request |
| dump | ✅ | `{% dump variable %}` | Log variables to debug toolbar |
| exit | ✅ | `{% exit 404 %}` | End request with optional status code |
| expires | ✅ | `{% expires in 3600 %}` | Control HTTP caching headers |
| hook | ✅ | `{% hook 'hook-name' %}` | Allow plugins to hook into template |
| html | ✅ | `{% html %}...{% endhtml %}` | Register arbitrary HTML code |
| redirect | ✅ | `{% redirect 'path/to/page' %}` | Redirect browser to different URL |
| requireEdition | ✅ | `{% requireEdition 'pro' %}` | Check Craft's edition level |
| requireGuest | ✅ | `{% requireGuest %}` | Ensure user is not logged in |
| script | ✅ | `{% script %}...{% endscript %}` | Register JavaScript code blocks with attributes |
| switch | ✅ | `{% switch variable %}...{% endswitch %}` | Compare variable against multiple values |
| tag | ✅ | `{% tag 'div' with {class: 'test'} %}` | Render HTML element dynamically |

## Craft CMS-Specific Functions

| Function | Status | Examples | Notes |
|---------|--------|----------|-------|
| actionInput | ✅ | `{{ actionInput('users/save-user') }}` | Hidden action input for forms |
| csrfInput | ✅ | `{{ csrfInput() }}` | CSRF token input |
| siteUrl | ✅ | `{{ siteUrl('company/contact') }}` | Generate site URLs |
| svg | ✅ | `{{ svg('@webroot/icons/lemon.svg') }}` | Output SVG documents |
| dataUrl | ✅ | `{{ dataUrl(myAsset) }}` | Convert to base64 data URLs |
| gql | ✅ | `{{ gql('{entries(limit: 2) { title }}') }}` | Execute GraphQL queries |
| seq | ✅ | `{{ seq('hits:' ~ entry.id) }}` | Generate sequence numbers |
| plugin | ✅ | `{{ plugin('commerce').version }}` | Get plugin instance |
| collect | ✅ | `{{ collect(array) }}` | Create collection object |
| create | ✅ | `{{ create('craft\\elements\\Entry') }}` | Create new objects |

## Craft CMS-Specific Filters

| Filter | Status | Examples | Notes |
|---------|--------|----------|-------|
| address | ✅ | `{{ myAddress\|address }}` | Format address elements |
| append | ✅ | `{{ '<div></div>'\|append('<p>Content</p>') }}` | Append HTML content |
| ascii | ✅ | `{{ 'über'\|ascii }}` | Convert to ASCII |
| camel | ✅ | `{{ 'foo bar'\|camel }}` | Convert to camelCase |
| contains | ✅ | `{{ works\|contains('rating', 'm') }}` | Check array contains item |
| currency | ✅ | `{{ 1000000\|currency('USD') }}` | Format as currency |
| encenc | ✅ | `{{ 'secure-string'\|encenc }}` | Encrypt and encode |
| firstWhere | ✅ | `{{ mountains\|firstWhere('range', null) }}` | Find first matching element |
| hash | ✅ | `{{ 'data'\|hash }}` | Generate keyed hash |
| id | ✅ | `{{ 'input[name]'\|id }}` | Format for HTML ID |
| namespace | ✅ | `{{ html\|namespace('foo') }}` | Namespace HTML attributes |
| parseRefs | ✅ | `{{ content\|parseRefs }}` | Parse reference tags |
| purify | ✅ | `{{ content\|purify }}` | Purify HTML content |
| timestamp | ✅ | `{{ date\|timestamp }}` | Convert to timestamp |
| literal | ✅ | `{{ data\|literal }}` | Output literal value |

## Craft CMS-Specific Tests

| Test | Status | Examples | Notes |
|---------|--------|----------|-------|
| array | ✅ | `{{ variable is array }}` | Check if array |
| boolean | ✅ | `{{ variable is boolean }}` | Check if boolean |
| callable | ✅ | `{{ variable is callable }}` | Check if callable |
| countable | ✅ | `{{ variable is countable }}` | Check if countable |
| float | ✅ | `{{ variable is float }}` | Check if float |
| instance of | ✅ | `{{ object is instance of('ClassName') }}` | Check class instance (function call syntax) |
| integer | ✅ | `{{ variable is integer }}` | Check if integer |
| missing | ✅ | `{{ field is missing }}` | Check if missing component |
| numeric | ✅ | `{{ variable is numeric }}` | Check if numeric |
| object | ✅ | `{{ variable is object }}` | Check if object |
