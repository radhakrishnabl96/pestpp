ptf #
<ParameterList name="Main" type="ParameterList">
  <ParameterList name="mesh" type="ParameterList">
    <ParameterList name="domain" type="ParameterList">
      <Parameter name="mesh type" type="string" value="generate mesh" />
      <Parameter name="build columns from set" type="string" value="surface face" />
      <ParameterList name="generate mesh parameters" type="ParameterList">
        <Parameter name="number of cells" type="Array(int)" value="{1,1,400}" />
        <Parameter name="domain low coordinate" type="Array(double)" value="{ 0, 0, 0}" />
        <Parameter name="domain high coordinate" type="Array(double)" value="{ 1, 1, 40}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="surface" type="ParameterList">
      <Parameter name="mesh type" type="string" value="surface" />
      <ParameterList name="surface parameters" type="ParameterList">
        <Parameter name="surface sideset name" type="string" value="surface face" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="snow" type="ParameterList">
      <Parameter name="mesh type" type="string" value="aliased" />
      <ParameterList name="aliased parameters" type="ParameterList">
        <Parameter name="target" type="string" value="surface" />
      </ParameterList>
    </ParameterList>
  </ParameterList>

  <ParameterList name="regions" type="ParameterList">
    <ParameterList name="domain" type="ParameterList">
      <ParameterList name="region: all" type="ParameterList">
      </ParameterList>
    </ParameterList>
    <ParameterList name="surface domain" type="ParameterList">
      <ParameterList name="region: all" type="ParameterList">
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface domain bedrock" type="ParameterList">
      <ParameterList name="region: box" type="ParameterList">
        <Parameter name="low coordinate" type="Array(double)" value="{ 0, 0, 0}" />
        <Parameter name="high coordinate" type="Array(double)" value="{ 1, 1, 20}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface domain mineral" type="ParameterList">
      <ParameterList name="region: box" type="ParameterList">
        <Parameter name="low coordinate" type="Array(double)" value="{ 0, 0, 20}" />
        <Parameter name="high coordinate" type="Array(double)" value="{ 1, 1, 39.7}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface domain peat" type="ParameterList">
      <ParameterList name="region: box" type="ParameterList">
        <Parameter name="low coordinate" type="Array(double)" value="{ 0, 0, 39.7}" />
        <Parameter name="high coordinate" type="Array(double)" value="{ 1, 1, 40}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="surface face" type="ParameterList">
      <ParameterList name="region: plane" type="ParameterList">
        <Parameter name="point" type="Array(double)" value="{0.5,0.5,40}" />
        <Parameter name="normal" type="Array(double)" value="{ 0, 0, 1}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="bottom face" type="ParameterList">
        <ParameterList name="region: plane" type="ParameterList">
        <Parameter name="point" type="Array(double)" value="{0.5,0.5, 0}" />
        <Parameter name="normal" type="Array(double)" value="{ 0, 0,-1}" />
      </ParameterList>
    </ParameterList>
      
    <ParameterList name="subsurface point -0.01" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,39.99}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -0.04" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,39.96}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -0.1" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,39.9}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -0.2" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,39.8}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -0.4" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,39.6}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -0.8" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,39.2}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -1.2" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,38.8}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -1.6" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,38.4}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -5.0" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,35.0}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -10.0" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,30.0}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -20.0" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,20.0}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -30.0" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,10.0}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point -40.0" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,0.0}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="surface outlet" type="ParameterList">
      <ParameterList name="region: boundary" type="ParameterList">
      </ParameterList>
    </ParameterList>
    <!--<ParameterList name="subsurface point 0.01" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,-0.01}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point 0.03" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,-0.03}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point 0.05" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,-0.05}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point 0.1" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,-0.1}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point 0.4" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,-0.4}" />
      </ParameterList>
    </ParameterList>
    <ParameterList name="subsurface point 1" type="ParameterList">
      <ParameterList name="region: point" type="ParameterList">
        <Parameter name="coordinate" type="Array(double)" value="{0.0,0.0,-1.0}" />
      </ParameterList>
    </ParameterList> -->
  </ParameterList> 

  <ParameterList name="cycle driver" type="ParameterList">
    <Parameter name="start time" type="double" value="0.0" />
    <Parameter name="start time units" type="string" value="d" />
    <Parameter name="end time" type="double" value="1096" />
    <Parameter name="end time units" type="string" value="d" />
    <ParameterList name="PK tree" type="ParameterList">
      <ParameterList name="top level MPC" type="ParameterList">
        <Parameter name="PK type" type="string" value="strong MPC" />
        <ParameterList name="SEB" type="ParameterList">
          <Parameter name="PK type" type="string" value="surface balance implicit subgrid" />
        </ParameterList>
        <ParameterList name="permafrost surface and subsurface" type="ParameterList">
          <Parameter name="PK type" type="string" value="permafrost model" />
          <ParameterList name="subsurface flow" type="ParameterList">
            <Parameter name="PK type" type="string" value="permafrost flow" />
          </ParameterList>
          <ParameterList name="surface flow" type="ParameterList">
            <Parameter name="PK type" type="string" value="overland flow with ice" />
          </ParameterList>
          <ParameterList name="subsurface energy" type="ParameterList">
            <Parameter name="PK type" type="string" value="three-phase energy" />
          </ParameterList>
          <ParameterList name="surface energy" type="ParameterList">
            <Parameter name="PK type" type="string" value="surface energy" />
          </ParameterList>
        </ParameterList>
      </ParameterList>
    </ParameterList>
  </ParameterList>
  <ParameterList name="PKs" type="ParameterList">

    <ParameterList name="top level MPC" type="ParameterList">
      <Parameter name="PK type" type="string" value="strong MPC" />
      <Parameter name="PKs order" type="Array(string)" value="{SEB,permafrost surface and subsurface}" />
      <!-- <ParameterList name="verbose object" type="ParameterList">
        <Parameter name="verbosity level" type="string" value="low" />
      </ParameterList> -->

      <ParameterList name="time integrator" type="ParameterList">
        <Parameter name="extrapolate initial guess" type="bool" value="true" />
        <Parameter name="solver type" type="string" value="nka_bt_ats" />
        <Parameter name="timestep controller type" type="string" value="smarter" />
        <ParameterList name="nka_bt_ats parameters" type="ParameterList">
          <Parameter name="nka lag iterations" type="int" value="2" />
          <Parameter name="max backtrack steps" type="int" value="5" />
          <Parameter name="backtrack lag" type="int" value="0" />
          <Parameter name="backtrack factor" type="double" value="0.5" />
          <Parameter name="backtrack tolerance" type="double" value="0.0001" />
          <Parameter name="nonlinear tolerance" type="double" value="1e-06" />
          <Parameter name="diverged tolerance" type="double" value="100000.0" />
          <Parameter name="limit iterations" type="int" value="21" />
          <!-- <ParameterList name="verbose object" type="ParameterList">
            <Parameter name="verbosity level" type="string" value="low" />
          </ParameterList> -->
        </ParameterList>
        <!-- <ParameterList name="verbose object" type="ParameterList">
          <Parameter name="verbosity level" type="string" value="low" />
        </ParameterList> -->  
        <ParameterList name="timestep controller smarter parameters" type="ParameterList">
          <Parameter name="max iterations" type="int" value="18" />
          <Parameter name="min iterations" type="int" value="10" />
          <Parameter name="time step reduction factor" type="double" value="0.5" />
          <Parameter name="time step increase factor" type="double" value="1.5" />
          <Parameter name="max time step" type="double" value="100000000.0" />
          <Parameter name="min time step" type="double" value="1e-10" />
          <Parameter name="growth wait after fail" type="int" value="2" />
          <Parameter name="count before increasing increase factor" type="int" value="2" />
        </ParameterList>
      </ParameterList>

    </ParameterList>

    <ParameterList name="permafrost surface and subsurface" type="ParameterList">
      <Parameter name="PK type" type="string" value="permafrost model" />
      <Parameter name="PKs order" type="Array(string)" value="{subsurface flow, subsurface energy, surface flow, surface energy}" />
      <Parameter name="preconditioner type" type="string" value="picard" />
      <Parameter name="supress Jacobian terms: d div q / dT" type="bool" value="true" />
      <Parameter name="supress Jacobian terms: d div surface q / dT" type="bool" value="true" />
      <Parameter name="supress Jacobian terms: d div K grad T / dp" type="bool" value="true" />
      <Parameter name="supress Jacobian terms: d div hq / dp,T" type="bool" value="true" />
      <Parameter name="dump preconditioner" type="bool" value="false" />
      <!-- <ParameterList name="verbose object" type="ParameterList">
        <Parameter name="verbosity level" type="string" value="low" />
      </ParameterList> -->

      <ParameterList name="ewc delegate" type="ParameterList">
        <Parameter name="predictor type" type="string" value="smart ewc" />
        <Parameter name="use pc_ice to determine sfc" type="bool" value="true" />
        <Parameter name="freeze-thaw cusp width [K]" type="double" value="1.0" />
        <!-- <ParameterList name="verbose object" type="ParameterList">
          <Parameter name="verbosity level" type="string" value="low" />
        </ParameterList> -->
      </ParameterList>

      <ParameterList name="water delegate" type="ParameterList">
        <Parameter name="modify predictor damp and cap the water spurt" type="bool" value="true" />
        <Parameter name="damp and cap the water spurt" type="bool" value="true" />
        <Parameter name="damp and cap the saturated spurt" type="bool" value="true" />
        <Parameter name="cap over atmospheric" type="double" value="0.0001" />
      </ParameterList>

      <ParameterList name="inverse" type="ParameterList">
        <Parameter name="preconditioning method" type="string" value="boomer amg" />
        <Parameter name="iterative method" type="string" value="gmres" />
        <ParameterList name="boomer amg parameters" type="ParameterList">
          <Parameter name="cycle applications" type="int" value="1" />
          <Parameter name="smoother sweeps" type="int" value="1" />
          <Parameter name="strong threshold" type="double" value="0.65" />
          <Parameter name="tolerance" type="double" value="0.0" />
          <Parameter name="number of functions" type="int" value="2" />
          <Parameter name="verbosity" type="int" value="0" />
        </ParameterList>
        <!-- <ParameterList name="verbose object" type="ParameterList">
          <Parameter name="verbosity level" type="string" value="low" />
        </ParameterList> -->
        <ParameterList name="gmres parameters" type="ParameterList">
          <Parameter name="preconditioning strategy" type="string" value="left" />
          <Parameter name="error tolerance" type="double" value="1e-06" />
          <Parameter name="convergence criteria" type="Array(string)" value="{relative residual,make one iteration}" />
          <Parameter name="maximum number of iteration" type="int" value="80" />
          <!-- <ParameterList name="verbose object" type="ParameterList">
            <Parameter name="verbosity level" type="string" value="low" />
          </ParameterList> -->
        </ParameterList>
      </ParameterList>

    </ParameterList>

    <ParameterList name="subsurface flow" type="ParameterList">
      <Parameter name="PK type" type="string" value="permafrost flow" />
      <Parameter name="primary variable key" type="string" value="pressure" />
      <Parameter name="domain name" type="string" value="domain" />
      <Parameter name="source term" type="bool" value="true" />
      <Parameter name="source key" type="string" value="water_source" />
      <Parameter name="source term is differentiable" type="bool" value="false" />
      <Parameter name="permeability rescaling" type="double" value="10000000.0" />
      <Parameter name="relative permeability method" type="string" value="upwind with Darcy flux" />
      <Parameter name="surface rel perm strategy" type="string" value="unsaturated" />
      <Parameter name="max valid change in saturation in a time step [-]" type="double" value="0.1" />
      <Parameter name="max valid change in ice saturation in a time step [-]" type="double" value="0.1" />
      <Parameter name="initial time step" type="double" value="86400.0" />
      <!-- <ParameterList name="verbose object" type="ParameterList">
        <Parameter name="verbosity level" type="string" value="low" />
      </ParameterList> -->
      <ParameterList name="diffusion" type="ParameterList">
        <Parameter name="discretization primary" type="string" value="mfd: two-point flux approximation" />
      </ParameterList>

      <ParameterList name="diffusion preconditioner" type="ParameterList">
        <Parameter name="include Newton correction" type="bool" value="true" />
      </ParameterList>

      <ParameterList name="boundary conditions" type="ParameterList">
      </ParameterList>

      <ParameterList name="initial condition" type="ParameterList">
        <Parameter name="hydrostatic head [m]" type="double" value="#ini_wt         #" />
        <Parameter name="hydrostatic water density [kg m^-3]" type="double" value="1000" />
      </ParameterList>

      <ParameterList name="water retention evaluator" type="ParameterList">
        <Parameter name="minimum rel perm cutoff" type="double" value="0.0" />
        <Parameter name="use surface rel perm" type="bool" value="true" />
        <Parameter name="liquid-ice capillary pressure key" type="string" value="capillary_pressure_liq_ice" />
        <ParameterList name="WRM parameters" type="ParameterList">
          <ParameterList name="peat" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain peat" />
            <Parameter name="WRM Type" type="string" value="van Genuchten" />
            <Parameter name="van Genuchten alpha [Pa^-1]" type="double" value="#alpha_p         #" />
            <Parameter name="van Genuchten n [-]" type="double" value="#n_p         #" />
            <Parameter name="residual saturation [-]" type="double" value="#wr_p         #" />
            <Parameter name="smoothing interval width [saturation]" type="double" value="0.1" />
          </ParameterList>
          <ParameterList name="mineral" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain mineral" />
            <Parameter name="WRM Type" type="string" value="van Genuchten" />
            <Parameter name="van Genuchten alpha [Pa^-1]" type="double" value="#alpha_m         #" />
            <Parameter name="van Genuchten n [-]" type="double" value="#n_m         #" />
            <Parameter name="residual saturation [-]" type="double" value="#wr_m         #" />
            <Parameter name="smoothing interval width [saturation]" type="double" value="0.1" />
          </ParameterList>
          <ParameterList name="bedrock" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain bedrock" />
            <Parameter name="WRM Type" type="string" value="van Genuchten" />
            <Parameter name="van Genuchten alpha [Pa^-1]" type="double" value="0.03" />
            <Parameter name="van Genuchten n [-]" type="double" value="2" />
            <Parameter name="residual saturation [-]" type="double" value="0.05" />
            <Parameter name="smoothing interval width [saturation]" type="double" value="0.1" />
          </ParameterList>
        </ParameterList>
        <ParameterList name="permafrost model parameters" type="ParameterList">
          <Parameter name="permafrost WRM type" type="string" value="fpd permafrost model" />
          <Parameter name="minimum dsi_dpressure magnitude" type="double" value="1e-12" />
        </ParameterList>
        <!-- <ParameterList name="verbose object" type="ParameterList">
          <Parameter name="verbosity level" type="string" value="low" />
        </ParameterList> -->
      </ParameterList>

    </ParameterList>

    <ParameterList name="surface flow" type="ParameterList">
      <Parameter name="PK type" type="string" value="overland flow with ice" />
      <Parameter name="domain name" type="string" value="surface" />
      <Parameter name="primary variable key" type="string" value="surface-pressure" />
      <Parameter name="source term" type="bool" value="true" />
      <Parameter name="source key" type="string" value="surface-water_source" />
      <Parameter name="source term is differentiable" type="bool" value="false" />
      <Parameter name="mass source in meters" type="bool" value="true" />
      <Parameter name="initial time step" type="double" value="86400.0" />
      <!-- <ParameterList name="verbose object" type="ParameterList">
        <Parameter name="verbosity level" type="string" value="low" />
      </ParameterList> -->
      <ParameterList name="diffusion" type="ParameterList">
        <Parameter name="discretization primary" type="string" value="fv: default" />
      </ParameterList>

      <ParameterList name="boundary conditions" type="ParameterList">
        <ParameterList name="seepage face head" type="ParameterList">
          <ParameterList name="surface outlet" type="ParameterList">
            <Parameter name="regions" type="Array(string)" value="{surface outlet}" />
            <ParameterList name="boundary head" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="0.0" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>

      <ParameterList name="initial condition" type="ParameterList">
        <Parameter name="initialize surface head from subsurface" type="bool" value="true" />
      </ParameterList>

    </ParameterList>

    <ParameterList name="subsurface energy" type="ParameterList">
      <Parameter name="PK type" type="string" value="three-phase energy" />
      <Parameter name="domain name" type="string" value="domain" />
      <Parameter name="primary variable key" type="string" value="temperature" />
      <Parameter name="source term" type="bool" value="true" />
      <Parameter name="source key" type="string" value="total_energy_source" />
      <Parameter name="source term is differentiable" type="bool" value="false" />
      <Parameter name="initial time step" type="double" value="86400.0" />
      <Parameter name="include thermal advection" type="bool" value="false" />
      <Parameter name="explicit advection" type="bool" value="false" />
      <Parameter name="supress advective terms in preconditioner" type="bool" value="true" />
      <!-- <ParameterList name="verbose object" type="ParameterList">
        <Parameter name="verbosity level" type="string" value="low" />
      </ParameterList> -->
      <ParameterList name="diffusion" type="ParameterList">
        <Parameter name="discretization primary" type="string" value="mfd: two-point flux approximation" />
      </ParameterList>

      <ParameterList name="boundary conditions" type="ParameterList">
        <!--<ParameterList name="temperature" type="ParameterList">
          <ParameterList name="bottom" type="ParameterList">
            <Parameter name="regions" type="Array(string)" value="{bottom face}" />
            <ParameterList name="boundary temperature" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="263.15" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
        </ParameterList> -->
      </ParameterList>

      <ParameterList name="initial condition" type="ParameterList">
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="initial temperature cells" type="ParameterList">
            <Parameter name="region" type="string" value="domain" />
            <Parameter name="components" type="Array(string)" value="{face,cell}" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="265" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>

      <ParameterList name="thermal conductivity evaluator" type="ParameterList">
        <ParameterList name="thermal conductivity parameters" type="ParameterList">
          <ParameterList name="peat" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain peat" />
            <Parameter name="thermal conductivity type" type="string" value="three-phase wet/dry" />
            <Parameter name="thermal conductivity, saturated (unfrozen) [W m^-1 K^-1]" type="double" value="#tcs_p         #" />
            <Parameter name="thermal conductivity, dry [W m^-1 K^-1]" type="double" value="#tcd_p         #" />
            <Parameter name="unsaturated alpha frozen [-]" type="double" value="#af_p         #" />
            <Parameter name="unsaturated alpha unfrozen [-]" type="double" value="#auf_p         #" />
          </ParameterList>
          <ParameterList name="mineral" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain mineral" />
            <Parameter name="thermal conductivity type" type="string" value="three-phase wet/dry" />
            <Parameter name="thermal conductivity, saturated (unfrozen) [W m^-1 K^-1]" type="double" value="#tcs_m         #" />
            <Parameter name="thermal conductivity, dry [W m^-1 K^-1]" type="double" value="#tcd_m         #" />
            <Parameter name="unsaturated alpha frozen [-]" type="double" value="#af_m         #" />
            <Parameter name="unsaturated alpha unfrozen [-]" type="double" value="#auf_m         #" />
          </ParameterList>
          <ParameterList name="bedrock" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain bedrock" />
            <Parameter name="thermal conductivity type" type="string" value="three-phase wet/dry" />
            <Parameter name="thermal conductivity, saturated (unfrozen) [W m^-1 K^-1]" type="double" value=" 1" />
            <Parameter name="thermal conductivity, dry [W m^-1 K^-1]" type="double" value="0.29" />
            <Parameter name="unsaturated alpha frozen [-]" type="double" value=" 1" />
            <Parameter name="unsaturated alpha unfrozen [-]" type="double" value="0.5" />
          </ParameterList>
        </ParameterList>
        <!-- <ParameterList name="verbose object" type="ParameterList">
          <Parameter name="verbosity level" type="string" value="low" />
        </ParameterList> -->
      </ParameterList>

      <ParameterList name="enthalpy evaluator" type="ParameterList">
        <Parameter name="include work term" type="bool" value="false" />
      </ParameterList>

    </ParameterList>

    <ParameterList name="surface energy" type="ParameterList">
      <Parameter name="PK type" type="string" value="surface energy" />
      <Parameter name="domain name" type="string" value="surface" />
      <Parameter name="primary variable key" type="string" value="surface-temperature" />
      <Parameter name="source term" type="bool" value="true" />
      <Parameter name="source key" type="string" value="surface-total_energy_source" />
      <Parameter name="source term is differentiable" type="bool" value="true" />
      <Parameter name="source term finite difference" type="bool" value="true" />
      <Parameter name="flux key" type="string" value="surface-mass_flux" />
      <Parameter name="include thermal advection" type="bool" value="false" />
      <Parameter name="explicit advection" type="bool" value="false" />
      <Parameter name="supress advective terms in preconditioner" type="bool" value="true" />
      <Parameter name="upwind conductivity method" type="string" value="arithmetic mean" />
      <Parameter name="initial time step" type="double" value="86400.0" />
      <!-- <ParameterList name="verbose object" type="ParameterList">
        <Parameter name="verbosity level" type="string" value="low" />
      </ParameterList> -->
      <ParameterList name="diffusion" type="ParameterList">
        <Parameter name="discretization primary" type="string" value="fv: default" />
      </ParameterList>

      <ParameterList name="boundary conditions" type="ParameterList">
      </ParameterList>

      <ParameterList name="initial condition" type="ParameterList">
        <Parameter name="initialize surface temperature from subsurface" type="bool" value="true" />
      </ParameterList>

      <ParameterList name="thermal conductivity evaluator" type="ParameterList">
        <ParameterList name="thermal conductivity parameters" type="ParameterList">
          <Parameter name="minimum thermal conductivity" type="double" value="1e-15" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="enthalpy evaluator" type="ParameterList">
        <Parameter name="include work term" type="bool" value="false" />
      </ParameterList>

    </ParameterList>

    <ParameterList name="SEB" type="ParameterList">
      <Parameter name="PK type" type="string" value="surface balance implicit subgrid" />
      <Parameter name="domain name" type="string" value="snow" />
      <Parameter name="layer name" type="string" value="snow" />
      <Parameter name="primary variable key" type="string" value="snow-depth" />
      <Parameter name="conserved quantity key" type="string" value="snow-water_equivalent" />
      <Parameter name="source term" type="bool" value="true" />
      <Parameter name="source key" type="string" value="snow-source_sink" />
      <Parameter name="source term is differentiable" type="bool" value="false" />
      <!-- <ParameterList name="verbose object" type="ParameterList">
        <Parameter name="verbosity level" type="string" value="low" />
      </ParameterList> -->
      <ParameterList name="initial condition" type="ParameterList">
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="initial head" type="ParameterList">
            <Parameter name="region" type="string" value="surface domain" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="#ini_sd         #" />
                  <!-- What value do we assign here? The initial condition can be initialized from a spinup or we don't assign anything? -->
              </ParameterList>
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>

      <ParameterList name="inverse" type="ParameterList">
        <Parameter name="preconditioning method" type="string" value="diagonal" />
      </ParameterList>

    </ParameterList>

  </ParameterList>

  <ParameterList name="state" type="ParameterList">
    <ParameterList name="field evaluators" type="ParameterList">

      <ParameterList name="water_content" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="liquid+ice water content" />
      </ParameterList>

      <ParameterList name="molar_density_liquid" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="eos" />
        <Parameter name="EOS basis" type="string" value="both" />
        <ParameterList name="EOS parameters" type="ParameterList">
          <Parameter name="EOS type" type="string" value="liquid water" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="molar_density_gas" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="eos" />
        <Parameter name="EOS basis" type="string" value="molar" />
        <ParameterList name="EOS parameters" type="ParameterList">
          <Parameter name="EOS type" type="string" value="vapor in gas" />
          <ParameterList name="gas EOS parameters" type="ParameterList">
            <Parameter name="EOS type" type="string" value="ideal gas" />
          </ParameterList>
        </ParameterList>
      </ParameterList>

      <ParameterList name="molar_density_ice" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="eos" />
        <Parameter name="EOS basis" type="string" value="molar" />
        <ParameterList name="EOS parameters" type="ParameterList">
          <Parameter name="EOS type" type="string" value="ice" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="base_porosity" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="independent variable" />
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="peat" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain peat" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="#por_p         #" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
          <ParameterList name="mineral" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain mineral" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="#por_m         #" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
          <ParameterList name="bedrock" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain bedrock" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="0.3" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
        </ParameterList>
        <!--<ParameterList name="verbose object" type="ParameterList">
          <Parameter name="verbosity level" type="string" value="low" />
        </ParameterList> -->
      </ParameterList>


      <ParameterList name="porosity" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="compressible porosity" />
        <ParameterList name="compressible porosity model parameters" type="ParameterList">
          <ParameterList name="peat" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain peat" />
            <Parameter name="pore compressibility [Pa^-1]" type="double" value="#perm_p         #" />
          </ParameterList>
          <ParameterList name="mineral" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain mineral" />
            <Parameter name="pore compressibility [Pa^-1]" type="double" value="#perm_m         #" />
          </ParameterList>
          <ParameterList name="bedrock" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain bedrock" />
            <Parameter name="pore compressibility [Pa^-1]" type="double" value="1e-09" />
          </ParameterList>
        </ParameterList>
      </ParameterList>

      <ParameterList name="permeability" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="independent variable" />
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="peat" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain peat" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="2.79893e-11" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
          <ParameterList name="mineral" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain mineral" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="2.5e-14" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
          <ParameterList name="bedrock" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain bedrock" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="1e-14" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
        </ParameterList>
        <!--<ParameterList name="verbose object" type="ParameterList">
          <Parameter name="verbosity level" type="string" value="low" />
        </ParameterList> -->
      </ParameterList>

      <ParameterList name="density_rock" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="independent variable" />
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="peat" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain peat" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="#den_p         #" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
          <ParameterList name="mineral" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain mineral" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="#den_m         #" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
          <ParameterList name="bedrock" type="ParameterList">
            <Parameter name="region" type="string" value="subsurface domain bedrock" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="2500" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>

      <ParameterList name="viscosity_liquid" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="viscosity" />
        <ParameterList name="viscosity model parameters" type="ParameterList">
          <Parameter name="viscosity relation type" type="string" value="liquid water" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="capillary_pressure_gas_liq" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="capillary pressure, atmospheric gas over liquid" />
      </ParameterList>

      <ParameterList name="capillary_pressure_liq_ice" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="capillary pressure, water over ice" />
        <ParameterList name="capillary pressure of ice-water" type="ParameterList">
          <Parameter name="smoothing width [K]" type="double" value="0.2" />
          <Parameter name="interfacial tension ice-water [mN m^-1]" type="double" value="33.1" />
          <Parameter name="interfacial tension air-water [mN m^-1]" type="double" value="72.7" />
          <Parameter name="latent heat [J kg^-1]" type="double" value="334000.0" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="energy" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="liquid+ice energy" />
      </ParameterList>

      <ParameterList name="internal_energy_liquid" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="iem" />
        <Parameter name="internal energy key" type="string" value="internal_energy_liquid" />
        <ParameterList name="IEM parameters" type="ParameterList">
          <Parameter name="IEM type" type="string" value="linear" />
          <Parameter name="heat capacity [J mol^-1 K^-1]" type="double" value="76.0" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="internal_energy_ice" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="iem" />
        <Parameter name="internal energy key" type="string" value="internal_energy_ice" />
        <ParameterList name="IEM parameters" type="ParameterList">
          <Parameter name="IEM type" type="string" value="quadratic" />
          <Parameter name="latent heat [J mol^-1]" type="double" value="-6007.87" />
          <Parameter name="heat capacity [J mol^-1 K^-1]" type="double" value="37.7841" />
          <Parameter name="quadratic b [J mol^-1 K^-2]" type="double" value="0.131932" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="internal_energy_rock" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="iem" />
        <Parameter name="internal energy key" type="string" value="internal_energy_rock" />
        <ParameterList name="IEM parameters" type="ParameterList">
          <Parameter name="IEM type" type="string" value="linear" />
          <Parameter name="heat capacity [J kg^-1 K^-1]" type="double" value="620.0" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="surface-water_content" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="overland pressure water content" />
      </ParameterList>

      <ParameterList name="surface-area_fractions" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="area fractions, three components" />
      </ParameterList>

      <ParameterList name="surface-unfrozen_fraction" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="unfrozen fraction" />
        <ParameterList name="unfrozen fraction model" type="ParameterList">
          <Parameter name="transition width [K]" type="double" value="0.2" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="surface-unfrozen_effective_depth" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="unfrozen effective depth" />
      </ParameterList>

      <ParameterList name="surface-molar_density_liquid" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="eos" />
        <Parameter name="EOS basis" type="string" value="both" />
        <ParameterList name="EOS parameters" type="ParameterList">
          <Parameter name="EOS type" type="string" value="liquid water" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="surface-source_molar_density" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="eos" />
        <Parameter name="EOS basis" type="string" value="molar" />
        <ParameterList name="EOS parameters" type="ParameterList">
          <Parameter name="EOS type" type="string" value="liquid water" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="surface-ponded_depth" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="ponded depth" />
      </ParameterList>

      <ParameterList name="surface-relative_permeability" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="surface rel perm" />
        <ParameterList name="surface rel perm model" type="ParameterList">
          <Parameter name="surface rel perm model type" type="string" value="unfrozen fraction rel perm, limit one" />
          <Parameter name="unfrozen rel perm cutoff pressure [Pa]" type="double" value="10.0" />
          <Parameter name="unfrozen rel perm cutoff pressure, below [Pa]" type="double" value="-100.0" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="surface-overland_conductivity" type="ParameterList">
        <Parameter name="depth key" type="string" value="surface-unfrozen_effective_depth" />
        <Parameter name="field evaluator type" type="string" value="overland conductivity" />
        <ParameterList name="overland conductivity model" type="ParameterList">
          <Parameter name="Manning exponent" type="double" value="0.666666666667" />
          <Parameter name="slope regularization epsilon" type="double" value="0.01" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="surface-manning_coefficient" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="independent variable" />
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="cells" type="ParameterList">
            <Parameter name="region" type="string" value="surface domain" />
            <Parameter name="components" type="Array(string)" value="{cell,boundary_face}" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="1.0" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>

      <ParameterList name="snow-source_sink" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="surface energy balance, three components" />
        <!-- Does the three components hear mean the three layers - snow, water and bare surface! -->
        <Parameter name="incoming shortwave radiation key" type="string" value="surface-incoming_shortwave_radiation" />
        <Parameter name="volumetric snow depth key" type="string" value="snow-depth" />
        <Parameter name="save diagnostic data" type="bool" value="true" />
        <Parameter name="wind speed reference height [m]" type="double" value="10" />
      </ParameterList>

      <ParameterList name="snow-water_equivalent" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="multiplicative evaluator" />
        <Parameter name="evaluator dependencies" type="Array(string)" value="{snow-depth,snow-density,snow-cell_volume}" />
        <Parameter name="coefficient" type="double" value="0.001" />
      </ParameterList>

      <ParameterList name="snow-water_content" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="multiplicative evaluator" />
        <Parameter name="evaluator dependencies" type="Array(string)" value="{snow-water_equivalent,surface-molar_density_liquid,snow-cell_volume}" />
      </ParameterList>

      <ParameterList name="surface-energy" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="surface ice energy" />
        <Parameter name="molar density ice key suffix" type="string" value="molar_density_liquid" />
      </ParameterList>

      <ParameterList name="surface-internal_energy_liquid" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="iem" />
        <Parameter name="internal energy key" type="string" value="surface-internal_energy_liquid" />
        <ParameterList name="IEM parameters" type="ParameterList">
          <Parameter name="IEM type" type="string" value="linear" />
          <Parameter name="heat capacity [J mol^-1 K^-1]" type="double" value="76.0" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="surface-internal_energy_ice" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="iem" />
        <Parameter name="internal energy key" type="string" value="surface-internal_energy_ice" />
        <ParameterList name="IEM parameters" type="ParameterList">
          <Parameter name="IEM type" type="string" value="quadratic" />
          <Parameter name="latent heat [J mol^-1]" type="double" value="-6007.87" />
          <Parameter name="heat capacity [J mol^-1 K^-1]" type="double" value="37.7841" />
          <Parameter name="quadratic b [J mol^-1 K^-2]" type="double" value="0.131932" />
        </ParameterList>
      </ParameterList>

      <ParameterList name="surface-albedos" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="subgrid albedos, three components" />
      </ParameterList>

      <ParameterList name="surface-incoming_longwave_radiation" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="incoming longwave radiation" />
      </ParameterList>

       <ParameterList name="surface-incoming_shortwave_radiation" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="independent variable" />
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="domain" type="ParameterList">
            <Parameter name="region" type="string" value="surface domain" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-tabular" type="ParameterList">
                <Parameter name="file" type="string" value="/bigwork/nhgjrabl/Simulations/ats-demos/rk_model/Data/Data_Yakou/Yakou_met_data_ITP_rk/Final_InputData_4yrs/Calib_data_2016_2018.h5" />
                <Parameter name="x header" type="string" value="time [s]" />
                <Parameter name="y header" type="string" value="Incoming shortwave radiation (W/m^2)" />
              </ParameterList>
              <!-- Assigning a constant shortwave radiation = 0 to begin with and then increasing it -->
              <!--<ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="0.0" />
              </ParameterList> -->
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>
 
      <ParameterList name="surface-incident_shortwave_radiation" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="incident shortwave radiation" />
        <ParameterList name="incident shortwave radiation parameters" type="ParameterList">
          <Parameter name="daily averaged" type="bool" value="true" />
          <Parameter name="latitude [degrees]" type="double" value="38.0" />
        </ParameterList>
      </ParameterList>
 
      <ParameterList name="surface-air_temperature" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="independent variable" />
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="domain" type="ParameterList">
            <Parameter name="region" type="string" value="surface domain" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-tabular" type="ParameterList">
                <Parameter name="file" type="string" value="/bigwork/nhgjrabl/Simulations/ats-demos/rk_model/Data/Data_Yakou/Yakou_met_data_ITP_rk/Final_InputData_4yrs/Calib_data_2016_2018.h5" />
                <Parameter name="x header" type="string" value="time [s]" />
                <Parameter name="y header" type="string" value="air temperature [K]" />
              </ParameterList>
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>
 
      <ParameterList name="surface-relative_humidity" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="independent variable" />
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="domain" type="ParameterList">
            <Parameter name="region" type="string" value="surface domain" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-tabular" type="ParameterList">
                <Parameter name="file" type="string" value="/bigwork/nhgjrabl/Simulations/ats-demos/rk_model/Data/Data_Yakou/Yakou_met_data_ITP_rk/Final_InputData_4yrs/Calib_data_2016_2018.h5" />
                <Parameter name="x header" type="string" value="time [s]" />
                <Parameter name="y header" type="string" value="Relative humidity at 5 m (%)" />
              </ParameterList>
              <!--<ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="0.0" />
              </ParameterList> -->
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>
 
      <ParameterList name="surface-wind_speed" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="independent variable" />
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="domain" type="ParameterList">
            <Parameter name="region" type="string" value="surface domain" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-tabular" type="ParameterList">
                <Parameter name="file" type="string" value="/bigwork/nhgjrabl/Simulations/ats-demos/rk_model/Data/Data_Yakou/Yakou_met_data_ITP_rk/Final_InputData_4yrs/Calib_data_2016_2018.h5" />
                <Parameter name="x header" type="string" value="time [s]" />
                <Parameter name="y header" type="string" value="Wind speed at 10 m (m/s)" />
              </ParameterList>
              <!--<ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="4.0" />
              </ParameterList> -->
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>
 
      <ParameterList name="surface-precipitation_rain" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="independent variable" />
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="domain" type="ParameterList">
            <Parameter name="region" type="string" value="surface domain" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-tabular" type="ParameterList">
                <Parameter name="file" type="string" value="/bigwork/nhgjrabl/Simulations/ats-demos/rk_model/Data/Data_Yakou/Yakou_met_data_ITP_rk/Final_InputData_4yrs/Calib_data_2016_2018.h5" />
                <Parameter name="x header" type="string" value="time [s]" />
                <Parameter name="y header" type="string" value="precipitation rain [m s^-1]" />
              </ParameterList>
              <!--<ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="0.0" />
              </ParameterList>-->
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>
 
      <ParameterList name="snow-precipitation" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="independent variable" />
        <ParameterList name="function" type="ParameterList">
          <ParameterList name="domain" type="ParameterList">
            <Parameter name="region" type="string" value="surface domain" />
            <Parameter name="component" type="string" value="cell" />
            <ParameterList name="function" type="ParameterList">
              <ParameterList name="function-tabular" type="ParameterList">
                <!-- <Parameter name="file" type="string" value="#sden         #" /> -->
                <Parameter name="file" type="string" value="/bigwork/nhgjrabl/Simulations/pestpp/rk_model_final_4yrs/Snow_depth_data/SWE_2016_2018.h5" />
                <Parameter name="x header" type="string" value="time [s]" />
                <Parameter name="y header" type="string" value="precipitation snow [m SWE s^-1]" />
              </ParameterList>
              <!--<ParameterList name="function-constant" type="ParameterList">
                <Parameter name="value" type="double" value="0.0" />
              </ParameterList> -->
            </ParameterList>
          </ParameterList>
        </ParameterList>
      </ParameterList>

      <ParameterList name="surface-thaw_depth" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="thaw depth" />
      </ParameterList>

      <ParameterList name="surface-water_table_depth" type="ParameterList">
        <Parameter name="field evaluator type" type="string" value="water table depth" />
      </ParameterList>

    </ParameterList>
    <ParameterList name="initial conditions" type="ParameterList">

      <ParameterList name="atmospheric_pressure" type="ParameterList">
        <Parameter name="value" type="double" value="101325.0" />
      </ParameterList>

      <ParameterList name="gravity" type="ParameterList">
        <Parameter name="value" type="Array(double)" value="{0.0,0.0,-9.80665}" />
      </ParameterList>
    
      <!-- The main values associated with the SEB is given here - All/Some of these values can be considered by PEST for calibration. -->
      <ParameterList name="land cover types" type="ParameterList">
        <ParameterList name="surface domain" type="ParameterList">
          <!-- The below parameter - dessicated zone thickness is not used in the model -->
          <Parameter name="dessicated zone thickness [m]" type="double" value="0.1" />
          <Parameter name="roughness length of bare ground [m]" type="double" value="#z_bg         #" />
          <Parameter name="roughness length of snow [m]" type="double" value="#z_s         #" />
          <!-- Is the water transition depth [m] similar to the penetration depth of sw radiation in water from the article? -->  
          <Parameter name="snow transition depth [m]" type="double" value="#pen_s         #" />
          <Parameter name="water transition depth [m]" type="double" value="#pen_w         #" />
          <Parameter name="albedo of bare ground [-]" type="double" value="#albedo_bg         #" />
          <Parameter name="emissivity of bare ground [-]" type="double" value="#e_bg         #" />
        </ParameterList>
      </ParameterList>

    </ParameterList>
  </ParameterList>
  <ParameterList name="visualization" type="ParameterList">
    <ParameterList name="domain" type="ParameterList">
      <Parameter name="times start period stop 0" type="Array(double)" value="{0.0,10.,-1.0}" />
      <Parameter name="times start period stop 0 units" type="string" value="d" />
    </ParameterList>
    <ParameterList name="surface" type="ParameterList">
      <Parameter name="times start period stop 0" type="Array(double)" value="{0.0,10.,-1.0}" />
      <Parameter name="times start period stop 0 units" type="string" value="d" />
    </ParameterList>
    <ParameterList name="snow" type="ParameterList">
      <Parameter name="times start period stop 0" type="Array(double)" value="{0.0,10.,-1.0}" />
      <Parameter name="times start period stop 0 units" type="string" value="d" />
    </ParameterList>
  </ParameterList>

  <ParameterList name="observations" type="ParameterList">
    <ParameterList name="observation file" type="ParameterList">
      <Parameter name="write interval" type="int" value="30" />
      <Parameter name="observation output filename" type="string" value="observations.dat" />
      <Parameter name="times start period stop" type="Array(double)" value="{0.0,1.0,-1.0}" />
      <Parameter name="times start period stop units" type="string" value="d" />
      <Parameter name="delimiter" type="string" value=" " />
      <ParameterList name="observed quantities" type="ParameterList">
        <!--<ParameterList name="water content [mol]" type="ParameterList">
          <Parameter name="variable" type="string" value="water_content" />
          <Parameter name="region" type="string" value="domain" />
          <Parameter name="functional" type="string" value="extensive integral" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList> 
        <ParameterList name="surface water content [mol]" type="ParameterList">
          <Parameter name="variable" type="string" value="surface-water_content" />
          <Parameter name="region" type="string" value="surface domain" />
          <Parameter name="functional" type="string" value="extensive integral" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="snow water equivalent [mol]" type="ParameterList">
          <Parameter name="variable" type="string" value="snow-water_equivalent" />
          <Parameter name="region" type="string" value="surface domain" />
          <Parameter name="functional" type="string" value="extensive integral" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="evaporation rate [m s^-1]" type="ParameterList">
          <Parameter name="variable" type="string" value="surface-evaporative_flux" />
          <Parameter name="region" type="string" value="surface domain" />
          <Parameter name="functional" type="string" value="average" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="discharge [mol s^-1]" type="ParameterList">
          <Parameter name="variable" type="string" value="surface-mass_flux" />
          <Parameter name="region" type="string" value="surface outlet" />
          <Parameter name="location name" type="string" value="face" />
          <Parameter name="direction normalized flux" type="bool" value="true" />
          <Parameter name="functional" type="string" value="extensive integral" />
        </ParameterList>
        <ParameterList name="surface-subsurface flux [mol s^-1]" type="ParameterList">
          <Parameter name="variable" type="string" value="surface-surface_subsurface_flux" />
          <Parameter name="region" type="string" value="surface domain" />
          <Parameter name="functional" type="string" value="average" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="precipitation rain [m s^-1]" type="ParameterList">
          <Parameter name="variable" type="string" value="surface-precipitation_rain" />
          <Parameter name="region" type="string" value="surface domain" />
          <Parameter name="functional" type="string" value="average" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="precipitation snow [m s^-1]" type="ParameterList">
          <Parameter name="variable" type="string" value="snow-precipitation" />
          <Parameter name="region" type="string" value="surface domain" />
          <Parameter name="functional" type="string" value="average" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="snow melt [m s^-1]" type="ParameterList">
          <Parameter name="variable" type="string" value="snow-melt" />
          <Parameter name="region" type="string" value="surface domain" />
          <Parameter name="functional" type="string" value="average" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList> 
        <ParameterList name="thaw depth [m]" type="ParameterList">
          <Parameter name="variable" type="string" value="surface-thaw_depth" />
          <Parameter name="region" type="string" value="surface domain" />
          <Parameter name="functional" type="string" value="average" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList> 
        <ParameterList name="water table depth [m]" type="ParameterList">
          <Parameter name="variable" type="string" value="surface-water_table_depth" />
          <Parameter name="region" type="string" value="surface domain" />
          <Parameter name="functional" type="string" value="average" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList> 
        <ParameterList name="surface temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="surface-temperature" />
          <Parameter name="region" type="string" value="surface domain" />
          <Parameter name="functional" type="string" value="average" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>  -->
        <!--<ParameterList name="point 0.1 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point 0.1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.4 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point 0.4" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 1 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point 1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.01 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point 0.01" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.03 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point 0.03" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.05 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point 0.05" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.1 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point 0.1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.4 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point 0.4" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 1 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point 1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.01 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point 0.01" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.03 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point 0.03" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.05 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point 0.05" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.1 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point 0.1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.4 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point 0.4" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 1 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point 1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.01 liquid density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_liquid" />
          <Parameter name="region" type="string" value="subsurface point 0.01" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.03 liquid density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_liquid" />
          <Parameter name="region" type="string" value="subsurface point 0.03" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.05 liquid density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_liquid" />
          <Parameter name="region" type="string" value="subsurface point 0.05" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.1 liquid density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_liquid" />
          <Parameter name="region" type="string" value="subsurface point 0.1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.4 liquid density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_liquid" />
          <Parameter name="region" type="string" value="subsurface point 0.4" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 1 liquid density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_liquid" />
          <Parameter name="region" type="string" value="subsurface point 1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.01 ice density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_ice" />
          <Parameter name="region" type="string" value="subsurface point 0.01" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.03 ice density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_ice" />
          <Parameter name="region" type="string" value="subsurface point 0.03" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.05 ice density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_ice" />
          <Parameter name="region" type="string" value="subsurface point 0.05" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.1 ice density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_ice" />
          <Parameter name="region" type="string" value="subsurface point 0.1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 0.4 ice density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_ice" />
          <Parameter name="region" type="string" value="subsurface point 0.4" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point 1 ice density" type="ParameterList">
          <Parameter name="variable" type="string" value="molar_density_ice" />
          <Parameter name="region" type="string" value="subsurface point 1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList> -->
        <!--<ParameterList name="point -0.01 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -0.01" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>-->
        <ParameterList name="point -0.04 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -0.04" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.1 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -0.1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.2 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -0.2" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.4 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -0.4" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.8 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -0.8" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -1.2 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -1.2" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -1.6 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -1.6" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <!--<ParameterList name="point -5.0 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -5.0" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -10.0 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -10.0" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -20.0 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -20.0" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -30.0 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -30.0" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -40.0 temperature [K]" type="ParameterList">
          <Parameter name="variable" type="string" value="temperature" />
          <Parameter name="region" type="string" value="subsurface point -40.0" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList> -->

        <!-- Extracting data of the saturation of liquid at the 13 depths-->
        <!--<ParameterList name="point -0.01 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point -0.01" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>-->
        <ParameterList name="point -0.04 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point -0.04" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.1 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point -0.1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.2 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point -0.2" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.4 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point -0.4" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.8 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point -0.8" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -1.2 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point -1.2" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -1.6 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point -1.6" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <!--<ParameterList name="point -5.0 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point -5.0" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -10.0 saturation liquid" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_liquid" />
          <Parameter name="region" type="string" value="subsurface point -10.0" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList> -->

        <!-- Extracting data of the saturation of ice at the 13 depths-->
        <!--<ParameterList name="point -0.01 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point -0.01" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.04 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point -0.04" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.1 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point -0.1" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.2 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point -0.2" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.4 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point -0.4" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -0.8 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point -0.8" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -1.2 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point -1.2" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -1.6 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point -1.6" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -5.0 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point -5.0" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList>
        <ParameterList name="point -10.0 saturation ice" type="ParameterList">
          <Parameter name="variable" type="string" value="saturation_ice" />
          <Parameter name="region" type="string" value="subsurface point -10.0" />
          <Parameter name="functional" type="string" value="point" />
          <Parameter name="location name" type="string" value="cell" />
        </ParameterList> -->
      </ParameterList>
    </ParameterList>
  </ParameterList>
  <!--<ParameterList name="checkpoint" type="ParameterList">
    <Parameter name="times start period stop" type="Array(double)" value="{0.0,30,-1.0}" />
    <Parameter name="times start period stop units" type="string" value="d" />
  </ParameterList> -->
</ParameterList>
