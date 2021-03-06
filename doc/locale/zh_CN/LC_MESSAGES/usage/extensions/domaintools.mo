��          �               �  �   �  L   ]  A   �     �  3   �  A   '     i     �  ]   �  B   �     /     <     D  	   U  L   _     �  J   �  w   �  �   u  ;     U   R  P   �  +   �  *   %     P  |  W  �   �  K   X	  .   �	     �	  -   �	  G   
     P
  	   f
  W   p
  B   �
       	             2  T   9     �  J   �  i   �  �   J  9   �  V   "  X   y  0   �             :param name      : short name of your domain (part of directives, e.g. `make`) :param label     : Long name of your domain (e.g. `GNU Make`) :param elements  : A more complex example you can find in `sphinxcontrib-cmakedomain`_ package. An element value is a dictionary with following possible entries: Author ClassName of your new domain (e.g. `GnuMakeDomain`) Complete example you find in `sphinxcontrib.makedomain`_ package. Create a custom domain. Domain Tools For each given element there are created a directive and a role for referencing and indexing. In this example there is created a simple domain for `GNU Make`_:: Installation License New BSD License. Reference This `Sphinx extension`_ provides a tool for easy `sphinx domain`_ creation. Usage `Kay-Uwe (Kiwi) Lorenz <kiwi@franka.dyndns.org>`_ (http://quelltexter.org) `fields` - A list of fields where parsed fields are mapped to. this is passed to Domain as `doc_field_types` parameter. `indextemplate` - e.g. ``pair: %s; Make Target``, where %s will be the matched part of your role.  You may leave this empty, defaults to ``pair: %s; <objname>`` `objname` - Long name of the entry, defaults to entry's key `parse_node` - a function with signature ``(env, sig, signode)``, defaults to `None`. `ref_nodeclass` - class passed as XRefRole's innernodeclass, defaults to `None`. `role` - role name, defaults to entry's key dictionary of your domain directives/roles 参数 Project-Id-Version: Sphinx 2.0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-10 14:45+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 :param name      : 域简称(指令的一部分，例如 `make`) :param label     : 域长名(例如 `GNU Make`) :param elements  : 您可以在 `sphinxcontrib-cmakedomain`_ 包中找到更复杂的示例。 元素值是包含以下可能条目的字典: 作者 您新域的ClassName(例如 `GnuMakeDomain`) 您可以在 `sphinxcontrib.makedomain`_ 包中找到完整的示例。 创建自定义域。 域工具 对于每个给定元素，都创建了一个指令和一个引用和索引的角色。 在这个例子中，为 `GNU Make`_ 创建了一个简单的域:: 安装 许可证 新的BSD许可证。 参考 这个 `Sphinx extension`_ 提供了一个简单的 `sphinx domain`_ 创建工具。 用法 `Kay-Uwe (Kiwi) Lorenz <kiwi@franka.dyndns.org>`_ (http://quelltexter.org) `fields` - 解析字段映射到的字段列表。这将作为 `doc_field_types` 参数传递给Domain。 `indextemplate` - e.g. ``pair: %s; Make Target``, 其中％s将是您角色的匹配部分。 您可以将此保留为空，默认为 ``pair: %s; <objname>`` `objname` - 条目的长名称，默认为条目的密钥 `parse_node` - 带有签名 ``(env，sig，signode)`` 的函数，默认为 `None` 。 `ref_nodeclass` - 作为 XRefRole 的 innernodeclass 传递的类，默认为 `None` 。 `role` - 角色名称，默认为条目的密钥 域指令/角色的字典 参数 