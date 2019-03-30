��    {      �              �     �     �     �  [     �  n     �	      
  a   #
      �
  /   �
     �
  	   �
     �
       :        O     l  �   {     !     7  o   J  b   �  �     �        �  w   �  �   (  ;   �  u   �  �   [  y   
     �  ]   �     �  �     7   �  {   �  x   d  �   �  �   �  �     u  �     C  �  R  1   �       �   5  M   �  �   #  �   �  ?   `  B   �  �   �  �   �  z   L  �   �  x   L     �  T   �    7  w   N   ?   �   ,   !     3!  E   L!  "   �!  X  �!  ~   #  �   �#  X   $     v$  �   �$    %  �  &  D   (  �   `(  >   )  �   E)    *  W   3+  C   �+  ?   �+  �   ,  �   �,  �   �-  0   .     C.     `.  �   .  #   /  y   7/  >   �/  �   �/  v   �0     1  u   1  o   �1  I   �1  �   >2  F   �2  1   (3  �   Z3  �   04  s   �4  �   +5  �   �5  �   a6  V   7  J   l7  �   �7    �8  )   �9  	   �9     �9  ;   �9  
   !:  6   ,:  %   c:  ,   �:  (   �:  ,   �:     ;  �  #;     �<     �<     �<  [   �<  �  L=     �>     �>  a   �>     ^?  3   w?     �?  	   �?     �?     �?  E   �?  !   .@     P@  �   ]@     A     A  o   #A  b   �A  �   �A  �   �B     {C  w   �C  �   �C  8   }D  u   �D  �   ,E  y   �E     UF  ]   \F     �F  �   �F  7   �G  {   �G  x   6H  �   �H  �   dI  �   �I  u  �J     L  �  (L  1   �M     �M  �   N  M   �N  �   �N  �   �O  ?   6P  B   vP  �   �P  �   �Q  z   "R  �   �R  x   "S     �S  T   �S    T  w   U  ?   �U  ,   �U     V  ;   V  "   WV  X  zV  ~   �W  �   RX  X   �X     ;Y  �   WY    �Y  �  �Z  D   �\  �   /]  >   �]  �   ^    �^  W   `  C   Z`  ?   �`  �   �`  �   �a  �   `b  %   �b     c     c  �   >c  $   �c  y   �c  9   qd  �   �d  v   Ee     �e  u   �e  o   ?f  I   �f  �   �f  F   �g  1   �g  �   h  �   �h  s   ri  �   �i  �   wj  �   k  V   �k  H   'l  �   pl    Um  )   bn  	   �n     �n  ;   �n  
   �n  6   �n      o  ,   =o  (   jo  ,   �o     �o   #sphinx-doc on irc.freenode.net Abstract Add appropriate unit tests. Arguments to ``pytest`` can be passed via ``tox``, e.g. in order to run a particular test:: As the :ref:`deprecation-policy` describes, the first release of Sphinx that deprecates a feature (``A.B``) should raise a ``RemovedInSphinxXXWarning`` (where ``XX`` is the Sphinx version where the feature will be removed) when the deprecated feature is invoked. Assuming we have good test coverage, these warnings are converted to errors when running the test suite with warnings enabled:: Branch Model Bug Reports and Feature Requests Check for open issues or open a fresh issue to start a discussion around a feature idea or a bug. Checkout the appropriate branch. Clone the forked repository to your machine. :: Coding Guide Community Contributing to Sphinx Core Developers Create a new working branch.  Choose any name you like. :: Create an account on GitHub. Debugging Tips Delete the build cache before building documents if you make changes in the code by running the command ``make clean`` or using the :option:`sphinx-build -E` option. Deprecating a feature Deprecation policy Development for MAJOR version. All changes including incompatible behaviors and public API updates are allowed. For bug fixes, first add a test that fails without your changes and passes after they are applied. For bug reports, please include the output produced during the build process and also the log file Sphinx creates after it encounters an unhandled exception.  The location of this file should be shown towards the end of the error message. For changes that preserves backwards-compatibility of API and features, they should be included in the next MINOR release, use the ``X.Y`` branch. :: For example:: For incompatible or other substantial changes that should wait until the next MAJOR release, use the ``master`` branch. For non-trivial changes, please update the :file:`CHANGES` file.  If your changes alter existing behavior, please document this. For tips on working with the code, see the `Coding Guide`_. For urgent release, a new PATCH branch must be branched from the newest release tag (see `Branch Model`_ for detail). Fork `the repository`_ on GitHub to start making your changes to the ``master`` branch for next MAJOR version, or ``X.Y`` branch for next MINOR version (see `Branch Model`_). Fork the main Sphinx repository (`sphinx-doc/sphinx <https://github.com/sphinx-doc/sphinx>`_) using the GitHub interface. Getting Started GitHub recognizes certain phrases that can be used to automatically update the issue tracker. Hack, hack, hack. How to use pytest fixtures that are provided by ``sphinx.testing``? You can require ``'sphinx.testing.fixtures'`` in your test modules or ``conftest.py`` files like this:: IRC channel for development questions and user support. If a feature has been improved or modified in a backwards-incompatible way, the old feature or behavior will be deprecated. If you feel uncomfortable or uncertain about an issue or your changes, feel free to email the *sphinx-dev* mailing list. If you have encountered a problem with Sphinx or have an idea for a new feature, please submit it to the `issue tracker`_ on GitHub or discuss it on the `sphinx-dev`_ mailing list. If you want to know more detailed usage, please refer to ``tests/conftest.py`` and other ``test_*.py`` files under ``tests`` directory. Including or providing a link to the source files involved may help us fix the issue.  If possible, try to create a minimal project that produces the error and post that instead. JavaScript stemming algorithms in ``sphinx/search/*.py`` (except ``en.py``) are generated by this `modified snowballcode generator <https://github.com/shibukawa/snowball>`_. Generated `JSX <https://jsx.github.io/>`_ files are in `this repository <https://github.com/shibukawa/snowball-stemmer.jsx>`_. You can get the resulting JavaScript files using the following command:: Locale updates MAJOR and MINOR releases may deprecate certain features from previous releases. If a feature is deprecated in a release A.x, it will continue to work in all A.x.x versions (for all versions of x). It will continue to work in all B.x.x versions but raise deprecation warnings. Deprecated features will be removed at the C.0.0. It means the deprecated feature will work during 2 MAJOR releases at least. Mailing list for development related discussions. Mailing list for user support. New features should be documented.  Include examples and use cases where appropriate.  If possible, include a sample that is displayed in the generated output. New unit tests should be included in the ``tests`` directory where necessary: Only the most recent ``MAJOR.MINOR`` branch is currently retained. When a new MAJOR version is released, the old ``MAJOR.MINOR`` branch will be deleted and replaced by an equivalent tag. Please add a bullet point to :file:`CHANGES` if the fix or feature is not trivial (small doc updates, typo fixes).  Then commit:: Prior to Sphinx - 1.5.2, Sphinx was running the test with nose. Push changes in the branch to your forked repository on GitHub. :: Questionable or extensive changes should be submitted as a pull request instead of being committed directly to the main repository.  The pull request should be reviewed by another core developer before it is merged. Send a pull request and bug the maintainer until it gets merged and published. Make sure to add yourself to AUTHORS_ and the change to CHANGES_. Set the configuration variable :confval:`keep_warnings` to ``True`` so warnings will be displayed in the generated output. Set the configuration variable :confval:`nitpicky` to ``True`` so that Sphinx will complain about references without a known target. Set the debugging options in the `Docutils configuration file <http://docutils.sourceforge.net/docs/user/config.html>`_. Setup a virtual environment. So, for example, if we decided to start the deprecation of a function in Sphinx 2.x: Sometimes Sphinx will include a backport of a Python library that's not included in a version of Python that Sphinx currently supports. When Sphinx no longer needs to support the older version of Python that doesn't include the library, the library will be deprecated in Sphinx. Sphinx 2.x will contain a backwards-compatible replica of the function which will raise a ``RemovedInSphinx40Warning``. Sphinx 3.x will still contain the backwards-compatible replica. Sphinx 4.0 will remove the feature outright. Sphinx Developer's Guide Sphinx adopts Semantic Versioning 2.0.0 (refs: https://semver.org/ ). Sphinx also runs JavaScript tests. Sphinx has been tested with pytest runner. Sphinx developers write unit tests using pytest notation. Utility functions and pytest fixtures for testing are provided in ``sphinx.testing``. If you are a developer of Sphinx extensions, you can write unit tests with using pytest. At this time, ``sphinx.testing`` will help your test implementation. Sphinx project uses following branches for developing that conforms to Semantic Versioning 2.0.0 (refs: https://semver.org/ ). Sphinx uses `Babel <http://babel.pocoo.org/en/latest/>`_ to extract messages and maintain the catalog files.  It is integrated in ``setup.py``: Submit a pull request from your branch to the respective branch (``master`` or ``X.Y``). Test, test, test. Testing is best done through ``tox``, which provides a number of targets and allows testing against multiple different Python environments: Tests that need a ``sphinx-build`` run should be integrated in one of the existing test modules if possible.  New tests that to ``@with_app`` and then ``build_all`` for a few assertions are not good since *the test suite should not take more than a minute to run*. The Sphinx core messages can also be translated on `Transifex <https://www.transifex.com/>`_.  There exists a client tool named ``tx`` in the Python package "transifex_client", which can be used to pull translations in ``.po`` format from Transifex.  To do this, go to ``sphinx/locale`` and then run ``tx pull -f -l LANG`` where LANG is an existing language identifier.  It is good practice to run ``python setup.py update_catalog`` afterwards to make sure the ``.po`` file has the canonical Babel formatting. The Sphinx source code is managed using Git and is hosted on GitHub. The core developers of Sphinx have write access to the main repository.  They can commit changes, accept/reject pull requests, and manage items on the issue tracker. The following are some general guidelines for core developers: The parts of messages in Sphinx that go into builds are translated into several locales.  The translations are kept as gettext ``.po`` files translated from the master template ``sphinx/locale/sphinx.pot``. The recommended way for new contributors to submit code to Sphinx is to fork the repository on GitHub and then submit a pull request after committing the changes.  The pull request will then need to be approved by one of the core developers before it is merged into the main repository. The warnings are displayed by default. You can turn off display of these warnings with: There are a couple reasons that code in Sphinx might be deprecated: These are the basic steps needed to start developing on Sphinx. This document describes the development process of Sphinx, a documentation system used by developers to document systems used by other developers to develop other systems that may also be documented using Sphinx. This is not necessary for unit testing, thanks to ``tox``, but it is necessary if you wish to run ``sphinx-build`` locally or run unit tests without the help of ``tox``. :: Thus, when adding a ``RemovedInSphinxXXWarning`` you need to eliminate or silence any warnings generated when running the tests. To build the documentation in multiple formats:: To build the documentation:: To list all possible targets:: To run JavaScript tests with `Karma <https://karma-runner.github.io>`_, execute the following commands (requires `Node.js <https://nodejs.org>`_):: To run code style and type checks:: To run unit tests for a specific Python version and turn on deprecation warnings on so they're shown in the test output:: To run unit tests for a specific Python version, such as 3.6:: Trivial changes can be committed directly but be sure to keep the repository in a good working state and that all tests pass before pushing your changes. Try to use the same code style as used in the rest of the project.  See the `Pocoo Styleguide`__ for more information. Unit Testing Use ``node.pformat()`` and ``node.asdom().toxml()`` to generate a printable representation of the document structure. Use ``python setup.py compile_catalog`` to compile the ``.po`` files to binary ``.mo`` files and ``.js`` files. Use ``python setup.py extract_messages`` to update the ``.pot`` template. Use ``python setup.py update_catalog`` to update all existing language catalogs in ``sphinx/locale/*/LC_MESSAGES`` with the current messages in the template file. Use the :option:`sphinx-build -P` option to run ``pdb`` on exceptions. Wait for a core developer to review your changes. When a new locale is submitted, add a new directory with the ISO 639-1 language identifier and put ``sphinx.po`` in there.  Don't forget to update the possible values for :confval:`language` in ``doc/config.rst``. When adding a new configuration variable, be sure to document it and update :file:`sphinx/cmd/quickstart.py` if it's important enough. When an updated ``.po`` file is submitted, run compile_catalog to commit both the source and the compiled catalogs. When committing code written by someone else, please attribute the original author in the commit message and any relevant :file:`CHANGES` entry. Where ``X.Y.Z`` is the ``MAJOR.MINOR.PATCH`` release.  Only backwards-compatible bug fixes are allowed. In Sphinx project, PATCH version is used for urgent bug fix. Where ``X.Y`` is the ``MAJOR.MINOR`` release.  Used to maintain current MINOR release. All changes are allowed if the change preserves backwards-compatibility of API and features. Write a test which shows that the bug was fixed or that the feature works as expected. You can also test by installing dependencies in your local environment. :: You do not need to be a core developer or have write access to be involved in the development of Sphinx.  You can submit patches or create pull requests from forked repositories and have a core developer add the changes for you. ``MAJOR.MINOR.PATCH`` branch will be branched from the ``v`` prefixed release tag (ex. make 2.3.1 that branched from v2.3.0) when a urgent release is needed. When new PATCH version is released, the branch will be deleted and replaced by an equivalent tag (ex. v2.3.1). ``PYTHONWARNINGS= make html`` (Linux/Mac) ``X.Y.Z`` ``X.Y`` ``export PYTHONWARNINGS=`` and do ``make html`` (Linux/Mac) ``master`` ``set PYTHONWARNINGS=`` and do ``make html`` (Windows) ``sphinx.testing`` as a experimental. git clone git://github.com/sphinx-doc/sphinx sphinx-dev <sphinx-dev@googlegroups.com> sphinx-users <sphinx-users@googlegroups.com> would close issue #42. Project-Id-Version: Sphinx 2.1.0+/1499a97c2
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
 #sphinx-doc on irc.freenode.net Abstract Add appropriate unit tests. Arguments to ``pytest`` can be passed via ``tox``, e.g. in order to run a particular test:: As the :ref:`deprecation-policy` describes, the first release of Sphinx that deprecates a feature (``A.B``) should raise a ``RemovedInSphinxXXWarning`` (where ``XX`` is the Sphinx version where the feature will be removed) when the deprecated feature is invoked. Assuming we have good test coverage, these warnings are converted to errors when running the test suite with warnings enabled:: 分支模型 错误报告和功能请求 Check for open issues or open a fresh issue to start a discussion around a feature idea or a bug. 签出适当的分支。 将分叉的存储库克隆到您的计算机。 :: 编码指南 Community 为Sphinx做贡献 核心开发人员 创建一个新的工作分支。选择您喜欢的任何名称。 :: 在GitHub上创建一个帐户。 调试技巧 Delete the build cache before building documents if you make changes in the code by running the command ``make clean`` or using the :option:`sphinx-build -E` option. 弃用某个功能 弃用政策 Development for MAJOR version. All changes including incompatible behaviors and public API updates are allowed. For bug fixes, first add a test that fails without your changes and passes after they are applied. For bug reports, please include the output produced during the build process and also the log file Sphinx creates after it encounters an unhandled exception.  The location of this file should be shown towards the end of the error message. For changes that preserves backwards-compatibility of API and features, they should be included in the next MINOR release, use the ``X.Y`` branch. :: 例如:: For incompatible or other substantial changes that should wait until the next MAJOR release, use the ``master`` branch. For non-trivial changes, please update the :file:`CHANGES` file.  If your changes alter existing behavior, please document this. 有关使用代码的提示，请参阅 `Coding Guide`_. For urgent release, a new PATCH branch must be branched from the newest release tag (see `Branch Model`_ for detail). Fork `the repository`_ on GitHub to start making your changes to the ``master`` branch for next MAJOR version, or ``X.Y`` branch for next MINOR version (see `Branch Model`_). Fork the main Sphinx repository (`sphinx-doc/sphinx <https://github.com/sphinx-doc/sphinx>`_) using the GitHub interface. 入门 GitHub recognizes certain phrases that can be used to automatically update the issue tracker. 黑客，破解，破解。 How to use pytest fixtures that are provided by ``sphinx.testing``? You can require ``'sphinx.testing.fixtures'`` in your test modules or ``conftest.py`` files like this:: IRC channel for development questions and user support. If a feature has been improved or modified in a backwards-incompatible way, the old feature or behavior will be deprecated. If you feel uncomfortable or uncertain about an issue or your changes, feel free to email the *sphinx-dev* mailing list. If you have encountered a problem with Sphinx or have an idea for a new feature, please submit it to the `issue tracker`_ on GitHub or discuss it on the `sphinx-dev`_ mailing list. If you want to know more detailed usage, please refer to ``tests/conftest.py`` and other ``test_*.py`` files under ``tests`` directory. Including or providing a link to the source files involved may help us fix the issue.  If possible, try to create a minimal project that produces the error and post that instead. JavaScript stemming algorithms in ``sphinx/search/*.py`` (except ``en.py``) are generated by this `modified snowballcode generator <https://github.com/shibukawa/snowball>`_. Generated `JSX <https://jsx.github.io/>`_ files are in `this repository <https://github.com/shibukawa/snowball-stemmer.jsx>`_. You can get the resulting JavaScript files using the following command:: 区域设置更新 MAJOR and MINOR releases may deprecate certain features from previous releases. If a feature is deprecated in a release A.x, it will continue to work in all A.x.x versions (for all versions of x). It will continue to work in all B.x.x versions but raise deprecation warnings. Deprecated features will be removed at the C.0.0. It means the deprecated feature will work during 2 MAJOR releases at least. Mailing list for development related discussions. Mailing list for user support. New features should be documented.  Include examples and use cases where appropriate.  If possible, include a sample that is displayed in the generated output. New unit tests should be included in the ``tests`` directory where necessary: Only the most recent ``MAJOR.MINOR`` branch is currently retained. When a new MAJOR version is released, the old ``MAJOR.MINOR`` branch will be deleted and replaced by an equivalent tag. Please add a bullet point to :file:`CHANGES` if the fix or feature is not trivial (small doc updates, typo fixes).  Then commit:: Prior to Sphinx - 1.5.2, Sphinx was running the test with nose. Push changes in the branch to your forked repository on GitHub. :: Questionable or extensive changes should be submitted as a pull request instead of being committed directly to the main repository.  The pull request should be reviewed by another core developer before it is merged. Send a pull request and bug the maintainer until it gets merged and published. Make sure to add yourself to AUTHORS_ and the change to CHANGES_. Set the configuration variable :confval:`keep_warnings` to ``True`` so warnings will be displayed in the generated output. Set the configuration variable :confval:`nitpicky` to ``True`` so that Sphinx will complain about references without a known target. Set the debugging options in the `Docutils configuration file <http://docutils.sourceforge.net/docs/user/config.html>`_. 设置虚拟环境。 So, for example, if we decided to start the deprecation of a function in Sphinx 2.x: Sometimes Sphinx will include a backport of a Python library that's not included in a version of Python that Sphinx currently supports. When Sphinx no longer needs to support the older version of Python that doesn't include the library, the library will be deprecated in Sphinx. Sphinx 2.x will contain a backwards-compatible replica of the function which will raise a ``RemovedInSphinx40Warning``. Sphinx 3.x will still contain the backwards-compatible replica. Sphinx 4.0 will remove the feature outright. Sphinx开发人员指南 Sphinx采用语义版本2.0.0 (refs: https://semver.org/ ). Sphinx还运行JavaScript测试。 Sphinx has been tested with pytest runner. Sphinx developers write unit tests using pytest notation. Utility functions and pytest fixtures for testing are provided in ``sphinx.testing``. If you are a developer of Sphinx extensions, you can write unit tests with using pytest. At this time, ``sphinx.testing`` will help your test implementation. Sphinx project uses following branches for developing that conforms to Semantic Versioning 2.0.0 (refs: https://semver.org/ ). Sphinx uses `Babel <http://babel.pocoo.org/en/latest/>`_ to extract messages and maintain the catalog files.  It is integrated in ``setup.py``: Submit a pull request from your branch to the respective branch (``master`` or ``X.Y``). 测试，测试，测试。 Testing is best done through ``tox``, which provides a number of targets and allows testing against multiple different Python environments: Tests that need a ``sphinx-build`` run should be integrated in one of the existing test modules if possible.  New tests that to ``@with_app`` and then ``build_all`` for a few assertions are not good since *the test suite should not take more than a minute to run*. The Sphinx core messages can also be translated on `Transifex <https://www.transifex.com/>`_.  There exists a client tool named ``tx`` in the Python package "transifex_client", which can be used to pull translations in ``.po`` format from Transifex.  To do this, go to ``sphinx/locale`` and then run ``tx pull -f -l LANG`` where LANG is an existing language identifier.  It is good practice to run ``python setup.py update_catalog`` afterwards to make sure the ``.po`` file has the canonical Babel formatting. The Sphinx source code is managed using Git and is hosted on GitHub. The core developers of Sphinx have write access to the main repository.  They can commit changes, accept/reject pull requests, and manage items on the issue tracker. The following are some general guidelines for core developers: The parts of messages in Sphinx that go into builds are translated into several locales.  The translations are kept as gettext ``.po`` files translated from the master template ``sphinx/locale/sphinx.pot``. The recommended way for new contributors to submit code to Sphinx is to fork the repository on GitHub and then submit a pull request after committing the changes.  The pull request will then need to be approved by one of the core developers before it is merged into the main repository. The warnings are displayed by default. You can turn off display of these warnings with: There are a couple reasons that code in Sphinx might be deprecated: These are the basic steps needed to start developing on Sphinx. This document describes the development process of Sphinx, a documentation system used by developers to document systems used by other developers to develop other systems that may also be documented using Sphinx. This is not necessary for unit testing, thanks to ``tox``, but it is necessary if you wish to run ``sphinx-build`` locally or run unit tests without the help of ``tox``. :: Thus, when adding a ``RemovedInSphinxXXWarning`` you need to eliminate or silence any warnings generated when running the tests. 以多种方式构建文档 formats:: 建立 documentation:: 列出所有可能的 targets:: To run JavaScript tests with `Karma <https://karma-runner.github.io>`_, execute the following commands (requires `Node.js <https://nodejs.org>`_):: 运行代码样式和类型 checks:: To run unit tests for a specific Python version and turn on deprecation warnings on so they're shown in the test output:: 为特定的Python版本运行单元测试，例如 3.6:: Trivial changes can be committed directly but be sure to keep the repository in a good working state and that all tests pass before pushing your changes. Try to use the same code style as used in the rest of the project.  See the `Pocoo Styleguide`__ for more information. 单元测试 Use ``node.pformat()`` and ``node.asdom().toxml()`` to generate a printable representation of the document structure. Use ``python setup.py compile_catalog`` to compile the ``.po`` files to binary ``.mo`` files and ``.js`` files. Use ``python setup.py extract_messages`` to update the ``.pot`` template. Use ``python setup.py update_catalog`` to update all existing language catalogs in ``sphinx/locale/*/LC_MESSAGES`` with the current messages in the template file. Use the :option:`sphinx-build -P` option to run ``pdb`` on exceptions. Wait for a core developer to review your changes. When a new locale is submitted, add a new directory with the ISO 639-1 language identifier and put ``sphinx.po`` in there.  Don't forget to update the possible values for :confval:`language` in ``doc/config.rst``. When adding a new configuration variable, be sure to document it and update :file:`sphinx/cmd/quickstart.py` if it's important enough. When an updated ``.po`` file is submitted, run compile_catalog to commit both the source and the compiled catalogs. When committing code written by someone else, please attribute the original author in the commit message and any relevant :file:`CHANGES` entry. Where ``X.Y.Z`` is the ``MAJOR.MINOR.PATCH`` release.  Only backwards-compatible bug fixes are allowed. In Sphinx project, PATCH version is used for urgent bug fix. Where ``X.Y`` is the ``MAJOR.MINOR`` release.  Used to maintain current MINOR release. All changes are allowed if the change preserves backwards-compatibility of API and features. Write a test which shows that the bug was fixed or that the feature works as expected. 您还可以通过在本地环境中安装依赖项来进行测试。 :: You do not need to be a core developer or have write access to be involved in the development of Sphinx.  You can submit patches or create pull requests from forked repositories and have a core developer add the changes for you. ``MAJOR.MINOR.PATCH`` branch will be branched from the ``v`` prefixed release tag (ex. make 2.3.1 that branched from v2.3.0) when a urgent release is needed. When new PATCH version is released, the branch will be deleted and replaced by an equivalent tag (ex. v2.3.1). ``PYTHONWARNINGS= make html`` (Linux/Mac) ``X.Y.Z`` ``X.Y`` ``export PYTHONWARNINGS=`` and do ``make html`` (Linux/Mac) ``master`` ``set PYTHONWARNINGS=`` and do ``make html`` (Windows) ``sphinx.testing`` 作为实验. git clone git://github.com/sphinx-doc/sphinx sphinx-dev <sphinx-dev@googlegroups.com> sphinx-users <sphinx-users@googlegroups.com> would close issue #42. 