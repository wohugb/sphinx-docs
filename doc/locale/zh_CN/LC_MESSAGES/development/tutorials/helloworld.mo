��    '      T              �  K   �  }   �  P   W  /   �  $   �  2   �     0  S   =     �  <   �  �   �  >   p  :   �     �     �  ^     �   `          $  }   8  �   �      U    v  p  �	  v   �
  P   n  N   �  [        j  �   ~  �   G  5     �   :  �        �  5   �  J     7   g  �  �  G   '  n   o  X   �  9   7  !   q  /   �     �  K   �       4   $  z   Y  ?   �  2        G     N  Y   [  �   �     N  	   e  e   o  y   �     O  �   i    i  ^   �  D   �  .   )  V   X     �  �   �  �   I  :     �   @  �        �  2   �  <     /   I   A ``helloworld`` directive, that will simply output the text "hello world". Add the :file:`_ext` directory to the `Python path`_ using ``sys.path.append``. This should be placed at the top of the file. Create a new Python file in the :file:`_ext` folder called :file:`helloworld.py` Create an :file:`_ext` folder in :file:`source` Developing a "Hello world" extension For a more advanced example, refer to :doc:`todo`. For example: For this extension, you will need some basic understanding of docutils_ and Python. Further reading Here is an example of the folder structure you might obtain: Only basic information is provided in this tutorial. For more information, refer to the :doc:`other tutorials <index>` that go into more details. Open :file:`helloworld.py` and paste the following code in it: Our new directive is declared in the ``HelloWorld`` class. Overview Prerequisites Some essential things are happening in this example, and you will see them for all directives. The ``nodes.paragraph`` class creates a new paragraph node. A paragraph node typically contains some text that we can set during instantiation using the ``text`` parameter. The ``setup`` function The directive class The extension has to be declared in your :file:`conf.py` file to make Sphinx aware of it. There are two steps necessary here: The objective of this tutorial is to create a very basic extension that adds a new directive. This directive will output a paragraph containing "hello world". The sample above would generate: The simplest thing you can do it call the :meth:`~Sphinx.add_directive` method, which is what we've done here. For this particular call, the first argument is the name of the directive itself as used in a reST file. In this case, we would use ``helloworld``. For example: This class contains a ``run`` method.  This method is a requirement and it is part of every directive.  It contains the main logic of the directive and it returns a list of docutils nodes to be processed by Sphinx. These nodes are docutils' way of representing the content of a document. There are many types of nodes available: text, paragraph, reference, table, etc. This class extends the docutils_' ``Directive`` class. All extensions that create directives should extend this class. This function is a requirement. We use it to plug our new directive into Sphinx. This is the very basic principle of an extension that creates a new directive. Update or create the :confval:`extensions` list and add the extension file name to the list Using the extension We also return the :ref:`extension metadata <ext-metadata>` that indicates the version of our extension, along with the fact that it is safe to use the extension for both parallel reading and writing. We assume you are using separate source (:file:`source`) and build (:file:`build`) folders. Your extension file could be in any folder of your project. In our case, let's do the following: We want the extension to add the following to Sphinx: We will not be distributing this plugin via `PyPI`_ and will instead include it as part of an existing project. This means you will need to use an existing project or create a new one using :program:`sphinx-quickstart`. We're not distributing this extension as a `Python package`_, we need to modify the `Python path`_ so Sphinx can find our extension. This is why we need the call to ``sys.path.append``. Writing the extension You can now use the extension in a file. For example: `The docutils documentation on creating directives <docutils directives>`_ `The docutils documentation on nodes <docutils nodes>`_ Project-Id-Version: Sphinx 2.1.0+/1499a97c2
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
 一个 ``helloworld`` 指令,它将简单地输出文本 "hello world". 使用 ``sys.path.append`` 将 :file:`_ext` 目录添加到 `Python path`_ 中.这应该放在文件的顶部. 在 :file:`_ext` 文件夹中创建一个名为 :file:`helloworld.py` 的新Python文件 在 :file:`source` 中创建一个 :file:`_ext` 文件夹 开发一个 "Hello world" 扩展 有关更高级的示例,请参阅 :doc:`todo`. 例如: 对于此扩展,您需要对 docutils_ 和 Python 有一些基本的了解. 延伸阅读 以下是您可能获得的文件夹结构的示例: 本教程仅提供基本信息.有关更多信息,请参阅 :doc:`other tutorials <index>`,其中包含更多详细信息. 打开 :file:`helloworld.py` 并将以下代码粘贴到其中: 我们的新指令在 ``HelloWorld`` 类中声明. 概述 预备条件 在这个例子中发生了一些重要的事情,你将看到它们适用于所有指令. ``nodes.paragraph`` 类创建一个新的段落节点.段落节点通常包含一些我们可以在实例化期间使用 ``text`` 参数设置的文本. The ``setup`` function 指令类 扩展必须在你的 :file:`conf.py` 文件中声明,以使Sphinx意识到它.这里有两个步骤: 本教程的目标是创建一个添加新指令的基本扩展.该指令将输出一个包含“hello world”的段落. 上面的示例将生成: 你能做到的最简单的事就是调用 :meth:`~Sphinx.add_directive` 方法,这就是我们在这里所做的.对于此特定调用,第一个参数是reST文件中使用的指令本身的名称.在这种情况下,我们将使用 ``helloworld``.例如: 该类包含一个 ``run`` 方法.此方法是一项要求,它是每个指令的一部分.它包含指令的主要逻辑,并返回Sphinx要处理的docutils节点列表.这些节点是docutils表示文档内容的方式.有许多类型的节点可用: 文本,段落,参考,表格等. 这个类扩展了 docutils_' ``Directive`` 类.创建指令的所有扩展都应扩展此类. 此功能是必需的.我们用它将我们的新指令插入Sphinx. 这是创建新指令的扩展的基本原则. 更新或创建 :confval:`extensions` 列表并将扩展名文件名添加到列表中 使用扩展 我们还返回 :ref:`扩展元数据 <ext-metadata>`,它表示扩展的版本,以及使用扩展进行并行读写的安全性这一事实. 我们假设您使用单独的源(:file:`source`)和build(:file:`build`)文件夹.您的扩展文件可以位于项目的任何文件夹中.在我们的例子中,让我们做以下事情: 我们希望扩展程序将以下内容添加到Sphinx中: 我们不会通过 `PyPI`_ 分发这个插件,而是将其作为现有项目的一部分包含在内.这意味着您将需要使用现有项目或使用 :program:`sphinx-quickstart` 创建一个新项目. 我们不是将这个扩展名分发为 `Python package`_,我们需要修改 `Python path`_,以便Sphinx可以找到我们的扩展.这就是我们需要调用 ``sys.path.append`` 的原因. 编写扩展 您现在可以在文件中使用扩展名.例如: `关于创建指令的docutils文档 <docutils directives>`_ `节点 <docutils nodes>`_ 上的docutils文档 