import re
from pathlib import Path

from xonsh.dirstack import _change_working_directory
from xonsh.completers.tools import *

__all__ = ()

GIT_REGEX = re.compile("(github.com)?[/|:]?([A-Za-z-_0-9]+)/([A-Za-z-_0-9]+)")

def _clone_or_cd(args):
    url = args[0]
    match = re.findall(GIT_REGEX, url)
    base, org, repo = match[0]

    home = p"~".expanduser()

    if base:
        base = home / base
        org = base / org
        repo = org / repo

        if repo.exists():
            _change_working_directory(repo.__str__())
        elif org.exists():
            _change_working_directory(org.__str__())
            ![git clone @(url)]
            _change_working_directory(repo.__str__())
        elif base.exists():
            _change_working_directory(base.__str__())
            ![mkdir @(org.name)]
            _change_working_directory(org.__str__())
            ![git clone @(url)]
            _change_working_directory(repo.__str__())
    else:
        ghrepo = home / "github.com" / org / repo
        _change_working_directory(ghrepo)


def _list_repos():
    p = p"~/github.com".expanduser()

    return ['/'.join(repo.parts[-2:]) for repo in p.glob('*/*') if repo.is_dir()]



@contextual_completer
def _complete_git(context):
    if (context.command.args and context.command.args[0].value == "g" and context.command.arg_index == 1):
        if context.command.prefix:
            return {RichCompletion(match, description="hi") for match in _list_repos()
                        if match.startswith(context.command.prefix)}
        else:
            return {RichCompletion(repo) for repo in _list_repos()}


aliases['g'] = _clone_or_cd

__xonsh__.completers["githelp"] = _complete_git
__xonsh__.completers.move_to_end("githelp", last=False)
