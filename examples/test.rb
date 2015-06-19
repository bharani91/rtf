# encoding: utf-8
#!/usr/bin/env ruby

$LOAD_PATH.unshift(File.dirname(__FILE__)+"/../lib/")


require 'rubygems'
require 'rtf'

include RTF

html = <<-EOF

<html>
    <head>
        <title>
            testing
        </title>
    </head>

    <body>
        <h1>testing</h1>
        <h2>test</h2>
        <h3>asdasdjladj</h3>
        <p>
            <u>Lorem ipsum dolor sit amet</u>, consectetur adipisicing <strong>elit. Maxime, enim praesentium</strong> dolorem nisi optio quisquam est quidem quos error quas <b>dignissimos voluptatem</b>, 
            <br><br><br>
            consequatur inventore eum distinctio voluptatum! Quisquam, aliquam, maxime.
        </p>

        <p>
            Lorem <strong>ipsum dolor sit amet</strong>, consectetur <b>adipisicing</b> elit. Temporibus, quas. Molestiae recusandae, <em>ipsam officiis eum sunt</em> temporibus magnam ullam expedita, <u>facilis eius nam vero in iusto velit totam at iure</u>.
        </p>

        <p>
            <ul>
                <li>lorem</li>
                <li>lorem</li>
                <li>lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos nulla ducimus, officiis architecto eius repellendus magni quisquam velit, quidem commodi impedit assumenda earum atque dicta, nemo nihil eligendi deleniti aliquid.</li>
                <li><strong>lorem</strong></li>
            </ul>

             <ol>
                <li>lorem</li>
                <li>lorem</li>
                <li>lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos pariatur labore facere incidunt saepe, accusantium quos laudantium itaque enim nulla ipsam, dolor atque ipsa cum deleniti libero excepturi delectus vero!</li>
                <li><strong>lorem</strong></li>
            </ol>
        </p>

    </body>
</html>

EOF

converter = Converters::HTML.new(html)
File.open('example01.rtf', 'w') do |file|
   file.write(converter.to_rtf)
end
