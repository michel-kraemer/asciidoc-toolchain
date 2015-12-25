AsciiDoc Toolchain
==================

This is my [AsciiDoc](http://www.methods.co.nz/asciidoc/) toolchain. I
use it to convert my own work written in AsciiDoc to PDF via
[Saxon](http://saxon.sourceforge.net/) and
[FOP](http://xmlgraphics.apache.org/fop/).

The toolchain is fast and reliable. You only need Java installed on
your system. Everything else (including AsciiDoc, Saxon, and FOP) will
automatically be downloaded by the toolchain. This is perfect if you
want to get your AsciiDoc build process up and running in only a
couple of seconds with only one command.

Running
-------

The toolchain is built on [Gradle](http://www.gradle.org/). I highly
recommend using Gradle Wrapper, so the build process can be triggered
with only one command from the directory where your AsciiDoc file is.

    ./gradlew pdf

This command will compile the AsciiDoc file and generate a PDF.

Installing
----------

You need a Gradle build file in order to use the toolchain. Create
a file called `build.gradle` in the directory where your AsciiDoc
source file is. Here's an example:

```groovy
apply from: 'https://raw.github.com/michel-kraemer/asciidoc-toolchain/0.1/asciidoc-toolchain.gradle'

defaultTasks 'pdf'

task wrapper(type: Wrapper) {
    gradleVersion = '2.10'
}
```

Additionally, you need to add a file called `gradle.properties`
where you have to define some settings. Here's a sample file:

```properties
SOURCE_DIR=src
SOURCE_FILE=src/article.asc
STYLESHEET=src/fo.xsl
FOP_CONF=src/fop.xconf
```

That's it! After that you can run Gradle to generate a PDF file. Of
course, you may also create the
[Gradle wrapper](http://www.gradle.org/docs/current/userguide/gradle_wrapper.html)
first.

    gradle wrapper

This will generate a file called `gradlew` in the directory where
the `build.gradle` file is. The Gradle Wrapper is a bootstrap program
that automatically downloads Gradle if it's not already installed on
the system.

Tasks
-----

The toolchain adds the following tasks to your build.

<dl>
<dt>docbook</dt>
<dd>Runs AsciiDoc to create a DocBook XML in your `build` directory</dd>
<dt>fo</dt>
<dd>Perfoms an XSL transformation to convert the DocBook XML to FO</dd>
<dt>pdf</dt>
<dd>Runs FOP to generate a PDF</dd>
<dt>watch</dt>
<dd>Watches the source file and executes the `pdf` task if the file
has changed</dd>
</dl>

Contribution
------------

This is a very rough version of my toolchain. There's a lot of space
for improvements. The current version is configurable but
more options may be added in the future.

If you like the toolchain and want to contribute you're more
than welcome! Feel free to send me any comments, issues, or pull
requests. I would be very glad to improve this little piece of code
and to make it suitable for a broader audience. Thanks!

License
-------

The toolchain is licensed under the
[Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
