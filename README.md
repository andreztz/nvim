## Check Healthy

Ao iniciar pela primeira vez digite:

```
:checkhealth
```

Alguns avisos podem aparecer, é necessário corrigi-los:


```
$ sudo pacman -S prettier stylua xsel
```

Suporte python

```
$ pip install pynvim
```


Para instalar um servidor de liguagem digite:

```
:LspInstallInfo
```



## Exemplo de plugin python

`$ mkdir -p  ~/.local/share/nvim/rplugin/python3`


```python
# python_plugin_example.py
import pynvim

@pynvim.plugin
class TestPlugin(object):

    def __init__(self, nvim):
        self.nvim = nvim

    @pynvim.function('TestFunction', sync=True)
    def testfunction(self, args):
        return 3

    @pynvim.command('TestCommand', nargs='*', range='')
    def testcommand(self, args, range):
        self.nvim.current.line = ('Command with args: {}, range: {}'
                                  .format(args, range))

    @pynvim.autocmd('BufEnter', pattern='*.py', eval='expand("<afile>")', sync=True)
    def on_bufenter(self, filename):
        self.nvim.out_write('testplugin is in ' + filename + '\n')
```


:UpdateRemotePlugins


[pynvim remote-plugins](https://pynvim.readthedocs.io/en/latest/usage/remote-plugins.html)


Baseado em: 

- [Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch)
- [awesome-neovim](https://github.com/rockerBOO/awesome-neovim)
