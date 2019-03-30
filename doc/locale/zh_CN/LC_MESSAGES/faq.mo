��    I      d              �  )   �  8   �  -     #   >  /   b  .   �     �     �     �  K     L   W  s   �  ]     �   v     i     z  B   �  	   �     �  �   �  Y   �	    
       �   ,  N   �               &  =   2  �   p  �   n     D  �   R    "  k   B  	   �  �   �     =  �   C                 S     G   o  ,   �  
   �  �   �  '  �     �  �   �  �  �  C   w  G   �  P    j   T  [   �  -    -  I  r   w  �   �  ]   |  T   �  >   /  c   n  &   �     �  9      E   H   d   �   W  �   o   K"  �   �"  �  b#  "   �$  6   %  )   D%  $   n%  ,   �%  (   �%     �%     &      &  K   5&  L   �&  s   �&  ]   B'  �   �'     �(     �(  B   �(     �(     �(  �   �(  Y   �)    6*     G,  �   T,  N   �,     /-     @-     N-  =   ^-  �   �-  �   �.     p/  �   ~/    N0  k   n1  	   �1  �   �1     i2  �   p2     /3     43     B3  S   H3  G   �3  ,   �3     4  �   %4  '  �4     �5  �   �5  �  �6  ;   �8  G   �8  P  9  j   g:  [   �:  -  .;    \<  r   p=  �   �=  E   u>  T   �>  0   ?  c   A?  /   �?     �?  9   �?  B   @  K   b@  W  �@  o   B  �   vB   ... add global substitutions or includes? ... convert from my existing docs using MoinMoin markup? ... create HTML slides from Sphinx documents? ... create PDF files without LaTeX? ... customize the look of the built HTML files? ... display the whole TOC tree in the sidebar? ... get section numbers? ... write my own extension? :ref:`texinfo-links` Add ``searchbox.html`` to the :confval:`html_sidebars` configuration value. Add them in the :confval:`rst_prolog` or :confval:`rst_epilog` config value. Colons (``:``) cannot be properly escaped in menu entries and xrefs. They will be replaced with semicolons (``;``). Copy the code snippet and paste it into ``_templates/searchbox.html`` in your Sphinx project: Directories starting with underscores are ignored by default which breaks static files in Sphinx.  GitHub's preprocessor can be `disabled <https://github.com/blog/572-bypassing-jekyll-on-github-pages>`_ to support Sphinx HTML output properly. Displaying Links Doxygen Each section corresponds to a different ``node`` in the Info file. Epub info Epydoc Files that are inserted outside of the ``toctree`` directive must be manually included. This sometimes applies to appendixes, e.g. the glossary or the indices.  You can add them with the :confval:`epub_post_files` option. For many more extensions and other contributed stuff, see the sphinx-contrib_ repository. For some readers you can use embedded or external fonts using the CSS ``@font-face`` directive.  This is *extremely* useful for code listings which are often cut at the right margin.  The default Courier font (or variant) is quite wide and you can only display up to 60 characters on a line.  If you replace it with a narrower font, you can get more characters on a line.  You may even use `FontForge <https://fontforge.github.io/>`_ and create narrow variants of some free font.  In my case I get up to 70 characters on a line. GitHub Pages Glenn Hutchings has written a SCons build script to build Sphinx documentation; it is hosted here: https://bitbucket.org/zondo/sphinx-scons Go to https://cse.google.com/cse/all to create the Google Search code snippet. Google Analytics Google Search How do I... If you get the following error, fix your document structure:: If you want Emacs to display Info files produced by Sphinx using the value ``hide`` for ``Info-hide-note-references`` and the default value for all other Info files, try adding the following Emacs Lisp code to your start-up file, ``~/.emacs.d/init.el``. In the stand-alone reader, ``info``, references are displayed just as they appear in the source.  Emacs, on the other-hand, will by default replace ``*note:`` with ``see`` and hide the ``target-id``.  For example: Inline markup Jannis Leidel wrote a `setuptools command <https://pypi.org/project/Sphinx-PyPI-upload/>`_ that automatically uploads Sphinx documentation to the PyPI package documentation area at https://pythonhosted.org/. Large floating divs are not displayed properly. If they cover more than one page, the div is only shown on the first page. In that case you can copy the :file:`epub.css` from the ``sphinx/themes/epub/static/`` directory to your local ``_static/`` directory and remove the float settings. Links to external Info files can be created using the somewhat official URI scheme ``info``.  For example:: MediaWiki Michael Jones is developing a reST/Sphinx bridge to doxygen called `breathe <https://github.com/michaeljones/breathe/tree/master>`_. Notes One noticeable problem you may encounter with the generated Info files is how references are displayed.  If you read the source of an Info file, a reference to this section would look like:: PyPI Read the Docs SCons See https://bitbucket.org/kevindunn/sphinx-wiki/wiki/Home, a project by Kevin Dunn. See the "Hieroglyph" package at https://github.com/nyergler/hieroglyph. See the :doc:`/development/tutorials/index`. Sphinx FAQ Split the text into several files. The longer the individual HTML files are, the longer it takes the ebook reader to render them.  In extreme cases, the rendering can take up to one minute. Test the created epubs. You can use several alternatives.  The ones I am aware of are Epubcheck_, Calibre_, FBreader_ (although it does not render the CSS), and Bookworm_.  For Bookworm, you can download the source from https://code.google.com/archive/p/threepress and run your own local server. Texinfo info The easiest way is to convert to xhtml, then convert `xhtml to reST`_. You'll still need to mark up classes and such, but the headings and code examples come through cleanly. The exact behavior of how Emacs displays references is dependent on the variable ``Info-hide-note-references``.  If set to the value of ``hide``, Emacs will hide both the ``*note:`` part and the ``target-id``.  This is generally the best way to view Sphinx-based documents since they often make frequent use of links and do not take this limitation into account.  However, changing this variable affects how all Info documents are displayed and most do take this behavior into account. The following list gives some hints for the creation of epub files: The following notes may be helpful if you want to create Texinfo files: The handling of the epub cover page differs from the reStructuredText procedure which automatically resolves image paths and puts the images into the ``_images`` directory.  For the epub cover page put the image in the :confval:`html_static_path` directory and reference it with its full path in the :confval:`epub_cover` config option. The kindlegen command doesn't accept documents that have section titles surrounding ``toctree`` directive: The standard formatting can be re-enabled by adding the following to your :file:`conf.py`:: The standard formatting for ``*strong*`` and ``_emphasis_`` can result in ambiguous output when used to markup parameter names and other values.  Since this is a fairly common practice, the default formatting has been changed so that ``emphasis`` and ``strong`` are now displayed like ```literal'``\s. There are two main programs for reading Info files, ``info`` and GNU Emacs.  The ``info`` program has less features but is available in most Unix environments and can be quickly accessed from the terminal.  Emacs provides better font and color display and supports extensive customization (of course). There's a third-party extension providing an `api role`_ which refers to Epydoc's API docs for a given identifier. They are automatic in LaTeX output; for HTML, give a ``:numbered:`` option to the :rst:dir:`toctree` directive where you want to start numbering. This is a list of Frequently Asked Questions about Sphinx.  Feel free to suggest new entries! To replace Sphinx's built-in search function with Google Search, proceed as follows: Try to minimize the markup.  This also pays in rendering time. Use the :data:`toctree` callable in a custom layout template, probably in the ``sidebartoc`` block. Use themes, see :doc:`/usage/theming`. Using Sphinx with... You can use a custom ``layout.html`` template, like this: You may have to experiment a little until you get reasonable results. `rinohtype`_ provides a PDF builder that can be used as a drop-in replacement for the LaTeX builder. https://readthedocs.org is a documentation hosting service based around Sphinx. They will host sphinx documentation, along with supporting a number of other features including version support, PDF generation, and more. The `Getting Started <https://read-the-docs.readthedocs.io/en/latest/getting_started.html>`_ guide is a good place to start. kindlegen assumes all documents order in line, but the resulting document has complicated order for kindlegen:: kindlegen_ command can convert from epub3 resulting file to ``.mobi`` file for Kindle. You can get ``yourdoc.mobi`` under ``_build/epub`` after the following command: Project-Id-Version: Sphinx 2.1.0+/1499a97c2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-03-29 17:17+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 ... 添加全球替换或包括？ ... 使用MoinMoin标记从我现有的文档转换？ ... 从Sphinx文档创建HTML幻灯片？ ... 创建没有LaTeX的PDF文件？ ... 自定义构建的HTML文件的外观？ ... 在侧边栏中显示整个TOC树？ ... 获得部分号码？ ... 写我自己的扩展？ :ref:`texinfo-links` Add ``searchbox.html`` to the :confval:`html_sidebars` configuration value. Add them in the :confval:`rst_prolog` or :confval:`rst_epilog` config value. Colons (``:``) cannot be properly escaped in menu entries and xrefs. They will be replaced with semicolons (``;``). Copy the code snippet and paste it into ``_templates/searchbox.html`` in your Sphinx project: Directories starting with underscores are ignored by default which breaks static files in Sphinx.  GitHub's preprocessor can be `disabled <https://github.com/blog/572-bypassing-jekyll-on-github-pages>`_ to support Sphinx HTML output properly. 显示链接 Doxygen Each section corresponds to a different ``node`` in the Info file. Epub 信息 Epydoc Files that are inserted outside of the ``toctree`` directive must be manually included. This sometimes applies to appendixes, e.g. the glossary or the indices.  You can add them with the :confval:`epub_post_files` option. For many more extensions and other contributed stuff, see the sphinx-contrib_ repository. For some readers you can use embedded or external fonts using the CSS ``@font-face`` directive.  This is *extremely* useful for code listings which are often cut at the right margin.  The default Courier font (or variant) is quite wide and you can only display up to 60 characters on a line.  If you replace it with a narrower font, you can get more characters on a line.  You may even use `FontForge <https://fontforge.github.io/>`_ and create narrow variants of some free font.  In my case I get up to 70 characters on a line. GitHub Pages Glenn Hutchings has written a SCons build script to build Sphinx documentation; it is hosted here: https://bitbucket.org/zondo/sphinx-scons Go to https://cse.google.com/cse/all to create the Google Search code snippet. Google Analytics Google Search 我如何能... If you get the following error, fix your document structure:: If you want Emacs to display Info files produced by Sphinx using the value ``hide`` for ``Info-hide-note-references`` and the default value for all other Info files, try adding the following Emacs Lisp code to your start-up file, ``~/.emacs.d/init.el``. In the stand-alone reader, ``info``, references are displayed just as they appear in the source.  Emacs, on the other-hand, will by default replace ``*note:`` with ``see`` and hide the ``target-id``.  For example: Inline markup Jannis Leidel wrote a `setuptools command <https://pypi.org/project/Sphinx-PyPI-upload/>`_ that automatically uploads Sphinx documentation to the PyPI package documentation area at https://pythonhosted.org/. Large floating divs are not displayed properly. If they cover more than one page, the div is only shown on the first page. In that case you can copy the :file:`epub.css` from the ``sphinx/themes/epub/static/`` directory to your local ``_static/`` directory and remove the float settings. Links to external Info files can be created using the somewhat official URI scheme ``info``.  For example:: MediaWiki Michael Jones is developing a reST/Sphinx bridge to doxygen called `breathe <https://github.com/michaeljones/breathe/tree/master>`_. 注释 One noticeable problem you may encounter with the generated Info files is how references are displayed.  If you read the source of an Info file, a reference to this section would look like:: PyPI Read the Docs SCons See https://bitbucket.org/kevindunn/sphinx-wiki/wiki/Home, a project by Kevin Dunn. See the "Hieroglyph" package at https://github.com/nyergler/hieroglyph. See the :doc:`/development/tutorials/index`. Sphinx 常问问题 将文本拆分为多个文件。单个HTML文件越长，电子书阅读器渲染它们的时间就越长。在极端情况下，渲染可能需要一分钟。 Test the created epubs. You can use several alternatives.  The ones I am aware of are Epubcheck_, Calibre_, FBreader_ (although it does not render the CSS), and Bookworm_.  For Bookworm, you can download the source from https://code.google.com/archive/p/threepress and run your own local server. Texinfo 信息 The easiest way is to convert to xhtml, then convert `xhtml to reST`_. You'll still need to mark up classes and such, but the headings and code examples come through cleanly. The exact behavior of how Emacs displays references is dependent on the variable ``Info-hide-note-references``.  If set to the value of ``hide``, Emacs will hide both the ``*note:`` part and the ``target-id``.  This is generally the best way to view Sphinx-based documents since they often make frequent use of links and do not take this limitation into account.  However, changing this variable affects how all Info documents are displayed and most do take this behavior into account. 以下列表提供了有关创建epub文件的一些提示: The following notes may be helpful if you want to create Texinfo files: The handling of the epub cover page differs from the reStructuredText procedure which automatically resolves image paths and puts the images into the ``_images`` directory.  For the epub cover page put the image in the :confval:`html_static_path` directory and reference it with its full path in the :confval:`epub_cover` config option. The kindlegen command doesn't accept documents that have section titles surrounding ``toctree`` directive: The standard formatting can be re-enabled by adding the following to your :file:`conf.py`:: The standard formatting for ``*strong*`` and ``_emphasis_`` can result in ambiguous output when used to markup parameter names and other values.  Since this is a fairly common practice, the default formatting has been changed so that ``emphasis`` and ``strong`` are now displayed like ```literal'``\s. 有两个用于读取Info文件的主程序，``info`` 和GNU Emacs。  ``info`` 程序具有较少的功能，但在大多数Unix环境中都可用，并且可以从终端快速访问。  Emacs提供更好的字体和颜色显示，并支持广泛的自定义（当然）。 There's a third-party extension providing an `api role`_ which refers to Epydoc's API docs for a given identifier. They are automatic in LaTeX output; for HTML, give a ``:numbered:`` option to the :rst:dir:`toctree` directive where you want to start numbering. 这是关于Sphinx的常见问题列表。随意提出新的条目！ To replace Sphinx's built-in search function with Google Search, proceed as follows: 尽量减少标记。这也支付渲染时间。 Use the :data:`toctree` callable in a custom layout template, probably in the ``sidebartoc`` block. 使用主题，请参阅 :doc:`/usage/theming`. 使用Sphinx... You can use a custom ``layout.html`` template, like this: 您可能需要进行一些实验，直到获得合理的结果。 `rinohtype`_ provides PDF构建器，可用作LaTeX构建器的替代品。 https://readthedocs.org is a documentation hosting service based around Sphinx. They will host sphinx documentation, along with supporting a number of other features including version support, PDF generation, and more. The `Getting Started <https://read-the-docs.readthedocs.io/en/latest/getting_started.html>`_ guide is a good place to start. kindlegen assumes all documents order in line, but the resulting document has complicated order for kindlegen:: kindlegen_ command can convert from epub3 resulting file to ``.mobi`` file for Kindle. You can get ``yourdoc.mobi`` under ``_build/epub`` after the following command: 