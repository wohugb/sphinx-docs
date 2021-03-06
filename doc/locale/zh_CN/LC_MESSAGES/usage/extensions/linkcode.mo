��          �               �   ?   �      -     ;  z   D  �   �  >   l    �  �   �  /   l  1   �  P   �  J     �  j  <   �     /     6  n   ;  {   �  7   &  �   ^  |   T	  (   �	  *   �	  I   %
  D   o
   :mod:`sphinx.ext.linkcode` -- Add external links to source code Configuration Example: In your configuration, you need to specify a :confval:`linkcode_resolve` function that returns an URL based on the object. The argument ``domain`` specifies the language domain the object is in. ``info`` is a dictionary with the following keys guaranteed to be present (dependent on the domain): The function should return ``None`` if no link is to be added. This extension looks at your object descriptions (``.. class::``, ``.. function::`` etc.) and adds external links to code hosted somewhere on the web. The intent is similar to the ``sphinx.ext.viewcode`` extension, but assumes the source code can be found somewhere on the Internet. This is a function ``linkcode_resolve(domain, info)``, which should return the URL to source code corresponding to the object in given domain with given information. ``c``: ``names`` (list of names for the object) ``cpp``: ``names`` (list of names for the object) ``javascript``: ``object`` (name of the object), ``fullname`` (name of the item) ``py``: ``module`` (name of the module), ``fullname`` (name of the object) Project-Id-Version: Sphinx 2.1.0+/1499a97c2
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
 :mod:`sphinx.ext.linkcode` -- 添加外部链接到源代码 配置 例: 在您的配置中，您需要指定 :confval:`linkcode_resolve` 函数，该函数返回基于对象的URL。 参数 ``domain`` 指定对象所在的语言域。 ``info`` 是一个字典，其中保证存在以下键(取决于域)： 如果不添加链接，该函数应返回“None”。 这个扩展名查看你的对象描述(``class ::`` ， ``.. function ::`` 等)，并在Web上某处托管的代码中添加外部链接。意图类似于 ``sphinx.ext.viewcode`` 扩展，但假设源代码可以在Internet上的某处找到。 这是一个函数 ``linkcode_resolve(domain，info)`` ，它应该返回给定信息给定域中对象的源代码的URL。 ``c``: ``names`` (对象的名称列表) ``cpp``: ``names`` (对象的名称列表) ``javascript``: ``object`` (对象的名称), ``fullname`` (项目名称) ``py``: ``module`` (模块的名称), ``fullname`` (对象的名称) 