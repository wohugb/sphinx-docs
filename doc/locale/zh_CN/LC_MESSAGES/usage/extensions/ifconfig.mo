��          T               �   D   �      �   �   �   �   �  @   x  �   �  �  Q  6   �       �   +  �   �  .   �  �   �   :mod:`sphinx.ext.ifconfig` -- Include content based on configuration For example, one could write :: Include content of the directive only if the Python expression given as an argument is ``True``, evaluated in the namespace of the project's configuration (that is, all registered variables from :file:`conf.py` are available). The second argument is the default value, the third should always be ``'env'`` for such values (it selects if Sphinx re-reads the documents if the value changes). This extension is quite simple, and features only one directive: To make a custom config value known to Sphinx, use :func:`~sphinx.application.Sphinx.add_config_value` in the setup function in :file:`conf.py`, e.g.:: Project-Id-Version: Sphinx 2.1.0+/1499a97c2
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
 :mod:`sphinx.ext.ifconfig` -- 根据配置包含内容 例如，人们可以写:: 仅当作为参数给出的Python表达式为 ``True`` 时，才包含该指令的内容，在项目配置的命名空间中进行评估(即，所有已注册的变量来自 :file:`conf.py` 都可用)。 第二个参数是默认值，第三个参数应始终为 ``'env'`` 这些值(如果值发生变化，它会选择Sphinx是否重新读取文档)。 这个扩展非常简单，只有一个指令: 要使Sphinx知道自定义配置值，请在 :file:`conf.py` 的设置函数中使用 :func:`~sphinx.application.Sphinx.add_config_value`  ，例如:: 