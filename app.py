from bottle import route, run, template
import json

historico_mensagens = []

@route('/hello/<name>')
def index(name):

    info = json.loads(name)
    cl = info['cliente']
    msg = info['mensagem']
    
    historico_mensagens.append({'cl': cl, 'msg': msg})
    
    msgs = {
            'title': 'Chat',
            'content': historico_mensagens
            }

    return template('template.tpl', msgs)

run(host='localhost', port=8080)
