��    P      �                *     �   H      Z     �   x  "     �   ;    4	  L   J
  /   �
     �
  )   �
  �     �   �  W   �  ,     .   <  H   k  �   �  �  `  -   5  	   c     m  $   �     �     �  %   �     �  [     !   d  �   �  u   m  �   �  �   �  �        �     �       /   *     Z  O   w  W   �  
        *  2   6     i  *   u     �  �   �  U   E  .   �  #   �     �  K   �  t   F  F   �  �     �   �  �   x  �   �     �     �  $   �       %   %  &   K  ,   r  <   �  4   �  }     ?   �  r   �  !   B     d     �  B   �     �  �   �     �  �  �  !   &!  �   H!    "  Z   #  �   x#     $  �   2$    +%  L   A&  0   �&     �&  *   �&  �    '  �   �'  W   �(     )  +   )  <   K)  �   �)  �  4*  -   	,     7,     >,  $   \,     �,     �,     �,     �,  [   �,     0-  �   O-  u   6.  �   �.  �   R/  �   �/     �0     �0  	   �0  /   �0     1  O   11  W   �1     �1     �1  0   �1      2  ,   -2     Z2  �   v2  U   3  .   Y3     �3     �3  K   �3  t   �3  F   l4  �   �4  �   w5  �   )6  �   �6     t7     �7  $   �7     �7  )   �7  '   �7  '   8  1   C8  3   u8  }   �8  A   '9  r   i9  !   �9     �9     :  B   8:     {:  �   �:     ";   (After acceptance) Translate on transifex. **gettext** [1]_ is an established standard for internationalization and localization.  It naively maps messages in a program to a translated string. Sphinx uses these facilities to translate whole documents. *gettext* compiles them into a binary format known as **binary catalogs** through :program:`msgfmt` for efficiency reasons.  If you make these files discoverable with :confval:`locale_dirs` for your :confval:`language`, Sphinx will pick them up automatically. :program:`sphinx-build` that is invoked by make command will build po files into mo files. AS noted above, these are located in the ``./locale/<lang>/LC_MESSAGES`` directory.  An example of one such file, from Sphinx, ``builders.po``, is given below. Add configurations to ``conf.py``. After Sphinx successfully ran the :class:`~sphinx.builders.gettext.MessageCatalogBuilder` you will find a collection of ``.pot`` files in your output directory.  These are **catalog templates** and contain messages in your original language *only*. An example: you have a document ``usage.rst`` in your Sphinx project.  The *gettext* builder will put its messages into ``usage.pot``.  Imagine you have Spanish translations [2]_ stored in ``usage.po`` --- for your builds to be translated you need to follow these instructions: Another case, msgid is multi-line text and contains reStructuredText syntax: Because nobody expects the Spanish Inquisition! Build translated document. Click ``Request language`` and fill form. Compile your message catalog to a locale directory, say ``locale``, so it ends up in ``./locale/es/LC_MESSAGES/usage.mo`` in your source directory (where ``es`` is the language code for Spanish.) :: Complementary to translations provided for Sphinx-generated messages such as navigation bars, Sphinx provides mechanisms facilitating *document* translations in itself.  See the :ref:`intl-options` for details on configuration. Congratulations! You got the translated documentation in the ``_build/html`` directory. Contributing to Sphinx reference translation Create config files for :command:`tx` command. Create your transifex_ account and create new project for your document. Currently, transifex does not allow for a translation project to have more than one version of the document, so you'd better include a version number in your project name. Every single element in the doctree will end up in a single message which results in lists being equally split into different chunks while large paragraphs will remain as coarsely-grained as they were in the original document.  This grants seamless document updates while still providing a little bit of context for translators in free-text passages.  It is the maintainer's task to split up paragraphs which are too large as there is no sane automated way to do that. Extract translatable messages into pot files. Footnotes For PowerShell, run: For Windows :command:`cmd.exe`, run: For example: For for BSD/GNU make, run: Forward the translation on transifex. Generate po files. Get translated catalogs and build mo files. For example, to build mo files for German (de): Go to `sphinx translation page`_. If a document is updated, it is necessary to generate updated pot files and to apply differences to translated po files.  In order to apply the updates from a pot file to the po file, use the :command:`sphinx-intl update` command. If you are using 1.2.x or earlier, please invoke :command:`sphinx-intl build` command before :command:`make` command. If you want to push all language's po files, you can be done by using :command:`tx push -t` command.  Watch out! This operation overwrites translations in transifex. In other words, if you have updated each in the service and local po files, it would take much time and effort to integrate them. Initially project maintainers have to collect all translatable strings (also referred to as *messages*) to make them known to translators.  Sphinx extracts these through invocation of ``sphinx-build -b gettext``. Install `sphinx-intl`_. Install `transifex-client`_. Internationalization Invoke :command:`make html` (for BSD/GNU make): Login to transifex_ service. Once completed, the generated po files will be placed in the below directories: Please be careful not to break reST notation.  Most po-editors will help you with that. Project ID Project URL Pull translated po files and make translated HTML. Quick guide Register pot files to ``.tx/config`` file: Run your desired build. See the `GNU gettext utilities <https://www.gnu.org/software/gettext/manual/gettext.html#Introduction>`_ for details on that software suite. Set :confval:`language` to ``es`` (also possible via :option:`-D <sphinx-build -D>`). Set :confval:`locale_dirs` to ``["locale/"]``. Sphinx internationalization details That's all! The generated pot files will be placed in the ``_build/gettext`` directory. The recommended way for new contributors to translate Sphinx reference is to join the translation team on Transifex. There is `sphinx translation page`_ for Sphinx (master) documentation. They can be delivered to translators which will transform them to ``.po`` files --- so called **message catalogs** --- containing a mapping from the original messages to foreign-language strings. This case-study assumes that :confval:`locale_dirs` is set to ``locale/`` and :confval:`gettext_compact` is set to ``False`` (the Sphinx document is already configured as such). This process will create ``.tx/config`` in the current directory, as well as a ``~/.transifexrc`` file that includes auth information. Transifex_ is one of several services that allow collaborative translation via a web interface.  It has a nifty Python-based command line client that makes it easy to fetch and push translations. Translate po files. Translating Translating locally and on Transifex Translating with sphinx-intl Update your po files by new pot files Upload pot files to transifex service. Using Transifex service for team translation Wait acceptance by transifex sphinx translation maintainers. We'll use the pot files generated in the above step. Workflow visualization of translations in Sphinx.  (The stick-figure is taken from an `XKCD comic <https://xkcd.com/779/>`_.) You need :command:`tx` command to upload resources (pot files). You need a :confval:`language` parameter in ``conf.py`` or you may also specify the parameter on the command line. `Transifex Client documentation`_ ``./locale/de/LC_MESSAGES/`` ``./locale/ja/LC_MESSAGES/`` ``https://www.transifex.com/projects/p/sphinx-document-test_1_0/`` ``sphinx-document-test_1_0`` `sphinx-intl`_ is a useful tool to work with Sphinx translation flow.  This section describe an easy way to translate with *sphinx-intl*. and upload pot files: Project-Id-Version: Sphinx 2.1.0+/1499a97c2
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
 （接受后）翻译transifex。 **gettext** [1]_ is an established standard for internationalization and localization.  It naively maps messages in a program to a translated string. Sphinx uses these facilities to translate whole documents. *gettext* compiles them into a binary format known as **binary catalogs** through :program:`msgfmt` for efficiency reasons.  If you make these files discoverable with :confval:`locale_dirs` for your :confval:`language`, Sphinx will pick them up automatically. :program:`sphinx-build` that is invoked by make command will build po files into mo files. AS noted above, these are located in the ``./locale/<lang>/LC_MESSAGES`` directory.  An example of one such file, from Sphinx, ``builders.po``, is given below. 添加配置 ``conf.py``. After Sphinx successfully ran the :class:`~sphinx.builders.gettext.MessageCatalogBuilder` you will find a collection of ``.pot`` files in your output directory.  These are **catalog templates** and contain messages in your original language *only*. An example: you have a document ``usage.rst`` in your Sphinx project.  The *gettext* builder will put its messages into ``usage.pot``.  Imagine you have Spanish translations [2]_ stored in ``usage.po`` --- for your builds to be translated you need to follow these instructions: Another case, msgid is multi-line text and contains reStructuredText syntax: 因为没有人期待西班牙宗教裁判所！ 构建翻译文档。 点击 ``Request language`` and fill form. Compile your message catalog to a locale directory, say ``locale``, so it ends up in ``./locale/es/LC_MESSAGES/usage.mo`` in your source directory (where ``es`` is the language code for Spanish.) :: Complementary to translations provided for Sphinx-generated messages such as navigation bars, Sphinx provides mechanisms facilitating *document* translations in itself.  See the :ref:`intl-options` for details on configuration. Congratulations! You got the translated documentation in the ``_build/html`` directory. 有助于Sphinx参考翻译 为 :command:`tx` 命令创建配置文件. 创建 transifex_ 帐户并为您的文档创建新项目。 Currently, transifex does not allow for a translation project to have more than one version of the document, so you'd better include a version number in your project name. Every single element in the doctree will end up in a single message which results in lists being equally split into different chunks while large paragraphs will remain as coarsely-grained as they were in the original document.  This grants seamless document updates while still providing a little bit of context for translators in free-text passages.  It is the maintainer's task to split up paragraphs which are too large as there is no sane automated way to do that. 将可翻译的消息提取到pot文件中。 脚注 对于PowerShell，请运行: For Windows :command:`cmd.exe`, run: 例如: 对于BSD/GNU make，运行: 转发transifex的翻译。 生成po文件。 Get translated catalogs and build mo files. For example, to build mo files for German (de): 去`sphinx translation page`_. If a document is updated, it is necessary to generate updated pot files and to apply differences to translated po files.  In order to apply the updates from a pot file to the po file, use the :command:`sphinx-intl update` command. If you are using 1.2.x or earlier, please invoke :command:`sphinx-intl build` command before :command:`make` command. If you want to push all language's po files, you can be done by using :command:`tx push -t` command.  Watch out! This operation overwrites translations in transifex. In other words, if you have updated each in the service and local po files, it would take much time and effort to integrate them. Initially project maintainers have to collect all translatable strings (also referred to as *messages*) to make them known to translators.  Sphinx extracts these through invocation of ``sphinx-build -b gettext``. 安装 `sphinx-intl`_. Install `transifex-client`_. 国际化 Invoke :command:`make html` (for BSD/GNU make): 登录transifex_服务。 Once completed, the generated po files will be placed in the below directories: Please be careful not to break reST notation.  Most po-editors will help you with that. 项目ID 项目网址 拉出翻译的po文件并制作翻译的HTML。 快速指南 将pot文件注册到 ``.tx/config`` 文件: 运行您想要的构建。 See the `GNU gettext utilities <https://www.gnu.org/software/gettext/manual/gettext.html#Introduction>`_ for details on that software suite. Set :confval:`language` to ``es`` (also possible via :option:`-D <sphinx-build -D>`). Set :confval:`locale_dirs` to ``["locale/"]``. Sphinx国际化细节 就这样！ The generated pot files will be placed in the ``_build/gettext`` directory. The recommended way for new contributors to translate Sphinx reference is to join the translation team on Transifex. 有一个用于Sphinx（主）文档的 `sphinx translation page`_ 。 They can be delivered to translators which will transform them to ``.po`` files --- so called **message catalogs** --- containing a mapping from the original messages to foreign-language strings. This case-study assumes that :confval:`locale_dirs` is set to ``locale/`` and :confval:`gettext_compact` is set to ``False`` (the Sphinx document is already configured as such). This process will create ``.tx/config`` in the current directory, as well as a ``~/.transifexrc`` file that includes auth information. Transifex_ is one of several services that allow collaborative translation via a web interface.  It has a nifty Python-based command line client that makes it easy to fetch and push translations. Translate po files. 翻译 在本地和Transifex上进行翻译 用sphinx-intl翻译 通过新的pot文件更新您的po文件 将pot文件上传到transifex服务。 使用Transifex服务进行团队翻译 等待transifex sphinx翻译维护者的接受。 我们将使用上面步骤中生成的pot文件。 Workflow visualization of translations in Sphinx.  (The stick-figure is taken from an `XKCD comic <https://xkcd.com/779/>`_.) 你需要：command：`tx`命令来上传资源（pot文件）。 You need a :confval:`language` parameter in ``conf.py`` or you may also specify the parameter on the command line. `Transifex Client documentation`_ ``./locale/de/LC_MESSAGES/`` ``./locale/ja/LC_MESSAGES/`` ``https://www.transifex.com/projects/p/sphinx-document-test_1_0/`` ``sphinx-document-test_1_0`` `sphinx-intl`_ is a useful tool to work with Sphinx translation flow.  This section describe an easy way to translate with *sphinx-intl*. 并上传pot文件: 