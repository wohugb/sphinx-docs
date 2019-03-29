��    K      t              �  �   �  x   �  |   �  ?   |     �     �     �  /   �  �   )  *   �  �   �  �   �  �   e	  �   �	  <   �
  &   �
  �        �  
   �  	   �  D   �  �   :  �   �  �   Y  �   �  b  �  �   ,  �         �  (   �      [   (  >   �  �   �  %   s  �   �  #   \  S   �  #   �  &   �  $     �   D  �   �  �   �  X   s      �  3   �  1   !  #   S     w  �   �  k   @  �   �  u   9  {   �  �   +  �   �  u   �  �     �   �  �  {  !   !     3!  :   M!  6   �!  ,   �!     �!     �!  ,   "  #   ."  4   R"     �"  T   �"  D   �"  �  ;#  �   �$  x   |%  |   �%  ?   r&     �&     �&     �&  /   �&  �   '  *   �'  �   �'  �   �(  �   [)  �   �)  <   �*  &   �*  �   +     �+  
   �+  	   �+  D   �+  �   0,  �   �,  �   O-  �   �-  b  �.  �   "0  �   �0     �1  (   �1    2  [   3  >   z3  �   �3  %   i4  �   �4  #   R5  S   v5  #   �5  &   �5  $   6  �   :6  �   �6  �   �7  X   i8      �8  3   �8  1   9  #   I9     m9  �   �9  k   6:  �   �:  u   /;  {   �;  �   !<  �   �<  u   �=  �   >  �   �>  �  q?  !   A     )A  :   CA  6   ~A  ,   �A     �A     �A  ,   �A  #   $B  4   HB     }B  T   �B  D   �B   (Note that no special ``::`` is used to introduce a doctest block; docutils recognizes them from the leading ``>>>``.  Also, no additional indentation is used, though it doesn't hurt.) *code-output-style* blocks consist of an ordinary piece of Python code, and optionally, a piece of output for that code. *doctest-style* blocks mimic interactive sessions by interleaving Python code (including the interpreter prompt) and output. :mod:`sphinx.ext.doctest` -- Test snippets in the documentation :rst:dir:`doctest` :rst:dir:`testcode` :rst:dir:`testoutput` :rst:dir:`testsetup` and :rst:dir:`testcleanup` A cleanup code block.  This code is not shown in the output for other builders, but executed after the doctests of the group(s) it belongs to. A code block for a code-output-style test. A doctest-style code block.  You can use standard :mod:`doctest` flags for controlling how actual output is compared with what you give as output.  The default set of flags is specified by the :confval:`doctest_default_flags` configuration variable. A list of directories that will be added to :data:`sys.path` when the doctest builder is used.  (Make sure it contains absolute paths.) A setup code block.  This code is not shown in the output for other builders, but executed before the doctests of the group(s) it belongs to. Also, please be aware that since the doctest module does not support mixing regular output and an exception message in the same snippet, this applies to testcode/testoutput as well. Also, you can give inline doctest options, like in doctest:: By default, these options are enabled: Code in a ``testcode`` block is always executed all at once, no matter how many statements it contains.  Therefore, output will *not* be generated for bare expressions -- use ``print``.  Example:: Configuration Directives Example:: Here's an example which skips some tests if Pandas is not installed: If this is a nonempty string (the default is ``'default'``), standard reST doctest blocks will be tested too.  They will be assigned to the group name given. If this value is left at its default value, the above snippet is interpreted by the doctest builder exactly like the following:: Instead of repeating an expression, the :confval:`doctest_global_setup` configuration option can be used to assign it to a variable which can then be used instead. Note that like with standard doctests, you have to use ``<BLANKLINE>`` to signal a blank line in the expected output.  The ``<BLANKLINE>`` is removed when building presentation output (HTML, LaTeX etc.). Note though that you can't have blank lines in reST doctest blocks.  They will be interpreted as one block ending and another one starting.  Also, removal of ``<BLANKLINE>`` and ``# doctest:`` options only works in :rst:dir:`doctest` blocks, though you may set :confval:`trim_doctest_flags` to achieve that in all code blocks with Python console content. Python code that is treated like it were put in a ``testcleanup`` directive for *every* file that is tested, and for every group.  You can use this to e.g. remove any temporary files that the tests leave behind. Python code that is treated like it were put in a ``testsetup`` directive for *every* file that is tested, and for every group.  You can use this to e.g. import modules you will always need in your doctests. Skipping tests conditionally Supported PEP-440 operands and notations The *group* argument below is interpreted as follows: if it is empty, the block is assigned to the group named ``default``.  If it is ``*``, the block is assigned to all groups (including the ``default`` group).  Otherwise, it must be a comma-separated list of group names. The corresponding output, or the exception message, for the last :rst:dir:`testcode` block. The doctest extension uses the following configuration values: The following is an example for the usage of the directives.  The test via :rst:dir:`doctest` and the test via :rst:dir:`testcode` and :rst:dir:`testoutput` are equivalent. :: The following operands are supported: The value of the ``skipif`` option is evaluated as a Python expression. If the result is a true value, the directive is omitted from the test run just as if it wasn't present in the file at all. There are two kinds of test blocks: They will be respected when the test is run, but stripped from presentation output. This directive supports one option: This directive supports three options: This directive supports two options: This extension allows you to test snippets in the documentation in a natural way.  It works by collecting specially-marked up code blocks and running them as doctest tests. This feature makes it easy for you to test doctests in docstrings included with the :mod:`~sphinx.ext.autodoc` extension without marking them up with a special directive. When building the docs with the ``doctest`` builder, groups are collected for each document and run one after the other, first executing setup code blocks, then the test blocks in the order they appear in the file. Within one document, test code is partitioned in *groups*, where each group consists of: ``!=``: Version exclusion clause ``<=``, ``>=``: Inclusive ordered comparison clause ``<``, ``>``: Exclusive ordered comparison clause ``===``: Arbitrary equality clause. ``==``: Version matching clause ``DONT_ACCEPT_TRUE_FOR_1``, rejecting "True" in the output where "1" is given -- the default behavior of accepting this substitution is a relic of pre-Python 2.2 times. ``ELLIPSIS``, allowing you to put ellipses in the expected output that match anything in the actual output; ``IGNORE_EXCEPTION_DETAIL``, causing everything following the leftmost colon and any module information in the exception name to be ignored; ``hide``, a flag option, hides the code block in other builders.  By default it is shown as a highlighted code block. ``hide``, a flag option, hides the doctest block in other builders.  By default it is shown as a highlighted doctest block. ``hide``, a flag option, hides the output block in other builders.  By default it is shown as a literal block without highlighting. ``options``, a string option, can be used to give a comma-separated list of doctest flags that apply to each example in the tests.  (You still can give explicit flags per example, with doctest comments, but they will show up in other builders too.) ``options``, a string option, can be used to give doctest flags (comma-separated) just like in normal doctest blocks. ``pyversion`` option is followed `PEP-440: Version Specifiers <https://www.python.org/dev/peps/pep-0440/#version-specifiers>`__. ``pyversion``, a string option, can be used to specify the required Python version for the example to be tested. For instance, in the following case the example will be tested only for Python versions greater than 3.3:: ``skipif``, a string option, can be used to skip directives conditionally. This may be useful e.g. when a different set of tests should be run depending on the environment (hardware, network/VPN, optional dependencies or different versions of dependencies). The ``skipif`` option is supported by all of the doctest directives. Below are typical use cases for ``skipif`` when used for different directives: ``~=``: Compatible release clause conditionally skip a test conditionally skip both a test and its output verification conditionally skip output assertion for a skipped test conditionally skip test setup and/or cleanup conf.py contents.rst customize setup/cleanup code per environment customize test code per environment expect different output depending on the environment one or more *test* blocks reST doctest blocks are simply doctests put into a paragraph of their own, like so:: zero or more *setup code* blocks (e.g. importing the module to test) Project-Id-Version: Sphinx 2.1.0+/1499a97c2
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
 (Note that no special ``::`` is used to introduce a doctest block; docutils recognizes them from the leading ``>>>``.  Also, no additional indentation is used, though it doesn't hurt.) *code-output-style* blocks consist of an ordinary piece of Python code, and optionally, a piece of output for that code. *doctest-style* blocks mimic interactive sessions by interleaving Python code (including the interpreter prompt) and output. :mod:`sphinx.ext.doctest` -- Test snippets in the documentation :rst:dir:`doctest` :rst:dir:`testcode` :rst:dir:`testoutput` :rst:dir:`testsetup` and :rst:dir:`testcleanup` A cleanup code block.  This code is not shown in the output for other builders, but executed after the doctests of the group(s) it belongs to. A code block for a code-output-style test. A doctest-style code block.  You can use standard :mod:`doctest` flags for controlling how actual output is compared with what you give as output.  The default set of flags is specified by the :confval:`doctest_default_flags` configuration variable. A list of directories that will be added to :data:`sys.path` when the doctest builder is used.  (Make sure it contains absolute paths.) A setup code block.  This code is not shown in the output for other builders, but executed before the doctests of the group(s) it belongs to. Also, please be aware that since the doctest module does not support mixing regular output and an exception message in the same snippet, this applies to testcode/testoutput as well. Also, you can give inline doctest options, like in doctest:: By default, these options are enabled: Code in a ``testcode`` block is always executed all at once, no matter how many statements it contains.  Therefore, output will *not* be generated for bare expressions -- use ``print``.  Example:: Configuration Directives Example:: Here's an example which skips some tests if Pandas is not installed: If this is a nonempty string (the default is ``'default'``), standard reST doctest blocks will be tested too.  They will be assigned to the group name given. If this value is left at its default value, the above snippet is interpreted by the doctest builder exactly like the following:: Instead of repeating an expression, the :confval:`doctest_global_setup` configuration option can be used to assign it to a variable which can then be used instead. Note that like with standard doctests, you have to use ``<BLANKLINE>`` to signal a blank line in the expected output.  The ``<BLANKLINE>`` is removed when building presentation output (HTML, LaTeX etc.). Note though that you can't have blank lines in reST doctest blocks.  They will be interpreted as one block ending and another one starting.  Also, removal of ``<BLANKLINE>`` and ``# doctest:`` options only works in :rst:dir:`doctest` blocks, though you may set :confval:`trim_doctest_flags` to achieve that in all code blocks with Python console content. Python code that is treated like it were put in a ``testcleanup`` directive for *every* file that is tested, and for every group.  You can use this to e.g. remove any temporary files that the tests leave behind. Python code that is treated like it were put in a ``testsetup`` directive for *every* file that is tested, and for every group.  You can use this to e.g. import modules you will always need in your doctests. Skipping tests conditionally Supported PEP-440 operands and notations The *group* argument below is interpreted as follows: if it is empty, the block is assigned to the group named ``default``.  If it is ``*``, the block is assigned to all groups (including the ``default`` group).  Otherwise, it must be a comma-separated list of group names. The corresponding output, or the exception message, for the last :rst:dir:`testcode` block. The doctest extension uses the following configuration values: The following is an example for the usage of the directives.  The test via :rst:dir:`doctest` and the test via :rst:dir:`testcode` and :rst:dir:`testoutput` are equivalent. :: The following operands are supported: The value of the ``skipif`` option is evaluated as a Python expression. If the result is a true value, the directive is omitted from the test run just as if it wasn't present in the file at all. There are two kinds of test blocks: They will be respected when the test is run, but stripped from presentation output. This directive supports one option: This directive supports three options: This directive supports two options: This extension allows you to test snippets in the documentation in a natural way.  It works by collecting specially-marked up code blocks and running them as doctest tests. This feature makes it easy for you to test doctests in docstrings included with the :mod:`~sphinx.ext.autodoc` extension without marking them up with a special directive. When building the docs with the ``doctest`` builder, groups are collected for each document and run one after the other, first executing setup code blocks, then the test blocks in the order they appear in the file. Within one document, test code is partitioned in *groups*, where each group consists of: ``!=``: Version exclusion clause ``<=``, ``>=``: Inclusive ordered comparison clause ``<``, ``>``: Exclusive ordered comparison clause ``===``: Arbitrary equality clause. ``==``: Version matching clause ``DONT_ACCEPT_TRUE_FOR_1``, rejecting "True" in the output where "1" is given -- the default behavior of accepting this substitution is a relic of pre-Python 2.2 times. ``ELLIPSIS``, allowing you to put ellipses in the expected output that match anything in the actual output; ``IGNORE_EXCEPTION_DETAIL``, causing everything following the leftmost colon and any module information in the exception name to be ignored; ``hide``, a flag option, hides the code block in other builders.  By default it is shown as a highlighted code block. ``hide``, a flag option, hides the doctest block in other builders.  By default it is shown as a highlighted doctest block. ``hide``, a flag option, hides the output block in other builders.  By default it is shown as a literal block without highlighting. ``options``, a string option, can be used to give a comma-separated list of doctest flags that apply to each example in the tests.  (You still can give explicit flags per example, with doctest comments, but they will show up in other builders too.) ``options``, a string option, can be used to give doctest flags (comma-separated) just like in normal doctest blocks. ``pyversion`` option is followed `PEP-440: Version Specifiers <https://www.python.org/dev/peps/pep-0440/#version-specifiers>`__. ``pyversion``, a string option, can be used to specify the required Python version for the example to be tested. For instance, in the following case the example will be tested only for Python versions greater than 3.3:: ``skipif``, a string option, can be used to skip directives conditionally. This may be useful e.g. when a different set of tests should be run depending on the environment (hardware, network/VPN, optional dependencies or different versions of dependencies). The ``skipif`` option is supported by all of the doctest directives. Below are typical use cases for ``skipif`` when used for different directives: ``~=``: Compatible release clause conditionally skip a test conditionally skip both a test and its output verification conditionally skip output assertion for a skipped test conditionally skip test setup and/or cleanup conf.py contents.rst customize setup/cleanup code per environment customize test code per environment expect different output depending on the environment one or more *test* blocks reST doctest blocks are simply doctests put into a paragraph of their own, like so:: zero or more *setup code* blocks (e.g. importing the module to test) 