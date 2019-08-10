FROM mileschou/lua

LABEL repository="https://github.com/MilesChou/lua-action"
LABEL homepage="https://github.com/MilesChou/lua-action"
LABEL maintainer="MilesChou <jangconan@gmail.com>"

LABEL com.github.actions.name="Lua Action"
LABEL com.github.actions.description="An action for running project with Lua"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="purple"

COPY lua-entrypoint /usr/local/bin/lua-entrypoint

ENTRYPOINT ["/usr/local/bin/lua-entrypoint"]
